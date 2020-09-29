
/**
 * bson_error_t
 */

[CCode (cname = "bson_error_t", free_function = "", has_type_id = false)]
public struct BsonError {

    [CCode (cname = "bson_set_error")]
    public void set_error (uint32 domain, uint32 code, string format);

    [CCode (cname = "bson_strerror_r")]
    public string strerror (int err_code, string buf, size_t buflen);

}

/**
 * bson_json_error_code_t
 */

[CCode (cname = "bson_json_error_code_t", has_type_id = false, cprefix = "BSON_JSON_ERROR_READ_")]
[Flags]
public enum JsonErrorCode {
    CORRUPT_JS,
    INVALID_PARAM,
    CB_FAILURE
}
