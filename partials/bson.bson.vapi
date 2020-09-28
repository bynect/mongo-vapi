
/**
 * bson_t
 */

[CCode (cname = "bson_t", free_function = "bson_destroy")]
[Compact]
public class Bson {
    [CCode (cname = "bson_new")]
    public Bson ();

    [CCode (cname = "bson_as_json")]
    public string as_json (int? length);
}

/**
 * bson_error_t
 */

[CCode (cname = "bson_error_t", free_function = "")]
public struct BsonError {

}
