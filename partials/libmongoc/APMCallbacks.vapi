
//TODO http://mongoc.org/libmongoc/current/mongoc_apm_callbacks_t.html

/**
 * mongoc_apm_callbacks_t 
 */

[CCode (cname = "mongoc_apm_callbacks_t", free_function = "mongoc_apm_callbacks_destroy")]
[Compact]
public class APMCallbacks {

    //Constructor
    [CCode (cname = "mongoc_apm_callbacks_new")]
    public APMCallbacks ();

    //Methods
    [CCode (cname = "mongoc_apm_set_command_failed_cb")]
    public bool set_command_failed_cb (APMCommandFailed cb);

    [CCode (cname = "mongoc_apm_set_command_started_cb")]
    public bool set_command_started_cb (APMCommandStarted cb);

    [CCode (cname = "mongoc_apm_set_command_succeeded_cb")]
    public bool set_command_succeeded_cb (APMCommandSucceeded cb); 

    [CCode (cname = "mongoc_apm_set_server_changed_cb")]
    public void set_server_changed_cb (APMServerChanged cb);

    [CCode (cname = "mongoc_apm_set_server_closed_cb")]
    public void set_server_closed_cb (APMServerClosed cb);

    [CCode (cname = "mongoc_apm_set_server_opening_cb")]
    public void set_server_opening_cb (APMServerOpening cb);

    [CCode (cname = "mongoc_apm_set_server_heartbeat_failed_cb")]
    public void set_server_heartbeat_failed_cb (APMServerHeartbeatFailed cb);

    [CCode (cname = "mongoc_apm_set_server_heartbeat_started_cb")]
    public void set_server_heartbeat_started_cb (APMServerHeartbeatStarted cb);

    [CCode (cname = "mongoc_apm_set_server_heartbeat_succeeded_cb")]
    public void set_server_heartbeat_succeeded_cb (APMServerHeartbeatSucceeded cb);

    [CCode (cname = "mongoc_apm_set_topology_changed_cb")]
    public void set_topology_changed_cb (APMTopologyChanged cb);

    [CCode (cname = "mongoc_apm_set_topology_closed_cb")]
    public void set_topology_closed_cb (APMTopologyClosed cb);

    [CCode (cname = "mongoc_apm_set_topology_opening_cb")]
    public void set_topology_opening_cb (APMTopologyOpening cb);

}


[CCode (cname = "mongoc_apm_command_failed_cb_t", free_function = "", has_type_id = false)]
public struct APMCommandFailed {

}

[CCode (cname = "mongoc_apm_command_started_cb_t", free_function = "", has_type_id = false)]
public struct APMCommandStarted {

}

[CCode (cname = "mongoc_apm_command_succeeded_cb_t", free_function = "", has_type_id = false)]
public struct APMCommandSucceeded {

}

[CCode (cname = "mongoc_apm_server_changed_cb_t", free_function = "", has_type_id = false)]
public struct APMServerChanged {

}

[CCode (cname = "mongoc_apm_server_closed_cb_t", free_function = "", has_type_id = false)]
public struct APMServerClosed {

}

[CCode (cname = "mongoc_apm_server_opening_cb_t", free_function = "", has_type_id = false)]
public struct APMServerOpening {

}

[CCode (cname = "mongoc_apm_server_heartbeat_failed_cb_t", free_function = "", has_type_id = false)]
public struct APMServerHeartbeatFailed {

}

[CCode (cname = "mongoc_apm_server_heartbeat_started_cb_t", free_function = "", has_type_id = false)]
public struct APMServerHeartbeatStarted {

}

[CCode (cname = "mongoc_apm_server_heartbeat_succeeded_cb_t", free_function = "", has_type_id = false)]
public struct APMServerHeartbeatSucceeded {

}

[CCode (cname = "mongoc_apm_topology_changed_cb_t", free_function = "", has_type_id = false)]
public struct APMTopologyChanged {

}

[CCode (cname = "mongoc_apm_topology_closed_cb_t", free_function = "", has_type_id = false)]
public struct APMTopologyClosed {

}

[CCode (cname = "mongoc_apm_topology_opening_cb_t", free_function = "", has_type_id = false)]
public struct APMTopologyOpening {

}
