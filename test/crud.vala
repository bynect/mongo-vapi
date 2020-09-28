public void test() {
    
    var err = Mongo.BsonError ();
    var uri = new Mongo.Uri.with_error ("mongodb://localhost:27017", err);

    var client = new Mongo.Client.from_uri (uri);

    var readpref = new Mongo.ReadPrefs (Mongo.ReadMode.PRIMARY);
    var resp = new Mongo.Bson ();
    var rerr = Mongo.BsonError ();

    var status = client.get_server_status (readpref, resp, rerr);

    if (status) {
        stdout.printf ("%s\n", resp.as_json (null));
    }
    
}

int main (string[] argv) {

    //This must be used
    Mongo.init ();

    test ();

    //This must be used
    Mongo.cleanup ();

    return 0;
}
