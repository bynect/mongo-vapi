
/**
 * mongoc_uri_t
 */

[CCode (cname = "mongoc_uri_t", free_function = "mongoc_uri_destroy", copy_function = "mongoc_uri_copy")]
[Compact]
public class Uri {

    //Costructors
    [CCode (cname = "mongoc_uri_new")]
    public Uri (string uri);

    [CCode (cname = "mongoc_uri_new_with_error")]
    public Uri.with_error (string uri, BsonError? error);

    [CCode (cname = "mongoc_uri_new_for_host_port")]
    public Uri.for_host_port (string hostname, uint16 port);

    //Methods
    [CCode (cname = "mongoc_uri_get_auth_mechanism")]
    public string? get_auth_mechanism ();

    [CCode (cname = "mongoc_uri_get_auth_source")]
    public string? get_auth_source ();

    [CCode (cname = "mongoc_uri_get_compressors")]
    public Bson get_compressors ();

    [CCode (cname = "mongoc_uri_get_database")]
    public string? get_database ();

    [CCode (cname = "mongoc_uri_get_hosts")]
    public HostList? get_hosts ();

    //XXX: Needs uninitialized BSON
    [CCode (cname = "mongoc_uri_get_mechanism_properties")]
    public bool get_mechanism_properties (out Bson properties);

    [CCode (cname = "mongoc_uri_get_option_as_bool")]
    public bool get_option_as_bool (string option, bool fallback);

    [CCode (cname = "mongoc_uri_get_option_as_int32")]
    public int32 get_option_as_int32 (string option, int32 fallback);

    [CCode (cname = "mongoc_uri_get_option_as_int64")]
    public int64 get_option_as_int64 (string option, int64 fallback);

    [CCode (cname = "mongoc_uri_get_option_as_utf8")]
    public string get_option_as_utf8 (string option, string fallback);

    [CCode (cname = "mongoc_uri_get_options")]
    public Bson? get_options ();

    [CCode (cname = "mongoc_uri_get_password")]
    public string? get_password ();

    [CCode (cname = "mongoc_uri_get_read_prefs_t")]
    public ReadPrefs? get_read_prefs ();

    [CCode (cname = "mongoc_uri_get_read_concern")]
    public ReadConcern? get_read_concern ();

    [CCode (cname = "mongoc_uri_get_replice_set")]
    public string? get_replice_set ();

    [CCode (cname = "mongoc_uri_get_string")]
    public string get_string ();

    [CCode (cname = "mongoc_uri_get_tls")]
    public bool get_tls ();

    [CCode (cname = "mongoc_uri_get_username")]
    public string? get_username ();

    [CCode (cname = "mongoc_uri_get_write_concern")]
    public WriteConcern? get_write_concern ();

    [CCode (cname = "mongoc_uri_has_option")]
    public bool has_option (string option);

    [CCode (cname = "mongoc_uri_option_is_bool")]
    public bool option_is_bool (string option);

    [CCode (cname = "mongoc_uri_option_is_int32")]
    public bool option_is_int32 (string option);

    [CCode (cname = "mongoc_uri_option_is_int64")]
    public bool option_is_int64 (string option);

    [CCode (cname = "mongoc_uri_option_is_utf8")]
    public bool option_is_utf8 (string option);

    [CCode (cname = "mongoc_uri_set_auth_mechanism")]
    public bool set_auth_mechanism (string value);

    [CCode (cname = "mongoc_uri_set_auth_source")]
    public bool set_auth_source (string value);

    [CCode (cname = "mongoc_uri_set_compressors")]
    public bool set_compressors (string value);

    [CCode (cname = "mongoc_uri_set_database")]
    public bool set_database (string database);

    [CCode (cname = "mongoc_uri_set_mechanism_properties")]
    public bool set_mechanism_properties (Bson properties);

    [CCode (cname = "mongoc_uri_set_option_as_bool")]
    public bool set_option_as_bool (string option, bool value);

    [CCode (cname = "mongoc_uri_set_option_as_int32")]
    public bool set_option_as_int32 (string option, int32 value);

    [CCode (cname = "mongoc_uri_set_option_as_int64")]
    public bool set_option_as_int64 (string option, int64 value);

    [CCode (cname = "mongoc_uri_set_option_as_utf8")]
    public bool set_option_as_utf8 (string option, string value);

    [CCode (cname = "mongoc_uri_set_password")]
    public bool set_password (string password);

    [CCode (cname = "mongoc_uri_set_read_concern")]
    public void set_read_concern (ReadConcern read_concern);

    [CCode (cname = "mongoc_uri_set_read_prefs")]
    public void set_read_prefs (ReadPrefs read_prefs);

    [CCode (cname = "mongoc_uri_set_username")]
    public bool set_username (string username);

    [CCode (cname = "mongoc_uri_set_write_concern")]
    public void set_write_concern (WriteConcern write_concern);

    [CCode (cname = "mongoc_uri_unescape")]
    public static string? unescape (string escaped);

}
