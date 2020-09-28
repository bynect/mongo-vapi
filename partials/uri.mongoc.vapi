/**
 * mongoc_uri_t
 */

[CCode (cname = "mongoc_uri_t", free_function = "mongoc_uri_destroy")]
[Compact]
public class Uri {

    [CCode (cname = "mongoc_uri_new")]
    public Uri (string uri);

    [CCode (cprefix = "mongoc_uri_new_with_error")]
    public Uri.with_error (string uri, Bson.BsonError? error);

    [CCode (cname = "mongoc_uri_new_for_host_port")]
    public Uri.for_host_port (string hostname, uint16 port);

}
