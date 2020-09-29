/**
 * bson_string_t
 */

[CCode (cname = "bson_string_t", free_function = "", has_type_id = false)]
[Compact]
public class BsonString {
    
    //Constructor
    [CCode (cname = "bson_string_new")]
    public BsonString (string str);

    //Methods
    [CCode (cname = "bson_string_append")]
    public void append (string str);

    [CCode (cname = "bson_string_append_c")]
    public void append_char (char c);

    [CCode (cname = "bson_string_append_printf")]
    public void append_printf (string format);

    [CCode (cname = "bson_string_append_unichar")]
    public void append_unichar (unichar c);

    [CCode (cname = "bson_string_free")]
    public string free (bool free_segment);

    [CCode (cname = "bson_string_truncate")]
    public void truncate (uint32 len);

}

/**
 * bson_unichar_t
 */

[CCode (cname = "bson_unichar_t")]
[SimpleType]
[IntegerType (rank = 7)]
public struct BsonUnichar {

}

/**
 * Various chars and string methods
 */

//FIXME
//  [CCode (cname = "bson_ascii_strtoll")]
//  public int64 ascii_strtoll (string str, ref char? endptr, int base);

[CCode (cname = "bson_isspace")]
public bool is_space (char c);

[CCode (cname = "bson_snprintf")]
public int snprintf (string str, size_t size, string format);

[CCode (cname = "bson_strcasecmp")]
public int strcasecmp (string str, string str2);

[CCode (cname = "bson_strdup")]
public string? strdup (string str);

[CCode (cname = "bson_strdup_printf")]
public string? strdup_printf (string format);

[CCode (cname = "bson_strdupv_printf")]
public string strdupv_printf (string format, va_list args);

[CCode (cname = "bson_strfreev")]
public void strfreev (string[] str);

[CCode (cname = "bson_strncpy")]
public void strncpy (string dst, string src, size_t size);

[CCode (cname = "bson_strndup")]
public void strndup (string str, size_t size);

[CCode (cname = "bson_strnlen")]
public size_t strnlen (string dst, size_t max);

//FIXME
//  [CCode (cname = "bson_uint32_to_string")]
//  public size_t uint32_to_string (uint32 value, ref string strptr, string str, size_t size);

[CCode (cname = "bson_utf8_escape_for_json")]
public string utf8_escape_for_json (string utf8, ssize_t utf8_len);

[CCode (cname = "bson_utf8_from_unichar")]
public void utf8_from_unichar (BsonUnichar unich, string utf8, uint32 len);

[CCode (cname = "bson_utf8_get_char")]
public BsonUnichar utf8_get_char (string str);

[CCode (cname = "bson_utf8_next_char")]
public string utf8_next_char (string str);

[CCode (cname = "bson_utf8_validate")]
public bool utf8_validate (string utf8, size_t utf8_len, bool allow_null);

[CCode (cname = "bson_vsnprintf")]
public int vsnprintf (string str, size_t size, string format, va_list ap);
