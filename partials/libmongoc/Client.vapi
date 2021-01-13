
/**
 * mongoc_client_t
 */

[CCode (cname = "mongoc_client_t", free_function = "mongoc_client_destroy")]
[Compact]
public class Client {

    //Constructors
    [CCode (cname = "mongoc_client_new")]
    public Client (string uri);

    [CCode (cname = "mongoc_client_new_from_uri")]
    public Client.from_uri (Uri uri);

    //Methods
    [CCode (cname = "mongoc_client_command")]
    public Cursor command (string dbname, QueryFlags flags, uint32 skip, uint32 limit, uint32 batch_size, Bson query, Bson fields, ReadPrefs read_prefs);

    [CCode (cname = "mongoc_client_command_simple")]
    public bool command_simple (string dbname, Bson? command, ReadPrefs? read_prefs, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_client_command_simple_with_server_id")]
    public bool command_simple_with_server_id (string dbname, Bson command, ReadPrefs? read_prefs, uint32 server_id, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_client_command_with_opts")]
    public bool command_with_opts (string dbname, Bson command, ReadPrefs? read_prefs, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_client_enable_auto_encryption")]
    public bool enable_auto_encryption (AutoEncryptionOpts opts, BsonError? error);

    [CCode (cname = "mongoc_client_find_databases_with_opts")]
    public Cursor find_databases_with_opts (Bson? opts);

    [CCode (cname = "mongoc_client_get_collection")]
    public Collection get_collection (string dbname, string collection);

    [CCode (cname = "mongoc_client_get_database")]
    public Database get_database (string dbname);

    [CCode (cname = "mongoc_client_get_database_names", array_length = false)]
    public string[]? get_database_names (BsonError? error);

    [CCode (cname = "mongoc_client_get_database_names_with_opts", array_length = false)]
    public string[]? get_database_names_with_opts (Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_client_get_default_database")]
    public Database get_default_database ();

    [CCode (cname = "mongoc_client_get_gridfs")]
    public GridFS? get_gridfs (string db, string? prefix, BsonError? error);

    [CCode (cname = "mongoc_client_get_read_concern")]
    public ReadConcern get_read_concern ();

    [CCode (cname = "mongoc_client_get_read_prefs")]
    public ReadPrefs get_read_prefs ();

    [CCode (cname = "mongoc_client_get_server_description")]
    public ServerDescription get_server_description (uint32 server_id);

    //FIXME: Fix array length
    [CCode (cname = "mongoc_client_get_server_descriptions", array_length_pos = 1, array_length_type = "size_t")]
    public ServerDescription[] get_server_descriptions ();

    [CCode (cname = "mongoc_client_get_server_status")]
    public bool get_server_status (ReadPrefs read_prefs, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_client_get_uri")]
    public Uri get_uri ();

    [CCode (cname = "mongoc_client_get_write_concern")]
    public WriteConcern get_write_concern ();

    [CCode (cname = "mongoc_client_read_command_with_opts")]
    public bool read_command_with_opts (string dbname, Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_client_read_write_command_with_opts")]
    public bool read_write_command_with_opts (string dbname, Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_client_reset")]
    public void reset ();

    [CCode (cname = "mongoc_client_select_server")]
    public ServerDescription select_server (bool for_writes, ReadPrefs? read_prefs, BsonError? error);

    [CCode (cname = "mongoc_client_set_apm_callbacks", simple_generics = true)]
    public bool set_apm_callbacks<T> (APMCallbacks callbacks, T? context = null);

    [CCode (cname = "mongoc_client_set_appname")]
    public bool set_appname (string name);

    [CCode (cname = "mongoc_client_set_error_api")]
    public bool set_error_api (int32 version);

    [CCode (cname = "mongoc_client_set_read_concern")]
    public void set_read_concern (ReadConcern read_concern);

    [CCode (cname = "mongoc_client_set_read_prefs")]
    public void set_read_prefs (ReadPrefs read_prefs);

    [CCode (cname = "mongoc_client_set_ssl_opts")]
    public void set_ssl_opts (SSLOpts opts);

    [CCode (cname = "mongoc_client_set_stream_initiator")]
    public void client_set_stream_initiator<T> (StreamInitiator initiator, T data);

    [CCode (cname = "mongoc_client_set_write_concern")]
    public void set_write_concern (WriteConcern write_concern);

    [CCode (cname = "mongoc_client_start_session")]
    public ClientSession? start_session (SessionOpt opts, BsonError? error);

    [CCode (cname = "mongoc_client_watch")]
    public ChangeStream? watch (Bson pipeline, Bson? opts);

    [CCode (cname = "mongoc_client_write_command_with_opts")]
    public bool write_command_with_opts (string dbname, Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

}

/**
 * mongoc_client_session_with_transaction_cb_t
 */

[CCode (cname = "mongoc_stream_initiator_t", has_target = false)]
public delegate Stream StreamInitiator<T> (Uri uri, HostList host, T data, BsonError? error);
