
/**
 * mongoc_client_pool_t
 */

[CCode (cname = "mongoc_client_pool_t", free_function = "mongoc_client_pool_destroy")]
[Compact]
public class ClientPool {

    //Constructors
    [CCode (cname = "mongoc_client_pool_new")]
    public ClientPool (Uri uri);

    //Methods
    [CCode (cname = "mongoc_client_pool_enable_auto_encryption")]
    public bool enable_auto_encryption (Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_client_pool_max_size")]
    public void max_size (uint32 max_pool_size);

    [CCode (cname = "mongoc_client_pool_min_size")]
    public void min_size (uint32 min_pool_size);

    [CCode (cname = "mongoc_client_pool_pop")]
    public Client pop ();

    [CCode (cname = "mongoc_client_pool_push")]
    public void push (Client client);

    [CCode (cname = "mongoc_client_pool_set_apm_callbacks", simple_generics = true)]
    public bool set_apm_callbacks<T> (APMCallbacks callbacks, T? context = null);

    [CCode (cname = "mongoc_client_pool_set_appname")]
    public bool set_appname (string name);

    [CCode (cname = "mongoc_client_pool_set_error_api")]
    public bool set_error_api (int32 version);

    [CCode (cname = "mongoc_client_pool_set_ssl_opts")]
    public void set_ssl_opts (SSLOpts opts);

    [CCode (cname = "mongoc_client_pool_try_pop")]
    public Client? try_pop ();

}
