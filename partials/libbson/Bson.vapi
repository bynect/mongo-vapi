
/**
 * bson_t
 */

[CCode (cname = "bson_t", free_function = "bson_destroy", copy_function = "bson_copy", has_type_id = false)]
[Compact]
public class Bson {

    //Constructors
    [CCode (cname = "bson_new")]
    public Bson ();

    //FIXME
    //  [CCode (cname = "bson_new_from_buffer")]
    //  public Bson.from_buffer (ref uint8 buf, size_t buf_len, ReallocFunc func);

    [CCode (cname = "bson_new_from_data")]
    public Bson.from_data (uint8 data, size_t length);

    [CCode (cname = "bson_new_from_json")]
    public Bson.from_json (uint8 data, ssize_t length, BsonError? error);

    [CCode (cname = "bson_sized_new")]
    public Bson.sized (size_t size);

    //Methods
    [CCode (cname = "bson_append_array")]
    public bool append_array (string key, int key_length, Bson array);

    [CCode (cname = "bson_append_array_begin")]
    public bool append_array_begin (string key, int key_length, Bson child);

    [CCode (cname = "bson_append_array_end")]
    public bool append_array_end (Bson child);

    [CCode (cname = "bson_append_binary")]
    public bool append_binary (string key, int key_length, BsonSubtype subtype, uint8? binary, uint32? length);

    [CCode (cname = "bson_append_bool")]
    public bool append_bool (string key, int key_length, bool value);

    [CCode (cname = "bson_append_code")]
    public bool append_code (string key, int key_length, string js);

    [CCode (cname = "bson_append_code_with_scope")]
    public bool append_code_with_scope (string key, int key_length, string js, Bson? scope);

    [CCode (cname = "bson_append_date_time")]
    public bool append_date_time (string key, int key_length, int64 value);

    [CCode (cname = "bson_append_dbpointer")]
    public bool append_dbpointer (string key, int key_length, string collection, BsonOid oid);

    [CCode (cname = "bson_append_decimal128")]
    public bool append_decimal128 (string key, int key_length, string collection, BsonDecimal128 value);
    
    [CCode (cname = "bson_append_document")]
    public bool append_document (string key, int key_length, Bson value);

    [CCode (cname = "bson_append_document_begin")]
    public bool append_document_begin (string key, int key_length, Bson child);

    [CCode (cname = "bson_append_document_end")]
    public bool append_document_end (Bson child);

    [CCode (cname = "bson_append_double")]
    public bool append_double (string key, int key_length, double value);

    [CCode (cname = "bson_append_int32")]
    public bool append_int32 (string key, int key_length, int32 value);

    [CCode (cname = "bson_append_int64")]
    public bool append_int64 (string key, int key_length, int64 value);

    [CCode (cname = "bson_append_iter")]
    public bool append_iter (string key, int key_length, BsonIter iter);

    [CCode (cname = "bson_append_maxkey")]
    public bool append_maxkey (string key, int key_length);

    [CCode (cname = "bson_append_minkey")]
    public bool append_minkey (string key, int key_length);

    [CCode (cname = "bson_append_now_utc")]
    public bool append_now_utc (string key, int key_length);

    [CCode (cname = "bson_append_null")]
    public bool append_null (string key, int key_length);

    [CCode (cname = "bson_append_oid")]
    public bool append_oid (string key, int key_length, BsonOid iter);

    [CCode (cname = "bson_append_regex")]
    public bool append_regex (string key, int key_length, string regex, string options);

    [CCode (cname = "bson_append_regex_w_len")]
    public bool append_regex_with_length (string key, int key_length, string regex, int regex_length, string options);

    [CCode (cname = "bson_append_symbol")]
    public bool append_symbol (string key, int key_length, string? value, int length);

    [CCode (cname = "bson_append_time_t")]
    public bool append_time_t (string key, int key_length, time_t value);

    [CCode (cname = "bson_append_timestamp")]
    public bool append_timestamp (string key, int key_length, uint32 timestamp, uint32 increment);

    //TODO: Check TimeVal vs DateTime
    [CCode (cname = "bson_append_timeval")]
    public bool append_timeval (string key, int key_length, GLib.TimeVal value);

    [CCode (cname = "bson_append_undefined")]
    public bool append_undefined (string key, int key_length);

    [CCode (cname = "bson_append_utf8")]
    public bool append_utf8 (string key, int key_length, string value, int length);

    [CCode (cname = "bson_append_value")]
    public bool append_value (string key, int key_length, BsonValue value);

    [CCode (cname = "bson_array_as_json")]
    public string? array_as_json (int? length);

    [CCode (cname = "bson_as_canonical_extended_json")]
    public string? as_canonical_extended_json (int? length);

    [CCode (cname = "bson_as_json")]
    public string? as_json (int? length);

    [CCode (cname = "bson_as_relaxed_extended_json")]
    public string? as_relaxed_extended_json (int? length);

    [CCode (cname = "bson_compare")]
    public int compare (Bson other);

    [CCode (cname = "bson_concat")]
    public bool concat (Bson dest);

    [CCode (cname = "bson_copy_to")]
    public void copy_to (Bson dest);

    [CCode (cname = "bson_copy_to_excluding_noinit")]
    public void copy_to_excluding (Bson dest, string exclude);

    [CCode (cname = "bson_copy_to_excluding_noinit")]
    public void copy_to_excluding_va (Bson dest, string exclude, va_list args);

    [CCode (cname = "bson_count_keys")]
    public int32 count_keys ();

    [CCode (cname = "bson_destroy_with_steal")]
    public uint8 destroy_with_steal (bool steal, uint32 length);

    [CCode (cname = "bson_equal")]
    public bool equal (Bson other);

    [CCode (cname = "bson_get_data")]
    public uint8 get_data ();

    [CCode (cname = "bson_has_field")]
    public bool has_field (string key);

    [CCode (cname = "bson_init")]
    public void init ();

    [CCode (cname = "bson_init_from_json")]
    public bool init_from_json (string data, ssize_t size, BsonError? error);

    [CCode (cname = "bson_init_static")]
    public bool init_static (uint8 data, size_t length);

    [CCode (cname = "bson_reinit")]
    public void reinit ();

    [CCode (cname = "bson_reserve_buffer")]
    public uint8 reserve_buffer (uint32 size);

    [CCode (cname = "bson_steal")]
    public bool steal (Bson src);

    [CCode (cname = "bson_validate")]
    public bool validate (ValidateFlags flags, size_t offset);

    [CCode (cname = "bson_validate_with_error")]
    public bool validate_with_error (ValidateFlags flags, BsonError? error);

}
