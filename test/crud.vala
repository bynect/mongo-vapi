int main (string[] argv) {

    //This must be used
    Mongo.init ();

    test ();

    //This must be used
    Mongo.cleanup ();

    return 0;
}