
//FIXME

/**
 * bson_visitor_t
 */

[CCode (cname = "bson_visitor_t", free_function = "", has_type_id = false)]
public struct BsonVisitor<T> {

    public unowned VisitBeforeCallback visit_before;

    public unowned VisitAfterCallback visit_after;

    public unowned VisitCorruptCallback visit_corrupt;

    public unowned VisitDoubleCallback visit_double;

    public unowned VisitUtf8Callback visit_utf8;

    public unowned VisitDocumentCallback visit_document;

    public unowned VisitArrayCallback visit_array;

    public unowned VisitBinaryCallback visit_binary;

    public unowned VisitUndefinedCallback visit_undefined;

    public unowned VisitOidCallback visit_oid;

    public unowned VisitBoolCallback visit_bool;

    public unowned VisitDateTimeCallback visit_date_time;

    public unowned VisitNullCallback visit_null;

    public unowned VisitRegexCallback visit_regex;

    public unowned VisitDbpointerCallback visit_dbpointer;

    public unowned VisitCodeCallback visit_code;

    public unowned VisitSymbolCallback visit_symbol;

    public unowned VisitCodewscopeCallback visit_codewscope;

    public unowned VisitInt32Callback visit_int32;

    public unowned VisitTimestampCallback visit_timestamp;

    public unowned VisitInt64Callback visit_int64;

    public unowned VisitMaxkeyCallback visit_maxkey;

    public unowned VisitMinkeyCallback visit_minkey;

    public unowned VisitUnsupportedTypeCallback visit_unsupported_type;

    public unowned VisitDecimal128Callback visit_decimal128;

}


[CCode (simple_generics = true)]
public delegate bool VisitBeforeCallback<T> (BsonIter iter, string key, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitAfterCallback<T> (BsonIter iter, string key, T? data);

[CCode (simple_generics = true)]
public delegate void VisitCorruptCallback<T> (BsonIter iter, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitDoubleCallback<T> (BsonIter iter, string key, double v_double, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitUtf8Callback<T> (BsonIter iter, string key, size_t v_utf8_len, string v_utf8, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitDocumentCallback<T> (BsonIter iter, string key, Bson v_document, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitArrayCallback<T> (BsonIter iter, string key, Bson v_array, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitBinaryCallback<T> (BsonIter iter, string key, BsonSubtype v_subtype, size_t v_binary_len, uint8[] v_binary, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitUndefinedCallback<T> (BsonIter iter, string key, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitOidCallback<T> (BsonIter iter, string key, BsonOid v_oid, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitBoolCallback<T> (BsonIter iter, string key, bool v_bool, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitDateTimeCallback<T> (BsonIter iter, string key, int64 msec_since_epoch, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitNullCallback<T> (BsonIter iter, string key, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitRegexCallback<T> (BsonIter iter, string key, string v_regex, string v_options, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitDbpointerCallback<T> (BsonIter iter, string key, size_t v_collection_len, string v_collection, BsonOid v_oid, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitCodeCallback<T> (BsonIter iter, string key, size_t v_code_len, string v_code, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitSymbolCallback<T> (BsonIter iter, string key, size_t v_symbol_len, string v_symbol, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitCodewscopeCallback<T> (BsonIter iter, string key, size_t v_code_len, string v_code, Bson v_scope, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitInt32Callback<T> (BsonIter iter, string key, int32 v_int32, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitTimestampCallback<T> (BsonIter iter, string key, uint32 v_timestamp, uint32 v_increment, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitInt64Callback<T> (BsonIter iter, string key, int64 v_int64, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitMaxkeyCallback<T> (BsonIter iter, string key, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitMinkeyCallback<T> (BsonIter iter, string key, T? data);

[CCode (simple_generics = true)]
public delegate void VisitUnsupportedTypeCallback<T> (BsonIter iter, string key, uint32 type_code, T? data);

[CCode (simple_generics = true)]
public delegate bool VisitDecimal128Callback<T> (BsonIter iter, string key, BsonDecimal128 v_decimal128, T? data);
