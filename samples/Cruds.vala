/*
 * Basic CRUD operations on the local MongoDB instance.
 */

int main (string[] argv) {

    print ("CRUD Operations example\n\n");

    Mongo.init ();

    #if SEPARATED_VAPI
        var error = Bson.BsonError ();
    #else
        var error = Mongo.BsonError ();
    #endif

    var client = new Mongo.Client ("mongodb://localhost:27017/?appname=crud-example");
    var collection = client.get_collection ("test", "test");


    //Insert document
    #if SEPARATED_VAPI
        var oid = Bson.BsonOid ();
        var document = new Bson.Bson ();
        var insert_reply = new Bson.Bson ();
    #else
        var oid = Mongo.BsonOid ();
        var document = new Mongo.Bson ();
        var insert_reply = new Mongo.Bson ();
    #endif

    oid.init (null);
    document.append_oid ("_id", -1, oid);
    document.append_utf8 ("hello", -1, "world", -1);

    if (collection.insert_one (document, null, insert_reply, error)) {
        stdout.printf ("Document inserted:\n%s\n\n", insert_reply.as_canonical_extended_json (null));

    } else {
        print ("Could not insert document\n");
    }


    //Find document
    #if SEPARATED_VAPI
        var doc = new Bson.Bson ();
        var query = new Bson.Bson ();
    #else
        var doc = new Mongo.Bson ();
        var query = new Mongo.Bson ();
    #endif

    query.append_utf8 ("hello", -1, "world", -1);
    var cursor = collection.find_with_opts (query, null, null);

    while (cursor.next (out doc)) {
        var str = doc.as_canonical_extended_json (null);
        stdout.printf ("Document found:\n%s\n\n", str);
    }


    //Update document
    #if SEPARATED_VAPI
        var update = new Bson.Bson.from_json ("{\"$set\": {\"hello\": \"mongo\", \"updated\": true}}", -1, null);
        var update_reply = new Bson.Bson ();
    #else
        var update = new Mongo.Bson.from_json ("{\"$set\": {\"hello\": \"mongo\", \"updated\": true}}", -1, null);
        var update_reply = new Mongo.Bson ();
    #endif

    if (collection.update_one (query, update, null, update_reply, error)) {
        stdout.printf ("Document updated:\n%s\n\n", update_reply.as_canonical_extended_json (null));
    } else {
        print ("Could not update document\n");
    }


    //Delete document
    #if SEPARATED_VAPI
        var delete_query = new Bson.Bson ();
        var delete_reply = new Bson.Bson ();
    #else
        var delete_query = new Mongo.Bson ();
        var delete_reply = new Mongo.Bson ();
    #endif

    delete_query.append_utf8 ("hello", -1, "mongo", -1);

    if (collection.delete_one (delete_query, null, delete_reply, error)) {
        stdout.printf ("Document deleted:\n%s\n\n", delete_reply.as_canonical_extended_json (null));
    } else {
        print ("Could not delete document\n");
    }

    Mongo.cleanup ();

    return 0;
}
