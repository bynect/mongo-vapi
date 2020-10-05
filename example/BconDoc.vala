int main (string[] argv) {

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
        "]");
    
    stdout.printf ("Example 2:\n%s\n", grace_hopper.as_relaxed_extended_json (null));
    
    return 0;
}
