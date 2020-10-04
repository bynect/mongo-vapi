
/**
 * mongoc_client_encryption_t
 */

[CCode (cname = "mongoc_client_encryption_t", free_function = "mongoc_client_encryption_destroy")]
public class ClientEncryption {

    //Constructor
    [CCode (cname = "mongoc_client_encryption_new")]
    public ClientEncryption (ClientEncryptionOpts opts, BsonError? error);

    //Methods
    [CCode (cname = "mongoc_client_encryption_create_datakey")]
    public bool create_datakey (string kms_provider, ClientEncryptionDatakeyOpts *opts, BsonValue keyid, BsonError? error);

    [CCode (cname = "mongoc_client_encryption_encrypt")]
    public bool encrypt (BsonValue value, ClientEncryptionEncryptOpts? opts, BsonValue ciphertext, BsonError? error);

    [CCode (cname = "mongoc_client_decryption_decrypt")]
    public bool decrypt (BsonValue ciphertext, BsonValue value, BsonError? error);

}

/**
 * mongoc_client_encryption_opts_t
 */

[CCode (cname = "mongoc_client_encryption_opts_t", free_function = "mongoc_client_encryption_opts_destroy")]
[Compact]
public class  ClientEncryptionOpts {

    //Constructor
    [CCode (cname = "mongoc_client_encryption_opts_new")]
    public ClientEncryptionOpts ();

    //Methods
    [CCode (cname = "mongoc_client_encryption_opts_set_keyvault_client")]
    public void set_keyvault_client (Client keyvault_client);

    [CCode (cname = "mongoc_client_encryption_opts_set_keyvault_namespace")]
    public void set_keyvault_namespace (string db, string coll);

    [CCode (cname = "mongoc_client_encryption_opts_set_kms_providers")]
    public void set_kms_providers (Bson kms_providers);

}

/**
 * mongoc_client_encryption_encrypt_opts_t
 */

[CCode (cname = "mongoc_client_encryption_encrypt_opts_t", free_function = "mongoc_client_encryption_encrypt_opts_destroy")]
[Compact]
public class  ClientEncryptionEncryptOpts {

    //Constructor
    [CCode (cname = "mongoc_client_encryption_encrypt_opts_new")]
    public ClientEncryptionEncryptOpts ();

    //Methods
    [CCode (cname = "mongoc_client_encryption_encrypt_opts_set_keyid")]
    public void set_keyid (BsonValue keyid);

    [CCode (cname = "mongoc_client_encryption_encrypt_opts_set_keyaltname")]
    public void set_keyaltname (string key);

    [CCode (cname = "mongoc_client_encryption_encrypt_opts_set_algorithm")]
    public void set_algorithm (string algorithm);

}

/**
 * mongoc_client_encryption_datakey_opts_t
 */

[CCode (cname = "mongoc_client_encryption_datakey_opts_t", free_function = "mongoc_client_encryption_datakey_opts_destroy")]
[Compact]
public class  ClientEncryptionDatakeyOpts {

    //Constructor
    [CCode (cname = "mongoc_client_encryption_datakey_opts_new")]
    public ClientEncryptionDatakeyOpts ();

    //Methods
    [CCode (cname = "mongoc_client_encryption_datakey_opts_set_masterkey")]
    public void set_masterkey (Bson masterkey);

    [CCode (cname = "mongoc_client_encryption_datakey_opts_set_keyaltnames")]
    public void set_keyaltnames (string[] keyaltnames, uint32 keyaltnames_count);

}
