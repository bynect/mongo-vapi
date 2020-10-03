
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
 * mongoc_iovec_t
 */

[CCode (cname = "mongoc_iovec_t")]
public struct IOVec {

}

/**
* mongoc_host_list_t 
*/

[CCode (cname = "mongoc_host_list_t")]
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
