
/**
 * mongoc_client_t
 */

[CCode (cname = "mongoc_client_t", free_function = "mongoc_client_destroy")]
[Compact]
public class Client {

    [CCode (cname = "mongoc_client_new")]
    public Client (string uri);

    [CCode (cname = "mongoc_client_new_from_uri")]
    public Client.from_uri (Uri uri);

    [CCode (cname = "mongoc_client_get_server_status")]
    public bool get_server_status (ReadPrefs read_prefs, Bson reply, BsonError? error);

}
