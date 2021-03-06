/*
 * Vala porting of mongoc hello world tutorial.
 * http://mongoc.org/libmongoc/current/tutorial.html#id4
 */

int main (string[] argv) {

    string uri_string = "mongodb://localhost:27017";
    Mongo.Uri uri;
    Mongo.Database db;
    Mongo.Collection coll;
    string str;
    bool retval;

    #if SEPARATED_VAPI
        Bson.Bson command, reply, insert;
        Bson.BsonError error = Bson.BsonError ();
    #else
        Mongo.Bson command, reply, insert;
        Mongo.BsonError error = Mongo.BsonError ();
    #endif

    Mongo.init ();

    if (argv.length > 1) uri_string = argv[1];

    uri = new Mongo.Uri.with_error (uri_string, error);

    var client = new Mongo.Client.from_uri (uri);

    client.set_appname ("connect-example");

    db = client.get_database ("test");
    coll = client.get_collection ("test", "test");

    #if SEPARATED_VAPI
        reply = new Bson.Bson ();
        command = new Bson.Bson ();
    #else
        reply = new Mongo.Bson ();
        command = new Mongo.Bson ();
    #endif

    command.append_int32 ("ping", -1, 1);

    retval = client.command_simple ("admin", command, null, reply, error);

    str = reply.as_json (null);
    stdout.printf ("%s\n", str);


    #if SEPARATED_VAPI
        insert = new Bson.Bson ();
    #else
        insert = new Mongo.Bson ();
    #endif

    insert.append_utf8 ("hello", -1, "world", -1);

    coll.insert_one (insert, null, null, error);

    Mongo.cleanup ();

    return 0;

}
