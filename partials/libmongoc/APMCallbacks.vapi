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
    public bool set_command_failed_cb (APMCommandFailedCallback cb);

    [CCode (cname = "mongoc_apm_set_command_started_cb")]
    public bool set_command_started_cb (APMCommandStartedCallback cb);

    [CCode (cname = "mongoc_apm_set_command_succeeded_cb")]
    public bool set_command_succeeded_cb (APMCommandSucceededCallback cb);

    [CCode (cname = "mongoc_apm_set_server_changed_cb")]
    public void set_server_changed_cb (APMServerChangedCallback cb);

    [CCode (cname = "mongoc_apm_set_server_closed_cb")]
    public void set_server_closed_cb (APMServerClosedCallback cb);

    [CCode (cname = "mongoc_apm_set_server_opening_cb")]
    public void set_server_opening_cb (APMServerOpeningCallback cb);

    [CCode (cname = "mongoc_apm_set_server_heartbeat_failed_cb")]
    public void set_server_heartbeat_failed_cb (APMServerHeartbeatFailedCallback cb);

    [CCode (cname = "mongoc_apm_set_server_heartbeat_started_cb")]
    public void set_server_heartbeat_started_cb (APMServerHeartbeatStartedCallback cb);

    [CCode (cname = "mongoc_apm_set_server_heartbeat_succeeded_cb")]
    public void set_server_heartbeat_succeeded_cb (APMServerHeartbeatSucceededCallback cb);

    [CCode (cname = "mongoc_apm_set_topology_changed_cb")]
    public void set_topology_changed_cb (APMTopologyChangedCallback cb);

    [CCode (cname = "mongoc_apm_set_topology_closed_cb")]
    public void set_topology_closed_cb (APMTopologyClosedCallback cb);

    [CCode (cname = "mongoc_apm_set_topology_opening_cb")]
    public void set_topology_opening_cb (APMTopologyOpeningCallback cb);

}

/**
 * mongoc_apm_command_failed_cb_t
 */

[CCode (cname = "mongoc_apm_command_failed_cb_t", has_target = false)]
public delegate void APMCommandFailedCallback (APMCommandFailed event);

/**
 * mongoc_apm_command_failed_t
 */

[CCode (cname = "mongoc_apm_command_failed_t", free_function = "", has_type_id = false)]
public struct APMCommandFailed {

    //Methods
    [CCode (cname = "mongoc_apm_command_failed_get_command_name")]
    public string get_command_name ();

    [CCode (cname = "mongoc_apm_command_failed_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_command_failed_get_duration")]
    public int64 get_duration ();

    [CCode (cname = "mongoc_apm_command_failed_get_error")]
    public void get_error (out BsonError? error);

    [CCode (cname = "mongoc_apm_command_failed_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_command_failed_get_operation_id")]
    public int64 get_operation_id ();

    [CCode (cname = "mongoc_apm_command_failed_get_reply")]
    public Bson get_reply ();

    [CCode (cname = "mongoc_apm_command_failed_get_request_id")]
    public int64 get_request_id ();

    [CCode (cname = "mongoc_apm_command_failed_get_server_id")]
    public int32 get_server_id ();

}

/**
 * mongoc_apm_command_started_cb_t
 */

[CCode (cname = "mongoc_apm_command_started_cb_t", has_target = false)]
public delegate void APMCommandStartedCallback (APMCommandStarted event);

/**
 * mongoc_apm_command_failed_t
 */

[CCode (cname = "mongoc_apm_command_started_t", free_function = "", has_type_id = false)]
public struct APMCommandStarted {

    //Methods
    [CCode (cname = "mongoc_apm_command_started_get_command")]
    public Bson get_command ();

    [CCode (cname = "mongoc_apm_command_started_get_command_name")]
    public string get_command_name ();

    [CCode (cname = "mongoc_apm_command_started_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_command_started_get_database_name")]
    public string get_database_name ();

    [CCode (cname = "mongoc_apm_command_started_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_command_started_get_operation_id")]
    public int64 get_operation_id ();

    [CCode (cname = "mongoc_apm_command_started_get_request_id")]
    public int64 get_request_id ();

