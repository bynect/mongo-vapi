
/**
 * mongoc_transaction_opt_t 
 */

[CCode (cname = "mongoc_transaction_opt_t", free_function = "mongoc_transaction_opt_destroy")]
[Compact]
public class TransactionOpt {
    //TODO
    //Methods
}

/**
 * mongoc_session_opt_t 
 */

[CCode (cname = "mongoc_session_opt_t", free_function = "mongoc_session_opt_destroy")]
[Compact]
public class SessionOpt {

    //Costructor
    [CCode (cname = "mongoc_session_opts_new")]
    public SessionOpt ();

    //Methods
    [CCode (cname = "mongoc_session_opts_get_causal_consistency")]
    public bool get_causal_consistency ();

    [CCode (cname = "mongoc_session_opts_set_causal_consistency")]
    public void set_causal_consistency (bool causal_consistency);

    [CCode (cname = "mongoc_session_opts_get_default_transaction_opts")]
    public TransactionOpt get_default_transaction_opts ();

    [CCode (cname = "mongoc_session_opts_set_default_transaction_opts")]
    public void set_default_transaction_opts (TransactionOpt txopts);

}

/**
 * mongoc_ssl_opt_t 
 */

[CCode (cname = "mongoc_ssl_opt_t")]
public struct SSLOpts {
    
    //FIXME
    [CCode (cname = "mongoc_ssl_opt_get_default")]
    public SSLOpts get_default ();

}

/**
 * mongoc_auto_encryption_opts_t 
 */

[CCode (cname = "mongoc_auto_encryption_opts_t", free_function = "mongoc_auto_encryption_opts_destroy")]
[Compact]
public class AutoEncryptionOpts {

    //Costructor
    [CCode (cname = "mongoc_auto_encryption_opts_new")]
    public AutoEncryptionOpts ();

    //Methods
    [CCode (cname = "mongoc_auto_encryption_opts_set_keyvault_client")]
    public void set_keyvault_client (Client client);

    [CCode (cname = "mongoc_auto_encryption_opts_set_keyvault_client_pool")]
    public void set_keyvault_client_pool (ClientPool client_pool);

    [CCode (cname = "mongoc_auto_encryption_opts_set_keyvault_namespace")]
    public void set_keyvault_namespace (string db, string coll);

    [CCode (cname = "mongoc_auto_encryption_opts_set_kms_providers")]
    public void set_kms_providers (Bson kms_providers);

    [CCode (cname = "mongoc_auto_encryption_opts_set_schema_map")]
    public void set_schema_map (Bson schema_map);

    [CCode (cname = "mongoc_auto_encryption_opts_set_bypass_auto_encryption")]
    public void set_bypass_auto_encryption (bool bypass_auto_encryption);

    [CCode (cname = "mongoc_auto_encryption_opts_set_extra")]
    public void set_extra (Bson extra);

}
