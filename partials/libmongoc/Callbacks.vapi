//TODO

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
    //TODO: Implement Callbacks
    //  [CCode (cprefix = "")]
    //  public bool set_command_failed_cb (APMCallbacks callbacks, CommandFailed command);
}
