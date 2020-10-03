
/**
 * mongoc_collection_t
 */

[Compact]
[CCode (cname = "mongoc_collection_t", free_function = "mongoc_collection_destroy")]
public class Collection {

    //Methods
    [CCode (cname = "mongoc_collection_aggregate")]
    public Cursor aggregate (QueryFlags flags, Bson pipeline, Bson? opts, ReadPrefs read_prefs);

    [CCode (cname = "mongoc_collection_command")]
    public Cursor command (QueryFlags flags, uint32 skip, uint32 limit, uint32 batch_size, Bson command, Bson fields);

    [CCode (cname = "mongoc_collection_command_with_opts")]
    public bool command_with_opts (Bson command, ReadPrefs read_prefs, Bson? opts, Bson reply, BsonError? error);

    [CCode (cname = "mongoc_collection_count_documents")]
    public int64 count_documents (Bson filter, Bson? opts, ReadPrefs read_prefs, Bson reply, BsonError error);

    [CCode (cname = "mongoc_collection_estimated_document_count")]
    public int64 estimated_document_count (Bson? opts, ReadPrefs read_prefs, Bson reply, BsonError error);

    [CCode (cname = "mongoc_collection_create_bulk_operation")]
    public BulkOperation create_bulk_operation (QueryFlags flags, Bson pipeline, Bson? opts, ReadPrefs read_prefs);
    
}