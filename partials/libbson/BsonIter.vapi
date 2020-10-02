
/**
 * bson_iter_t
 */

[CCode (cname = "bson_iter_t", free_function = "bson_iter_destroy", copy_function = "bson_iter_bson_copy", has_type_id = false)]
[Compact]
public class BsonIter {

    //Methods    
    [CCode (cname = "bson_iter_array")]
    public void array (uint32 array_len, ref uint8 array);

    [CCode (cname = "bson_iter_as_bool")]
    public bool as_bool ();

    [CCode (cname = "bson_iter_as_double")]
    public bool as_double ();
    
    [CCode (cname = "bson_iter_as_int64")]
    public int64 as_int64 ();

    [CCode (cname = "bson_iter_binary")]
    public void binary (BsonSubtype? subtype, uint32 binary_len, ref uint8 binary);

    [CCode (cname = "bson_iter_bool")]
    public bool bool ();

    [CCode (cname = "bson_iter_code")]
    public string code (uint32? length);

    [CCode (cname = "bson_iter_codewscope")]
    public string codewscope (uint32 length, uint32 scope_len, ref uint8? scope);

    [CCode (cname = "bson_iter_date_time")]
    public int64 date_time ();

    [CCode (cname = "bson_iter_decimal128")]
    public bool decimal128 (BsonDecimal128 dec);

    [CCode (cname = "bson_iter_document")]
    public void document (uint32 document_len, ref uint8 document);

    [CCode (cname = "bson_iter_double")]
    public double double ();

    [CCode (cname = "bson_iter_dup_utf8")]
    public string dup_utf8 (uint32? length);

    [CCode (cname = "bson_iter_find")]
    public bool find (string key);

    [CCode (cname = "bson_iter_find_case")]
    public bool find_case (string key);

    [CCode (cname = "bson_iter_find_descendant")]
    public bool find_descendant (string dotkey, BsonIter descendant);

    [CCode (cname = "bson_iter_find_w_len")]
    public bool find_w_len (string key, int keylen);

    [CCode (cname = "bson_iter_init")]
    public bool init (Bson bson);

    [CCode (cname = "bson_iter_init_find")]
    public bool init_find (Bson bson, string key);

    [CCode (cname = "bson_iter_init_find_case")]
    public bool init_find_case (Bson bson, string key);

    [CCode (cname = "bson_iter_init_find_w_len")]
    public bool init_find_w_len (Bson bson, string key, int keylen);

    [CCode (cname = "bson_iter_init_from_data")]
    public bool init_from_data (uint8 data, size_t length);

    [CCode (cname = "bson_iter_init_from_data_at_offset")]
    public bool init_from_data_at_offset (uint8 data, size_t length, uint32 offset, uint32 keylen);

    [CCode (cname = "bson_iter_int32")]
    public int32 iter_int32 ();

    [CCode (cname = "bson_iter_int64")]
    public int64 iter_int64 ();

    [CCode (cname = "bson_iter_key")]
    public string iter_key ();

    [CCode (cname = "bson_iter_key_len")]
    public uint32 key_len ();

    [CCode (cname = "bson_iter_next")]
    public bool next ();

    [CCode (cname = "bson_iter_offset")]
    public uint32 offset ();

    [CCode (cname = "bson_iter_oid")]
    public BsonOid oid ();

    [CCode (cname = "bson_iter_overwrite_bool")]
    public void overwrite_bool (bool value);

    [CCode (cname = "bson_iter_overwrite_date_time")]
    public void overwrite_date_time (int64 value);

    [CCode (cname = "bson_iter_overwrite_decimal128")]
    public void overwrite_decimal128 (BsonDecimal128 value);

    [CCode (cname = "bson_iter_overwrite_double")]
    public void overwrite_double (double value);

    [CCode (cname = "bson_iter_overwrite_int32")]
    public void overwrite_int32 (int32 value);

    [CCode (cname = "bson_iter_overwrite_int64")]
    public void overwrite_int64 (int64 value);

    [CCode (cname = "bson_iter_overwrite_oid")]
    public void overwrite_oid (BsonOid oid);

    [CCode (cname = "bson_iter_overwrite_timestamp")]
    public void overwrite_timestamp (uint32 timestamp, uint32 increment);

    [CCode (cname = "bson_iter_recurse")]
    public bool recurse (BsonIter child);

    //XXX
    [CCode (cname = "bson_iter_regex")]
    public string regex ();

    [CCode (cname = "bson_iter_symbol")]
    public string symbol (uint32 length);

    [CCode (cname = "bson_iter_time_t")]
    public time_t time_t ();

    [CCode (cname = "bson_iter_timestamp")]
    public void timestamp (uint32 timestamp, uint32 increment);
    
    [CCode (cname = "bson_iter_timeval")]
    public void timeval (GLib.TimeVal tv);

    [CCode (cname = "bson_iter_type")]
    public BsonType type ();

    [CCode (cname = "bson_iter_utf8")]
    public string utf8 (uint32 length);

    [CCode (cname = "bson_iter_value")]
    public BsonValue value ();

    //XXX
    [CCode (cname = "bson_iter_visit_all")]
    public bool visit_all (BsonVisitor visitor);

}
