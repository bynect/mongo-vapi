
/**
 * mongoc_database_t
 */

[CCode (cname = "mongoc_database_t", free_function = "mongoc_database_destroy", copy_function = "mongoc_database_copy")]
[Compact]
public class Database {

    //Methods
    [CCode (cname = "mongoc_database_add_user")]
    public bool add_user (string username, string password, Bson roles, Bson data, BsonError? error);

    [CCode (cname = "mongoc_database_aggregate")]
    public Cursor aggregate (Bson pipeline, Bson? opts, ReadPrefs read_prefs);

    [CCode (cname = "mongoc_database_command")]
    public Cursor command (QueryFlags flags, uint32 skip, uint32 limit, uint32 batch_size, Bson command, Bson fields, ReadPrefs read_prefs);

    [CCode (cname = "mongoc_database_command_simple")]
    public bool command_simple (Bson command, ReadPrefs read_prefs,Bson reply, BsonError? error);

    [CCode (cname = "mongoc_database_command_with_opts")]
    public bool command_with_opts (Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_database_create_collection")]
    public Collection create_collection (string name, Bson opts, BsonError? error);

    [CCode (cname = "mongoc_database_drop")]
    public bool drop (BsonError? error);

    [CCode (cname = "mongoc_database_drop_with_ops")]
    public bool drop_with_ops (Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_database_find_collections")]
    public Cursor find_collections (Bson? filter, BsonError? error);

    [CCode (cname = "mongoc_database_find_collections_with_ops")]
    public Cursor find_collections_with_ops (Bson? opts);
    
    [CCode (cname = "mongoc_database_get_collection")]
    public Collection get_collection (string name);

    [CCode (cname = "mongoc_database_get_collection_names, array_length = false")]
    public string[]? get_collection_names (BsonError? error);

    [CCode (cname = "mongoc_database_get_collection_names_with_opts", array_length = false)]
    public string[]? get_collection_names_with_opts (Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_database_get_name")]
    public string get_name ();

    [CCode (cname = "mongoc_database_get_read_concern")]
    public ReadConcern get_read_concern ();

    [CCode (cname = "mongoc_database_get_read_prefs")]
    public ReadPrefs get_read_prefs ();

    [CCode (cname = "mongoc_database_get_write_concern")]
    public WriteConcern get_write_concern ();

    [CCode (cname = "mongoc_database_has_collection")]
    public bool has_collection (string name, BsonError? error);

    [CCode (cname = "mongoc_database_read_command_with_opts")]
    public bool read_command_with_opts (Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_database_read_write_command_with_opts")]
    public bool read_write_command_with_opts (Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_mongoc_database_remove_all_users")]
    public bool mongoc_database_remove_all_users (BsonError? error);

    [CCode (cname = "mongoc_database_remove_user")]
    public bool remove_user (string username, BsonError? error);

    [CCode (cname = "mongoc_database_set_read_concern")]
    public void set_read_concern (ReadConcern read_concern);

    [CCode (cname = "mongoc_database_set_read_prefs")]
    public void set_read_prefs (ReadPrefs read_prefs);

    [CCode (cname = "mongoc_database_set_write_concern")]
    public void set_write_concern (WriteConcern write_concern);

    [CCode (cname = "mongoc_database_watch")]
    public ChangeStream watch (Bson pipeline, Bson? opts);

    [CCode (cname = "mongoc_database_write_command_with_opts")]
    public bool write_command_with_opts (Bson command, Bson? opts, Bson reply, BsonError? error);

}