    [CCode (cname = "mongoc_apm_command_started_get_server_id")]
    public int32 get_server_id ();

}

/**
 * mongoc_apm_command_succeeded_cb_t
 */

[CCode (cname = "mongoc_apm_command_succeeded_cb_t", has_target = false)]
public delegate void APMCommandSucceededCallback (APMCommandSucceeded event);

/**
 * mongoc_apm_command_succeeded_t
 */

[CCode (cname = "mongoc_apm_command_succeeded_t", free_function = "", has_type_id = false)]
public struct APMCommandSucceeded {

    //Methods
    [CCode (cname = "mongoc_apm_command_succeeded_get_command_name")]
    public string get_command_name ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_duration")]
    public int64 get_duration ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_operation_id")]
    public int64 get_operation_id ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_reply")]
    public Bson get_reply ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_request_id")]
    public int64 get_request_id ();

    [CCode (cname = "mongoc_apm_command_succeeded_get_server_id")]
    public int32 get_server_id ();

}

/**
 * mongoc_apm_server_changed_cb_t
 */

[CCode (cname = "mongoc_apm_server_changed_cb_t", has_target = false)]
public delegate void APMServerChangedCallback (APMServerChanged event);

/**
 * mongoc_apm_server_changed_t
 */

[CCode (cname = "mongoc_apm_server_changed_t", free_function = "", has_type_id = false)]
public struct APMServerChanged {

    //Methods
    [CCode (cname = "mongoc_apm_server_changed_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_server_changed_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_server_changed_get_new_description")]
    public ServerDescription get_new_description ();

    [CCode (cname = "mongoc_apm_server_changed_get_previous_description")]
    public ServerDescription get_previous_description ();

    [CCode (cname = "mongoc_apm_server_changed_get_topology_id")]
    public void get_topology_id (out BsonOid topology_id);

}

/**
 * mongoc_apm_server_closed_cb_t
 */

[CCode (cname = "mongoc_apm_server_closed_cb_t", has_target = false)]
public delegate void APMServerClosedCallback (APMServerClosed event);

/**
 * mongoc_apm_server_closed_t
 */

[CCode (cname = "mongoc_apm_server_closed_t", free_function = "", has_type_id = false)]
public struct APMServerClosed {

    //Methods
    [CCode (cname = "mongoc_apm_server_closed_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_server_closed_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_server_closed_get_topology_id")]
    public void get_topology_id (out BsonOid topology_id);

}

/**
 * mongoc_apm_server_opening_cb_t
 */

[CCode (cname = "mongoc_apm_server_opening_cb_t", has_target = false)]
public delegate void APMServerOpeningCallback (APMServerOpening event);

/**
 * mongoc_apm_server_opening_t
 */

[CCode (cname = "mongoc_apm_server_opening_t", free_function = "", has_type_id = false)]
public struct APMServerOpening {

    //Methods
    [CCode (cname = "mongoc_apm_server_opening_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_server_opening_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_server_opening_get_topology_id")]
    public void get_topology_id (out BsonOid topology_id);

}

/**
 * mongoc_apm_server_heartbeat_failed_cb_t
 */

[CCode (cname = "mongoc_apm_server_heartbeat_failed_cb_t", has_target = false)]
public delegate void APMServerHeartbeatFailedCallback (APMServerHeartbeatFailed event);

/**
 * mongoc_apm_server_heartbeat_failed_t
 */

[CCode (cname = "mongoc_apm_server_heartbeat_failed_t", free_function = "", has_type_id = false)]
public struct APMServerHeartbeatFailed {

    //Methods
    [CCode (cname = "mongoc_apm_server_heartbeat_failed_get_awaited")]
    public bool get_awaited ();

    [CCode (cname = "mongoc_apm_server_heartbeat_failed_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_server_heartbeat_failed_get_duration")]
    public int64 get_duration ();

    [CCode (cname = "mongoc_apm_server_heartbeat_failed_get_error")]
    public void get_error (out BsonError? error);

    [CCode (cname = "mongoc_apm_server_heartbeat_failed_get_host")]
    public HostList get_host ();

}

