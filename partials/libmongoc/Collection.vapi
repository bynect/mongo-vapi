
/**
 * mongoc_collection_t
 */

[Compact]
[CCode (cname = "mongoc_collection_t", free_function = "mongoc_collection_destroy", copy_function = "mongoc_collection_copy")]
public class Collection {

    //Methods
    [CCode (cname = "mongoc_collection_aggregate")]
    public Cursor aggregate (QueryFlags flags, Bson pipeline, Bson? opts, ReadPrefs read_prefs);

    [CCode (cname = "mongoc_collection_command")]
    public Cursor command (QueryFlags flags, uint32 skip, uint32 limit, uint32 batch_size, Bson command, Bson? fields, ReadPrefs? read_prefs);

    [CCode (cname = "mongoc_collection_command_simple")]
    public bool command_simple (Bson command, ReadPrefs? read_prefs, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_command_with_opts")]
    public bool command_with_opts (Bson command, ReadPrefs? read_prefs, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_count_documents")]
    public int64 count_documents (Bson filter, Bson? opts, ReadPrefs? read_prefs, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_estimated_document_count")]
    public int64 estimated_document_count (Bson? opts, ReadPrefs? read_prefs, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_create_bulk_operation")]
    public BulkOperation create_bulk_operation (bool ordered, WriteConcern write_concern);

    [CCode (cname = "mongoc_collection_create_bulk_operation_with_opts")]
    public BulkOperation create_bulk_operation_with_opts (Bson? opts);

    [CCode (cname = "mongoc_collection_create_index")]
    public bool create_index (Bson keys, IndexOpt? opt, BsonError? error);

    [CCode (cname = "mongoc_collection_create_index_with_opts")]
    public bool create_index_with_opts (Bson keys, IndexOpt? opt, Bson? command_opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_delete_many")]
    public bool delete_many (Bson selector, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_delete_one")]
    public bool delete_one (Bson selector, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_drop")]
    public bool drop (BsonError? error);

    [CCode (cname = "mongoc_collection_drop_with_opts")]
    public bool drop_with_opts (Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_collection_drop_index")]
    public bool drop_index (string index_name, BsonError? error);

    [CCode (cname = "mongoc_collection_drop_index_with_opts")]
    public bool drop_index_with_opts (string index_name, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_collection_find")]
    public Cursor find (QueryFlags? flags, uint32 skip, uint32 limit, uint32 batch_size, Bson query, Bson? fields, ReadPrefs? read_prefs);

    [CCode (cname = "mongoc_collection_find_with_opts")]
    public Cursor find_with_opts (Bson? filter, Bson? opts, ReadPrefs? read_prefs);

    [CCode (cname = "mongoc_collection_find_and_modify")]
    public bool find_and_modify (Bson query, Bson? sort, Bson? update, Bson? fields, bool _remove, bool upsert, bool _new, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_find_and_modify_with_opts")]
    public bool find_and_modify_with_opts (Bson query, FindAndModifyOpt? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_find_indexes")]
    public Cursor find_indexes (BsonError? error);

    [CCode (cname = "mongoc_collection_find_indexes_with_opts")]
    public Cursor find_indexes_with_opts (Bson opts);

    [CCode (cname = "mongoc_collection_get_last_error")]
    public Bson? get_last_error ();

    [CCode (cname = "mongoc_collection_get_name")]
    public string get_name ();

    [CCode (cname = "mongoc_collection_get_read_concern")]
    public ReadConcern get_read_concern ();

    [CCode (cname = "mongoc_collection_get_write_concern")]
    public WriteConcern get_write_concern ();

    [CCode (cname = "mongoc_collection_get_read_prefs")]
    public ReadPrefs get_read_prefs ();

    [CCode (cname = "mongoc_collection_insert")]
    public bool insert (InsertFlags flags, Bson? document, WriteConcern? write_concern, BsonError? error);

    [CCode (cname = "mongoc_collection_insert_one")]
    public bool insert_one (Bson document, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_insert_many")]
    public bool insert_many (Bson[] documents, size_t n_documents, Bson? opts, Bson? reply,  BsonError? error);

    [CCode (cname = "mongoc_collection_keys_to_index_string")]
    public static string keys_to_index_string (Bson keys);

    [CCode (cname = "mongoc_collection_read_command_with_opts")]
    public bool read_command_with_opts (Bson command, ReadPrefs? read_prefs, Bson? opts, Bson? reply,  BsonError? error);

    [CCode (cname = "mongoc_collection_read_write_command_with_opts")]
    public bool read_write_command_with_opts (Bson command, ReadPrefs? read_prefs, Bson? opts, Bson? reply,  BsonError? error);

    [CCode (cname = "mongoc_collection_remove")]
    public bool remove (RemoveFlags flags, Bson selector, WriteConcern? write_concern, BsonError? error);

    [CCode (cname = "mongoc_collection_rename")]
    public bool rename (string new_db, string new_name, bool drop_target_before_rename, BsonError? error);

    [CCode (cname = "mongoc_collection_rename_with_opts")]
    public bool rename_with_opts (string new_db, string new_name, bool drop_target_before_rename, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_collection_replace_one")]
    public bool replace_one (Bson selector, Bson replacement, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_save")]
    public bool save (Bson document, WriteConcern? write_concern, BsonError? error);

    [CCode (cname = "mongoc_collection_set_read_concern")]
    public void set_read_concern (ReadConcern read_concern);

    [CCode (cname = "mongoc_collection_set_write_concern")]
    public void set_write_concern (WriteConcern write_concern);

    [CCode (cname = "mongoc_collection_set_read_prefs")]
    public void set_read_prefs (ReadPrefs read_prefs);

    [CCode (cname = "mongoc_collection_update")]
    public bool update (UpdateFlags flags, Bson selec, Bson update, WriteConcern? write_concern, BsonError? error);

    [CCode (cname = "mongoc_collection_update_one")]
    public bool update_one (Bson document, Bson selector, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_update_many")]
    public bool update_many (Bson selector, Bson update, Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_validate")]
    public bool validate (Bson? opts, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_collection_write_command_with_opts")]
    public bool write_command_with_opts (Bson command, Bson? opts, Bson? reply,  BsonError? error);

}
