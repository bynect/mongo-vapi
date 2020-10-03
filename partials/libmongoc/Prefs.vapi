
/**
 * mongoc_read_mode_t
 */

[CCode (cname = "mongoc_read_mode_t", cprefix = "MONGOC_READ_", has_type_id = false)]
[Flags]
public enum ReadMode {
    PRIMARY,
    SECONDARY,
    PRIMARY_PREFERRED,
    SECONDARY_PREFERRED,
    NEAREST
}

/**
 * mongoc_read_prefs_t
 */

[CCode (cname = "mongoc_read_prefs_t", free_function = "mongoc_read_prefs_destroy")]
[Compact]
public class ReadPrefs {

    //Constructor
    [CCode (cname = "mongoc_read_prefs_new")]
    public ReadPrefs (ReadMode mode);

    //Methods
    [CCode (cname = "mongoc_read_prefs_add_tag")]
    public void add_tag (Bson tag);

    [CCode (cname = "mongoc_read_prefs_get_hedge")]
    public Bson? get_hedge ();

    [CCode (cname = "mongoc_read_prefs_get_max_staleness_seconds")]
    public int64 get_max_staleness_seconds ();

    [CCode (cname = "mongoc_read_prefs_get_mode")]
    public ReadMode get_mode ();

    [CCode (cname = "mongoc_read_prefs_get_tags")]
    public Bson? get_tags ();

    [CCode (cname = "mongoc_read_prefs_is_valid")]
    public bool is_valid ();

    [CCode (cname = "mongoc_read_prefs_set_hedge")]
    public void set_hedge (Bson hedge);

    [CCode (cname = "mongoc_read_prefs_set_max_staleness_seconds")]
    public void set_max_staleness_seconds (int64 max_staleness_seconds);

    [CCode (cname = "mongoc_read_prefs_set_mode")]
    public void set_mode (ReadMode read_mode);

    [CCode (cname = "mongoc_read_prefs_set_tags")]
    public void set_tags (Bson tags);

}

/**
* mongoc_read_concern_t 
*/

[CCode (cname = "mongoc_read_concern_t", free_function = "mongoc_read_concern_destroy")]
[Compact]
public class ReadConcern {

    //Constructor
    [CCode (cname = "mongoc_read_concern_new")]
    public ReadConcern ();

    //Methods
    [CCode (cname = "mongoc_read_concern_append")]
    public bool append (Bson? opts);

    [CCode (cname = "mongoc_read_concern_get_level")]
    public string? get_level ();

    [CCode (cname = "mongoc_read_concern_set_level")]
    public bool set_level (string level);

    [CCode (cname = "mongoc_read_concern_is_default")]
    public bool is_default ();

}
    
/**
* mongoc_write_concern_t 
*/

[CCode (cname = "mongoc_write_concern_t", free_function = "mongoc_write_concern_destroy")]
[Compact]
public class WriteConcern {

    //Constructor
    [CCode (cname = "mongoc_write_concern_new")]
    public WriteConcern ();

    //Methods
    [CCode (cname = "mongoc_write_concern_append")]
    public bool append (Bson command);

    [CCode (cname = "mongoc_write_concern_get_journal")]
    public bool get_journal ();

    [CCode (cname = "mongoc_write_concern_get_w")]
    public int32 get_w ();

    [CCode (cname = "mongoc_write_concern_get_wmajority")]
    public bool get_wmajority ();

    [CCode (cname = "mongoc_write_concern_get_wtag")]
    public string? get_wtag ();

    [CCode (cname = "mongoc_write_concern_get_wtimeout")]
    public int32 get_wtimeout ();

    [CCode (cname = "mongoc_write_concern_get_wtimeout_int64")]
    public int64 get_wtimeout_int64 ();

    [CCode (cname = "mongoc_write_concern_is_acknowledged")]
    public bool is_acknowledged ();

    [CCode (cname = "mongoc_write_concern_is_default")]
    public bool is_default ();

    [CCode (cname = "mongoc_write_concern_is_valid")]
    public bool is_valid ();

    [CCode (cname = "mongoc_write_concern_set_w")]
    public void set_w (int32 w);

    [CCode (cname = "mongoc_write_concern_set_wmajority")]
    public void set_wmajority (int32 wtimeout_msec);

    [CCode (cname = "mongoc_write_concern_wset_wtag")]
    public void wset_wtag (string tag);

    [CCode (cname = "mongoc_write_concern_set_wtimeout")]
    public void set_wtimeout (int32 wtimeout_msec);

    [CCode (cname = "mongoc_write_concern_set_wtimeout_int64")]
    public void set_wtimeout_int64 (int64 wtimeout_msec);

}
