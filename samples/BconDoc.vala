int main (string[] argv) {

    #if SEPARATED_VAPI
        var doc = Bson.BCON_NEW (
            "foo", "{",
                    "int", Bson.BCON_INT32 (1),
            "array", "[",
                Bson.BCON_INT32 (100), "{",
                    "sub",
                    Bson.BCON_UTF8 ("value"),
                    "}",
                "]",
            "}"
        );
    #else
        var doc = Mongo.BCON_NEW (
            "foo", "{",
                    "int", Mongo.BCON_INT32 (1),
            "array", "[",
                Mongo.BCON_INT32 (100), "{",
                    "sub",
                    Mongo.BCON_UTF8 ("value"),
                    "}",
                "]",
            "}"
        );
    #endif

    stdout.printf ("Example 1:\n%s\n\n", doc.as_json (null));

    var born = Time () {
        year = 6,
        month = 11,
        day = 9
    };

    var died = Time () {
        year = 92,
        month = 1,
        day = 1
    };

    #if SEPARATED_VAPI
        var grace_hopper = Bson.BCON_NEW (
            "born", Bson.BCON_DATE_TIME (born.mktime () * 1000),
            "died", Bson.BCON_DATE_TIME (died.mktime () * 1000),
            "name", "{",
            "first", Bson.BCON_UTF8 ("Grace"),
            "last", Bson.BCON_UTF8 ("Hopper"),
            "}",
            "languages", "[",
            Bson.BCON_UTF8 ("MATH-MATIC"),
            Bson.BCON_UTF8 ("FLOW-MATIC"),
            Bson.BCON_UTF8 ("COBOL"),
            "]",
            "degrees", "[",
            "{", "degree", Bson.BCON_UTF8 ("BA"), "school", Bson.BCON_UTF8 ("Vassar"), "}",
            "{", "degree", Bson.BCON_UTF8 ("PhD"), "school", Bson.BCON_UTF8 ("Yale"), "}",
            "]"
        );
    #else
        var grace_hopper = Mongo.BCON_NEW (
            "born", Mongo.BCON_DATE_TIME (born.mktime () * 1000),
            "died", Mongo.BCON_DATE_TIME (died.mktime () * 1000),
            "name", "{",
            "first", Mongo.BCON_UTF8 ("Grace"),
            "last", Mongo.BCON_UTF8 ("Hopper"),
            "}",
            "languages", "[",
            Mongo.BCON_UTF8 ("MATH-MATIC"),
            Mongo.BCON_UTF8 ("FLOW-MATIC"),
            Mongo.BCON_UTF8 ("COBOL"),
            "]",
            "degrees", "[",
            "{", "degree", Mongo.BCON_UTF8 ("BA"), "school", Mongo.BCON_UTF8 ("Vassar"), "}",
            "{", "degree", Mongo.BCON_UTF8 ("PhD"), "school", Mongo.BCON_UTF8 ("Yale"), "}",
            "]"
        );
    #endif

    //Indentation made with json-glib-1.0
    Json.Generator generator = new Json.Generator ();
    var root = Json.from_string (grace_hopper.as_canonical_extended_json (null));
    generator.set_root (root);
    generator.set_indent (4);
    generator.set_indent_char (' ');
    generator.set_pretty (true);

    stdout.printf("Example 2 (indented):\n%s\n", generator.to_data (null));

    return 0;
}
