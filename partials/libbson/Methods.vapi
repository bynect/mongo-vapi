
/**
 * bson_get_monotonic_time
 */

[CCode (cname = "bson_get_monotonic_time")]
public int64 bson_get_monotonic_time ();

/**
 * bson_gettimeofday
 */

[CCode (cname = "bson_gettimeofday")]
public int bson_gettimeofday (GLib.TimeVal tv, GLib.TimeZone tz);

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
public void bson_mem_set_vtable (MemVTable vtable);

/**
 * bson_mem_vtable_t
 */

[CCode (cname = "bson_mem_vtable_t", has_type_id = false, free_function = "")]
public struct MemVTable {

}
