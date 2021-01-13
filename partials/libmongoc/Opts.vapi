
/**
 * mongoc_transaction_opt_t
 */

[CCode (cname = "mongoc_transaction_opt_t", free_function = "mongoc_transaction_opts_destroy", copy_function = "mongoc_transaction_opts_clone")]
[Compact]
public class TransactionOpt {

    //Constructors
    [CCode (cname = "mongoc_transaction_opts_new")]
    public TransactionOpt ();

    //Methods
    [CCode (cname = "mongoc_transaction_opts_get_read_concern")]
    public ReadConcern get_read_concern ();

    [CCode (cname = "mongoc_transaction_opts_set_read_concern")]
    public void set_read_concern (ReadConcern read_concern);

    [CCode (cname = "mongoc_transaction_opts_get_write_concern")]
    public WriteConcern get_write_concern ();

    [CCode (cname = "mongoc_transaction_opts_set_write_concern")]
    public void set_write_concern (WriteConcern write_concern);

    [CCode (cname = "mongoc_transaction_opts_get_read_prefs")]
    public ReadPrefs get_read_prefs ();

    [CCode (cname = "mongoc_transaction_opts_set_read_prefs")]
    public void set_read_prefs (ReadPrefs read_prefs);

    [CCode (cname = "mongoc_transaction_opts_get_max_commit_time_ms")]
    public int64 get_max_commit_time_ms ();

    [CCode (cname = "mongoc_transaction_opts_set_max_commit_time_ms")]
    public void set_max_commit_time_ms (int64 time);

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
    public static SSLOpts get_default ();

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

/**
 * mongoc_index_opt_t
 */

[CCode (cname = "mongoc_index_opt_t", has_type_id = false)]
public struct IndexOpt {

    //Methods
    //FIXME
    [CCode (cname = "mongoc_index_opt_get_default")]
    public static IndexOpt get_default ();

    [CCode (cname = "mongoc_index_opt_init")]
    public void init ();

}

/**
 * mongoc_index_opt_wt_t
 */

[CCode (cname = "mongoc_index_opt_wt_t", has_type_id = false)]
public struct IndexOptWT {

    //Methods
    [CCode (cname = "mongoc_index_opt_wt_get_default")]
    public static IndexOptWT get_default ();

    [CCode (cname = "mongoc_index_opt_wt_init")]
    public void init ();

}

/**
 * mongoc_index_opt_geo_t
 */

[CCode (cname = "mongoc_index_opt_geo_t", has_type_id = false)]
public struct IndexOptGEO {

    //Methods
    [CCode (cname = "mongoc_index_opt_geo_get_default")]
    public static IndexOptGEO get_default ();

    [CCode (cname = "mongoc_index_opt_geo_init")]
    public void init ();

}

/**
 * mongoc_find_and_modify_opts_t
 */

[CCode (cname = "mongoc_find_and_modify_opts_t", destroy_function = "mongoc_find_and_modify_opts_destroy")]
[Compact]
public class FindAndModifyOpt {

    //Constructors
    [CCode (cname = "mongoc_find_and_modify_opts_new")]
    public FindAndModifyOpt ();

    //Methods
    [CCode (cname = "mongoc_find_and_modify_opts_append")]
    public bool append (Bson extra);

    [CCode (cname = "mongoc_find_and_modify_opts_get_bypass_document_validation")]
    public bool get_bypass_document_validation ();

    [CCode (cname = "mongoc_find_and_modify_opts_get_fields")]
    public void get_fields (Bson fields);

    [CCode (cname = "mongoc_find_and_modify_opts_get_flags")]
    public FindAndModifyFlags get_flags ();

    [CCode (cname = "mongoc_find_and_modify_opts_get_max_time_ms ")]
    public uint32 get_max_time_ms ();

    [CCode (cname = "mongoc_find_and_modify_opts_get_sort")]
    public void get_sort (Bson sort);

    [CCode (cname = "mongoc_find_and_modify_opts_get_update")]
    public void get_update (Bson update);

    [CCode (cname = "mongoc_find_and_modify_opts_set_bypass_document_validation")]
    public bool set_bypass_document_validation (bool bypass);

    [CCode (cname = "mongoc_find_and_modify_opts_set_fields")]
    public bool set_fields (Bson fields);

    [CCode (cname = "mongoc_find_and_modify_opts_set_flags")]
    public bool set_flags (FindAndModifyFlags flags);

    [CCode (cname = "mongoc_find_and_modify_opts_set_max_time_ms ")]
    public bool set_max_time_ms (uint32 max_time_ms);

    [CCode (cname = "mongoc_find_and_modify_opts_set_sort")]
    public bool set_sort (Bson sort);

    [CCode (cname = "mongoc_find_and_modify_opts_set_update")]
    public bool set_update (Bson update);

}
