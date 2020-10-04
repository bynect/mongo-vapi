
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

/**
 * mongoc_find_and_modify_flags_t 
 */

[CCode (cname = "mongoc_find_and_modify_flags_t", cprefix = "MONGOC_FIND_AND_MODIFY_", has_type_id = false)]
public enum FindAndModifyFlags {
    NONE,
    REMOVE,
    UPSERT,
    RETURN_NEW
}

/**
 * mongoc_insert_flags_t 
 */

[CCode (cname = "mongoc_insert_flags_t", cprefix = "MONGOC_INSERT_", has_type_id = false)]
public enum InsertFlags {
    NONE,
    CONTINUE_ON_ERROR,
    NO_VALIDATE
}

/**
 * mongoc_remove_flags_t 
 */

[CCode (cname = "mongoc_remove_flags_t", cprefix = "MONGOC_REMOVE_", has_type_id = false)]
public enum RemoveFlags {
    NONE,
    SINGLE_REMOVE
}

/**
 * mongoc_update_flags_t 
 */

[CCode (cname = "mongoc_update_flags_t", cprefix = "MONGOC_UPDATE_", has_type_id = false)]
public enum UpdateFlags {
    NONE,
    UPSERT,
    MULTI_UPDATE,
    NO_VALIDATE
}

/**
 * mongoc_delete_flags_t 
 */

[CCode (cname = "mongoc_delete_flags_t", cprefix = "MONGOC_DELETE_", has_type_id = false)]
public enum DeleteFlags {
    NONE,
    SINGLE_REMOVE
}

/**
 * mongoc_reply_flags_t 
 */

[CCode (cname = "mongoc_reply_flags_t", cprefix = "MONGOC_REPLY_", has_type_id = false)]
public enum ReplyFlags {
    NONE,
    CURSOR_NOT_FOUND,
    QUERY_FAILURE,
    SHARD_CONFIG_STALE,
    AWAIT_CAPABLE
}
