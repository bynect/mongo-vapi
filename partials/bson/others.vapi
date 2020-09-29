
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
 * bson_get_monotonic_time
 */

[CCode (cname = "bson_get_monotonic_time")]
public int64 get_monotonic_time ();

/**
 * bson_gettimeofday
 */

[CCode (cname = "bson_gettimeofday")]
public int gettimeofday (GLib.TimeVal tv, GLib.TimeZone tz);

/**
 * bson_check_version
 */

[CCode (cname = "bson_check_version")]
public bool bson_check_version (int required_major, int required_minor, int required_micro);

/**
 * bson_get_version
 */

[CCode (cname = "bson_get_version")]
public string bson_get_version ();

/**
 * bson_get_major_version
 */

[CCode (cname = "bson_get_major_version")]
public int bson_get_major_version ();

/**
 * bson_get_micro_version
 */

[CCode (cname = "bson_get_micro_version")]
public int bson_get_micro_version ();

/**
 * bson_get_minor_version
 */

[CCode (cname = "bson_get_minor_version")]
public int bson_get_minor_version ();

/**
 * bson_mem_restore_vtable
 */

[CCode (cname = "bson_mem_restore_vtable")]
public void bson_mem_restore_vtable ();

/**
 * bson_mem_set_vtable
 */

[CCode (cname = "bson_mem_set_vtable")]
public void bson_mem_set_vtable (BsomMemVTable vtable);

/**
 * bson_mem_vtable_t
 */

[CCode (cname = "bson_mem_vtable_t", has_type_id = false, free_function = "")]
public struct BsomMemVTable {

}
