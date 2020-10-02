
/**
 * bson_type_t
 */

[CCode (cname = "bson_type_t", has_type_id = false, cprefix = "BSON_TYPE_")]
public enum BsonType {
    EOD,
    DOUBLE,
    UTF8,
    DOCUMENT,
    ARRAY,
    BINARY,
    UNDEFINED,
    OID,
    BOOL,
    DATE_TIME,
    NULL,
    REGEX,
    DBPOINTER,
    CODE,
    SYMBOL,
    CODEWSCOPE,
    INT32,
    TIMESTAMP,
    INT64,
    DECIMAL128,
    MAXKEY,
    MINKEY
}

/**
 * bson_subtype_t
 */

[CCode (cname = "bson_subtype_t", has_type_id = false, cprefix = "BSON_SUBTYPE_")]
public enum BsonSubtype {
    BINARY,
    FUNCTION,
    BINARY_DEPRECATED,
    UUID_DEPRECATED,
    UUID,
    MD5,
    USER
}

/**
 * bson_validate_flags_t
 */

[CCode (cname = "bson_validate_flags_t", has_type_id = false, cprefix = "BSON_VALIDATE_")]
[Flags]
public enum ValidateFlags {
    NONE,
    UTF8,
    DOLLAR_KEYS,
    DOT_KEYS,
    BUTF8_ALLOW_NULL,
    EMPTY_KEYS,
}

/**
 * bson_context_flags_t
 */

[CCode (cname = "bson_context_flags_t", has_type_id = false, cprefix = "BSON_CONTEXT_")]
[Flags]
public enum BsonContextFlags {
    NONE,
    THREAD_SAFE,
    DISABLE_HOST_CACHE,
    DISABLE_PID_CACHE,
    USE_TASK_ID
}
