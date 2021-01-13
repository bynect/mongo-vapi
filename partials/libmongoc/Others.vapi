
/**
 * mongoc_init
 */

[CCode (cname = "mongoc_init")]
public void init ();

/**
 * mongoc_cleanup
 */

[CCode (cname = "mongoc_cleanup")]
public void cleanup ();

/**
 * mongoc_rand_add
 */

[CCode (cname = "mongoc_rand_add")]
public void rand_add (void *buf, int num, double entropy);

/**
 * mongoc_rand_seed
 */

[CCode (cname = "mongoc_rand_seed")]
public void rand_seed (void *buf, int num);

/**
 * mongoc_rand_status
 */

[CCode (cname = "mongoc_rand_status")]
public int rand_status ();

/**
 * mongoc_iovec_t
 */

[CCode (cname = "mongoc_iovec_t", has_type_id = false)]
public struct IOVec {

}

/**
* mongoc_host_list_t
*/

[CCode (cname = "mongoc_host_list_t", has_type_id = false)]
public struct HostList {

}

/**
 * mongoc_server_description_t
 */

[CCode (cname = "mongoc_server_description_t", free_function = "mongoc_server_description_destroy")]
[Compact]
public class ServerDescription {

    //Methods
    [CCode (cname = "mongoc_server_description_host")]
    public HostList host ();

    [CCode (cname = "mongoc_server_description_id")]
    public uint32 id ();

    [CCode (cname = "mongoc_server_description_ismaster")]
    public Bson ismaster ();

    [CCode (cname = "mongoc_server_description_last_update_time")]
    public int64 last_update_time ();

    [CCode (cname = "mongoc_server_description_round_trip_time")]
    public int64 round_trip_time ();

    [CCode (cname = "mongoc_server_description_type")]
    public string type ();

}

/**
 * mongoc_topology_description_t
 */

[CCode (cname = "mongoc_topology_description_t", has_type_id = false)]
public struct TopologyDescription {

    //Methods
    [CCode (cname = "mongoc_topology_description_get_servers")]
    public ServerDescription[]? get_servers (size_t n);

    [CCode (cname = "mongoc_topology_description_has_readable_server")]
    public bool has_readable_server (ReadPrefs? prefs);

    [CCode (cname = "mongoc_topology_description_has_writable_server")]
    public bool has_writable_server ();

    [CCode (cname = "mongoc_topology_description_type")]
    public string type ();

}
