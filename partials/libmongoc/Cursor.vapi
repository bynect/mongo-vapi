
/**
 * mongoc_cursor_t
 */

[Compact]
[CCode (cname = "mongoc_cursor_t", free_function = "mongoc_cursor_destroy")]
public class Cursor {

    //Constructor
    [CCode (cname = "mongoc_cursor_new_from_command_reply")]
    public Cursor (Client client, Bson reply, uint32 server_id);

    [CCode (cname = "mongoc_cursor_new_from_command_reply_with_opts")]
    public Cursor.with_opts (Client client, Bson reply, Bson? opts);

    //Methods
    [CCode (cname = "mongoc_cursor_clone")]
    public Cursor clone ();

    [CCode (cname = "mongoc_cursor_current")]
    public Bson? current ();

    [CCode (cname = "mongoc_cursor_error")]
    public bool error (BsonError? error);

    [CCode (cname = "mongoc_cursor_error_document")]
    public bool error_document (BsonError? error, Bson reply);

    [CCode (cname = "mongoc_cursor_get_batch_size")]
    public uint32 get_batch_size ();

    [CCode (cname = "mongoc_cursor_get_hint")]
    public uint32 get_hint ();

    [CCode (cname = "mongoc_cursor_get_host")]
    public void get_host (HostList host);

    [CCode (cname = "mongoc_cursor_get_id")]
    public int64 get_id ();

    [CCode (cname = "mongoc_cursor_get_limit")]
    public int64 get_limit ();

    [CCode (cname = "mongoc_cursor_get_max_await_time_ms")]
    public uint32 get_max_await_time_ms ();

    [CCode (cname = "mongoc_cursor_is_alive")]
    public bool is_alive ();

    [CCode (cname = "mongoc_cursor_more")]
    public bool more ();

    [CCode (cname = "mongoc_cursor_next")]
    public bool next (out Bson bson);

    [CCode (cname = "mongoc_cursor_set_batch_size")]
    public void set_batch_size (uint32 batch_size);

    [CCode (cname = "mongoc_cursor_set_hint")]
    public bool set_hint (uint32 server_id);

    [CCode (cname = "mongoc_cursor_set_limit")]
    public bool set_limit (int64 limit);

    [CCode (cname = "mongoc_cursor_set_max_await_time_ms")]
    public void set_max_await_time_ms (uint32 max_await_time_ms);

}
