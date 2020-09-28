public void print_status (Mongo.Client client) {

    var prefs = new Mongo.ReadPrefs (Mongo.ReadMode.PRIMARY);
    var res = new Mongo.Bson ();
    var err = Mongo.BsonError ();

    var status = client.get_server_status (prefs, res, err);

    if (status) {
        stdout.printf ("%s\n", res.as_json (null));
    } else {
        print ("Unable to get server status.\nAre you running a local instance of MongoDB?");
    }

}

int main (string[] argv) {

    Mongo.init ();//Mongo C Driver internal initialization

    var uri = new Mongo.Uri ("mongodb://localhost:27017");

    var client = new Mongo.Client.from_uri (uri);

    print_status (client);

    Mongo.cleanup ();//Mongo C Driver internal cleanup

    return 0;

}
