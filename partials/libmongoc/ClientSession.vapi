
/**
 * mongoc_client_session_with_transaction_cb_t
 */

[CCode (cname = "mongoc_client_session_with_transaction_cb_t", has_target = false)]
public delegate bool ClientSessionTransactionCallback<T> (ClientSession session, T ctx, out Bson? reply, BsonError error);

/**
 * mongoc_client_session_t
 */

[CCode (cname = "mongoc_client_session_t", free_function = "mongoc_client_session_destroy")]
[Compact]
public class ClientSession {

    //Methods
    [CCode (cname = "mongoc_client_session_start_transaction")]
    public bool start_transaction (TransactionOpt opts, BsonError? error);

    [CCode (cname = "mongoc_client_session_in_transaction")]
    public bool in_transaction ();

    [CCode (cname = "mongoc_client_session_get_transaction_state")]
    public TransactionState get_transaction_state ();

    [CCode (cname = "mongoc_client_session_commit_transaction")]
    public bool commit_transaction (Bson reply, BsonError? error);

    [CCode (cname = "mongoc_client_session_abort_transaction")]
    public bool abort_transaction (BsonError? error);

    [CCode (cname = "mongoc_client_session_advance_cluster_time")]
    public void advance_cluster_time (Bson time);

    [CCode (cname = "mongoc_client_session_advance_operation_time")]
    public void advance_operation_time (uint32 timestamp, uint32 increment);

    [CCode (cname = "mongoc_client_session_with_transaction", simple_generics = true)]
    public bool client_session_with_transaction<T> (ClientSessionTransactionCallback cb, TransactionOpt opts, T ctx, Bson? reply, BsonError? error);

    [CCode (cname = "mongoc_client_session_append")]
    public bool append (Bson opts, BsonError? error);

    [CCode (cname = "mongoc_client_session_get_client")]
    public Client get_client ();

    [CCode (cname = "mongoc_client_session_get_cluster_time")]
    public Bson get_cluster_time ();

    [CCode (cname = "mongoc_client_session_get_operation_time")]
    public void get_operation_time (uint32 timestamp, uint32 increment);

    [CCode (cname = "mongoc_client_session_get_opts")]
    public SessionOpt get_opts ();

    [CCode (cname = "mongoc_client_session_get_lsid")]
    public Bson get_lsid ();

    [CCode (cname = "mongoc_client_session_get_server_id")]
    public uint32 get_server_id ();

}
