/**
 * mongoc_database_t
 */

[CCode (cname = "mongoc_database_t", free_function = "mongoc_database_destroy", copy_function = "mongoc_database_copy")]
[Compact]
public class Database {

    [CCode (cname = "mongoc_database_get_name")]
    public string get_name ();

}
