
/**
* mongoc_client_session_t 
*/

[CCode (cname = "mongoc_client_session_t", free_function = "mongoc_client_session_destroy")]
[Compact]
public class ClientSession {

}

    //  //Methods
    //  [CCode (cprefix = "")]
    //  public bool client_session_start_transaction (ClientSession session, TransactionOpt opts, Bson.BsonError? error);

    //  [CCode (cprefix = "")]
    //  public bool client_session_in_transaction (ClientSession session);

    //  [CCode (cprefix = "")]
    //  public TransactionState client_session_get_transaction_state (ClientSession session);

    //  [CCode (cprefix = "")]
    //  public bool client_session_commit_transaction (ClientSession session, Bson.Bson reply, Bson.BsonError? error);

    //  [CCode (cprefix = "")]
    //  public bool client_session_abort_transaction (ClientSession session, Bson.BsonError? error);

    //  [CCode (cprefix = "")]
    //  public void client_session_advance_cluster_time (ClientSession session, Bson.Bson time);

    //  [CCode (cprefix = "")]
    //  public void client_session_advance_operation_time (ClientSession session, uint32 timestamp, uint32 increment);

    //  //TODO: Implement
    //  //  [CCode (cprefix = "")]
    //  //  public bool client_session_with_transaction (ClientSession session, );

    //  [CCode (cprefix = "")]
    //  public Client client_session_get_client (ClientSession session);

    //  [CCode (cprefix = "")]
    //  public Bson.Bson client_session_get_cluster_time (ClientSession session);

    //  //XXX: To test
    //  [CCode (cprefix = "")]
    //  public void client_session_get_operation_time (ClientSession session, uint32 timestamp, uint32 increment);

    //  [CCode (cprefix = "")]
    //  public SessionOpt client_session_get_opts (ClientSession session);

    //  [CCode (cprefix = "")]
    //  public Bson.Bson client_session_get_lsid (ClientSession session);

    //  [CCode (cprefix = "")]
    //  public uint32 client_session_get_server_id (ClientSession session);
