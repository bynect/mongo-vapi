
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
    
}
