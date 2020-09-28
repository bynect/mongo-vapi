
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
 * bson_decimal128_t
 */

[CCode (cname = "bson_decimal128_t", has_type_id = false, free_function = "")]
public struct BsonDecimal128 {

    [CCode (cname = "bson_decimal128_from_string")]
    public static bool from_string (string str, BsonDecimal128 dec); 

    [CCode (cname = "bson_decimal128_from_string_w_len")]
    public static bool from_string_with_length (string str, int length, BsonDecimal128 dec); 

    [CCode (cname = "bson_decimal128_to_string")]
    public void to_string (string str);

}

/**
 * bson_oid_t
 */

[CCode (cname = "bson_oid_t", has_type_id = false, free_function = "", copy_function = "bson_oid_copy")]
public struct BsonOid {

    [CCode (cname = "bson_oid_compare")]
    public int compare (BsonOid oid);

    [CCode (cname = "bson_oid_equal")]
    public bool equal (BsonOid oid);

    [CCode (cname = "bson_oid_get_time_t")]
    public time_t get_time_t (BsonOid oid);

    [CCode (cname = "bson_oid_hash")]
    public uint32 hash (BsonOid oid);

    [CCode (cname = "bson_oid_init")]
    public void init (BsonContext? ctx);

    [CCode (cname = "bson_oid_init_from_data")]
    public void init_from_data (uint8 data);

    [CCode (cname = "bson_oid_init_from_string")]
    public void init_from_string (string str);
    
    [CCode (cname = "bson_oid_is_valid")]
    public static bool is_valid (string str, size_t length);

    [CCode (cname = "bson_oid_to_string")]
    public void to_string (string str);

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

/**
 * bson_context_flags_t
 */

[CCode (cname = "bson_context_t", free_function = "bson_context_destroy", has_type_id = false)]
public struct BsonContext {

    [CCode (cname = "bson_context_new")]
    public BsonContext (BsonContextFlags flags);

    [CCode (cname = "bson_context_get_default")]
    public BsonContext.get_default ();

}

/**
 * bson_value_t
 */

[CCode (cname = "bson_value_t", free_function = "bson_value_destroy", copy_function = "bson_value_copy", has_type_id = false)]
public struct BsonValue {

}
