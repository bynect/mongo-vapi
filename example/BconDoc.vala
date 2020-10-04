int main (string[] argv) {

    Mongo.init ();

    var doc = Mongo.BCON_NEW (
        "foo", "{",
                "int", Mongo.BCON_INT32 (1),
        "array", "[",
            Mongo.BCON_INT32 (100),
            "{",
                "sub",
                Mongo.BCON_UTF8 ("value"),
                "}",
            "]",
        "}"
    );

    stdout.printf ("%s\n", doc.as_json (null));

    Mongo.cleanup ();
    
    return 0;
}
