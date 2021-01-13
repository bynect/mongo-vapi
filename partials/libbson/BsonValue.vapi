
//FIXME

/**
 * bson_value_t
 */

[CCode (cname = "bson_value_t", free_function = "bson_value_destroy", copy_function = "bson_value_copy", has_type_id = false)]
[Compact]
public struct BsonValue {

    public BsonType value_type;

    //Union
    [CCode (cname = "value.v_oid")]
    public unowned BsonOid v_oid;

    [CCode (cname = "value.v_int64")]
    public unowned int64 v_int64;

    [CCode (cname = "value.v_int32")]
    public unowned int32 v_int32;

    [CCode (cname = "value.v_int8")]
    public unowned int8 v_int8;

    [CCode (cname = "value.v_double")]
    public unowned double v_double;

    [CCode (cname = "value.v_bool")]
    public unowned bool v_bool;

    [CCode (cname = "value.v_datetime")]
    public unowned int64 v_datetime;

    [CCode (cname = "value.v_timestamp")]
    public unowned BsonValueTimeStamp v_timestamp;

    [CCode (cname = "value.v_utf8")]
    public unowned BsonValueUtf8 v_utf8;

    [CCode (cname = "value.v_doc")]
    public unowned BsonValueDoc v_doc;

    [CCode (cname = "value.v_binary")]
    public unowned BsonValueBinary v_binary;

    [CCode (cname = "value.v_regex")]
    public unowned BsonValueRegex v_regex;

    [CCode (cname = "value.v_dbpointer")]
    public unowned BsonValueDbpointer v_dbpointer;

    [CCode (cname = "value.v_code")]
    public unowned BsonValueCode v_code;

    [CCode (cname = "value.v_codewscope")]
    public unowned BsonValueCodewscope v_codewscope;

    [CCode (cname = "value.v_symbol")]
    public unowned BsonValueSymbol v_symbol;

}


public struct BsonValueTimeStamp {
    public unowned uint32 timestamp;
    public unowned uint32 increment;
}


public struct BsonValueUtf8 {
    public unowned uint32 len;
    public unowned string str;
}

public struct BsonValueDoc {
    public unowned uint32 data_len;
    public unowned uint8[] data;
}

public struct BsonValueBinary {
    public unowned uint32 data_len;
    public unowned uint8[] data;
    public unowned BsonSubtype subtype;
}

public struct BsonValueRegex {
    public unowned string regex;
    public unowned string options;
}

public struct BsonValueDbpointer {
    public unowned string collection;
    public unowned uint32 collection_len;
    public unowned BsonOid oid;
}

public struct BsonValueCode {
    public unowned uint32 code_len;
    public unowned string code;
}

public struct BsonValueCodewscope {
    public unowned uint32 code_len;
    public unowned string code;
    public unowned uint32 scope_len;
    public unowned uint8[] scope_data;
}

public struct BsonValueSymbol {
    public unowned uint32 len;
    public unowned string symbol;
}
