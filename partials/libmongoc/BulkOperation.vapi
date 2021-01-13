
/**
* mongoc_bulk_operation_t
*/

[CCode (cname = "mongoc_bulk_operation_t", free_function = "mongoc_bulk_operation_destroy")]
[Compact]
public class BulkOperation {

    //Methods
    [CCode (cname = "mongoc_bulk_operation_execute")]
    public uint32 execute (Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_bulk_operation_get_hint ")]
    public uint32 get_hint ();

    [CCode (cname = "mongoc_bulk_operation_get_write_concern")]
    public WriteConcern get_write_concern ();

    [CCode (cname = "mongoc_bulk_operation_insert")]
    public void insert (Bson doc);

    [CCode (cname = "mongoc_bulk_operation_insert_with_opts")]
    public bool insert_with_opts (Bson doc, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_bulk_operation_remove")]
    public void remove (Bson selector);

    [CCode (cname = "mongoc_bulk_operation_remove_many_with_opts")]
    public bool remove_many_with_opts (Bson selector, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_bulk_operation_remove_one")]
    public void remove_one (Bson selector);

    [CCode (cname = "mongoc_bulk_operation_remove_one_with_opts")]
    public bool remove_one_with_opts (Bson selector, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_bulk_operation_replace_one")]
    public void replace_one (Bson selector, Bson doc, bool upsert);

    [CCode (cname = "mongoc_bulk_operation_replace_one")]
    public bool replace_one_with_opts (Bson selector, Bson doc, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_bulk_operation_set_bypass_document_validation")]
    public void set_bypass_document_validation (bool bypass);

    [CCode (cname = "mongoc_bulk_operation_set_client_session")]
    public void set_client_session (ClientSession session);

    [CCode (cname = "mongoc_bulk_operation_set_hint")]
    public void set_hint (uint32 server_id);

    [CCode (cname = "mongoc_bulk_operation_update")]
    public void update (Bson selector, Bson doc, bool upsert);

    [CCode (cname = "mongoc_bulk_operation_update_many_with_opts")]
    public bool update_many_with_opts (Bson selector, Bson doc, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_bulk_operation_update_one")]
    public void update_one (Bson selector, Bson doc, bool upsert);

    [CCode (cname = "mongoc_bulk_operation_update_one_with_opts")]
    public bool update_one_with_opts (Bson selector, Bson doc, Bson? opts, BsonError? error);

}
