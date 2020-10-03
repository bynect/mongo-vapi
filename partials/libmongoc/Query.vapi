
/**
 * mongoc_query_flags_t 
 */
[CCode (cname = "mongoc_query_flags_t", cprefix = "MONGOC_QUERY_", has_type_id = false)]
public enum QueryFlags {
    NONE,
    TAILABLE_CURSOR,
    SLAVE_OK,
    OPLOG_REPLAY,
    NO_CURSOR_TIMEOUT,
    AWAIT_DATA,
    EXHAUST,
    PARTIAL
}
