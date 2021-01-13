
/**
 * mongoc_transaction_state_t
 */

[CCode (cname = "mongoc_transaction_state_t", cprefix = "MONGOC_TRANSACTION_", has_type_id = false)]
[Flags]
public enum TransactionState {
    NONE,
    STARTING,
    IN_PROGRESS,
    COMMITTED,
    ABORTED
}
