
/**
 * mongoc_client_pool_t 
 */

[CCode (cname = "mongoc_client_pool_t", free_function = "mongoc_client_pool_destroy")]
[Compact]
public class ClientPool {

    //Constructor
    [CCode (cname = "mongoc_client_pool_new")]
    public ClientPool (Uri uri);

    //Methods
    [CCode (cname = "client_pool_enable_auto_encryption")]
    public bool enable_auto_encryption (ClientPool client_pool, Bson? opts, BsonError? error);

    [CCode (cname = "client_pool_max_size")]
    public void max_size (ClientPool client_pool, uint32 max_pool_size);

    [CCode (cname = "client_pool_min_size")]
    public void min_size (ClientPool client_pool, uint32 min_pool_size);

    [CCode (cname = "client_pool_pop")]
    public Client pop (ClientPool client_pool);

    [CCode (cname = "client_pool_push")]
    public void push (ClientPool client_pool, Client client);

    //TODO
    //  [CCode (cname = "client_pool_set_apm_callbacks")]
    //  public bool set_apm_callbacks (ClientPool client_pool, APMCallbacks callbacks);

    [CCode (cname = "client_pool_set_appname")]
    public bool set_appname (ClientPool client_pool, string name);

    [CCode (cname = "client_pool_set_error_api")]
    public bool set_error_api (ClientPool client_pool, int32 version);
    
    //XXX
    [CCode (cname = "client_pool_set_ssl_opts")]
    public void set_ssl_opts (ClientPool client_pool, SSLOpts opts);

    [CCode (cname = "client_pool_try_pop")]
    public Client? try_pop (ClientPool client_pool);
    
}
