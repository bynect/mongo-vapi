
/**
* mongoc_gridfs_t 
*/

[CCode (cname = "mongoc_gridfs_t", free_function = "mongoc_gridfs_destroy")]
[Compact]
public class GridFS {

}

/**
* mongoc_gridfs_bucket_t 
*/

[CCode (cname = "mongoc_gridfs_bucket_t", free_function = "mongoc_gridfs_bucket_destroy")]
[Compact]
public class GridFSBucket {

    //Constructor
    [CCode (cname = "mongoc_gridfs_bucket_new")]
    public GridFSBucket (Database db, Bson? opts, ReadPrefs? read_prefs, BsonError? error);

    //Methods
    [CCode (cname = "mongoc_gridfs_bucket_abort_upload")]
    public bool abort_upload (Stream stream);

    [CCode (cname = "mongoc_gridfs_bucket_delete_by_id")]
    public bool delete_by_id (BsonValue file_id, BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_download_to_stream")]
    public bool download_to_stream (BsonValue file_id, Stream destination, BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_find")]
    public Cursor find (Bson filter, Bson? opts);

    [CCode (cname = "mongoc_gridfs_bucket_open_download_stream")]
    public Stream open_download_stream (BsonValue file_id, BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_open_upload_stream")]
    public Stream open_upload_stream (string filename, Bson? opts, BsonValue file_id, BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_open_upload_stream_with_id")]
    public Stream open_upload_stream_with_id (BsonValue file_id, string filename, Bson? opts, BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_stream_error")]
    public bool stream_error (BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_upload_from_stream")]
    public bool upload_from_stream (string filename, Stream source, Bson? opts, BsonValue file_id, BsonError? error);

    [CCode (cname = "mongoc_gridfs_bucket_upload_from_stream_with_id")]
    public bool upload_from_stream_with_id (BsonValue file_id, string filename, Stream source, Bson? opts, BsonError? error);

}