/**
 * mongoc_apm_server_heartbeat_started_cb_t
 */

[CCode (cname = "mongoc_apm_server_heartbeat_started_cb_t", has_target = false)]
public delegate void APMServerHeartbeatStartedCallback (APMServerHeartbeatStarted event);

/**
 * mongoc_apm_server_heartbeat_started_t
 */

[CCode (cname = "mongoc_apm_server_heartbeat_started_t", free_function = "", has_type_id = false)]
public struct APMServerHeartbeatStarted {

    //Methods
    [CCode (cname = "mongoc_apm_server_heartbeat_started_get_awaited")]
    public bool get_awaited ();

    [CCode (cname = "mongoc_apm_server_heartbeat_started_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_server_heartbeat_started_get_host")]
    public HostList get_host ();

}

/**
 * mongoc_apm_server_heartbeat_succeeded_cb_t
 */

[CCode (cname = "mongoc_apm_server_heartbeat_succeeded_cb_t", has_target = false)]
public delegate void APMServerHeartbeatSucceededCallback (APMServerHeartbeatSucceeded event);

/**
 * mongoc_apm_server_heartbeat_succeeded_t
 */

[CCode (cname = "mongoc_apm_server_heartbeat_succeeded_t", free_function = "", has_type_id = false)]
public struct APMServerHeartbeatSucceeded {

    //Methods
    [CCode (cname = "mongoc_apm_server_heartbeat_succeeded_get_awaited")]
    public bool get_awaited ();

    [CCode (cname = "mongoc_apm_server_heartbeat_succeeded_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_server_heartbeat_succeeded_get_duration")]
    public int64 get_duration ();

    [CCode (cname = "mongoc_apm_server_heartbeat_succeeded_get_host")]
    public HostList get_host ();

    [CCode (cname = "mongoc_apm_server_heartbeat_succeeded_get_reply")]
    public Bson get_reply ();

}

/**
 * mongoc_apm_topology_changed_cb_t
 */

[CCode (cname = "mongoc_apm_topology_changed_cb_t", has_target = false)]
public delegate void APMTopologyChangedCallback (APMTopologyChanged event);

/**
 * mongoc_apm_topology_changed_t
 */

[CCode (cname = "mongoc_apm_topology_changed_t", free_function = "", has_type_id = false)]
public struct APMTopologyChanged {

    //Methods
    [CCode (cname = "mongoc_apm_server_heartbeat_succeeded_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_topology_changed_get_new_description")]
    public TopologyDescription get_new_description ();

    [CCode (cname = "mongoc_apm_topology_changed_get_previous_description")]
    public TopologyDescription get_previous_description ();

    [CCode (cname = "mongoc_apm_topology_changed_get_topology_id")]
    public void get_topology_id (out BsonOid topology_id);

}

/**
 * mongoc_apm_topology_closed_cb_t
 */

[CCode (cname = "mongoc_apm_topology_closed_cb_t", has_target = false)]
public delegate void APMTopologyClosedCallback (APMTopologyClosed event);

/**
 * mongoc_apm_topology_closed_t
 */

[CCode (cname = "mongoc_apm_topology_closed_t", free_function = "", has_type_id = false)]
public struct APMTopologyClosed {

    //Methods
    [CCode (cname = "mongoc_apm_topology_closed_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_topology_closed_get_topology_id")]
    public void get_topology_id (out BsonOid topology_id);

}

/**
 * mongoc_apm_topology_opening_cb_t
 */

[CCode (cname = "mongoc_apm_topology_opening_cb_t", has_target = false)]
public delegate void APMTopologyOpeningCallback (APMTopologyOpening event);

/**
 * mongoc_apm_topology_opening_t
 */

[CCode (cname = "mongoc_apm_topology_opening_t", free_function = "", has_type_id = false)]
public struct APMTopologyOpening {

    //Methods
    [CCode (cname = "mongoc_apm_topology_opening_get_context", simple_generics = true)]
    public T get_context<T> ();

    [CCode (cname = "mongoc_apm_topology_opening_get_topology_id")]
    public void get_topology_id (out BsonOid topology_id);

}
