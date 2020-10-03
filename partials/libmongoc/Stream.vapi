
/**
 * mongoc_stream_t
 */

[CCode (cname = "mongoc_stream_t", free_function = "mongoc_stream_destroy")]
[Compact]
public class Stream {

    //FIXME
    [CCode (cname = "mongoc_stream_buffered_new")]
    public Stream (Stream base_stream, size_t buffer);

    [CCode (cname = "mongoc_stream_close")]
    public int close ();

    [CCode (cname = "mongoc_stream_cork")]
    public int cork ();

    [CCode (cname = "mongoc_stream_flush")]
    public int flush ();

    [CCode (cname = "mongoc_stream_get_base_stream")]
    public Stream get_base_stream ();

    [CCode (cname = "mongoc_stream_read")]
    public ssize_t read (void* buf, size_t count, size_t min_bytes, int32 timeout_msec);

    [CCode (cname = "mongoc_stream_readv")]
    public ssize_t readv (IOVec iov, size_t iovcnt, size_t min_bytes, int32 timeout_msec);

    [CCode (cname = "mongoc_stream_setsockopt")]
    public int setsockopt (int level, int optname, void* optval, Posix.socklen_t optlen);

    [CCode (cname = "mongoc_stream_should_retry")]
    public bool should_retry ();

    [CCode (cname = "mongoc_stream_timed_out")]
    public bool timed_out ();

    [CCode (cname = "mongoc_stream_uncork")]
    public int uncork ();

    [CCode (cname = "mongoc_stream_write")]
    public ssize_t write (void* buf, size_t count, int32 timeout_msec);

    [CCode (cname = "mongoc_stream_writev")]
    public ssize_t writev (IOVec iov, size_t iovcnt, size_t min_bytes, int32 timeout_msec);

}

/**
 * mongoc_change_stream_t 
 */

[CCode (cname = "mongoc_change_stream_t", free_function = "mongoc_change_stream_destroy")]
[Compact]
public class ChangeStream {

    //Methods
    //FIXME: bson must be location reference
    [CCode (cname = "mongoc_change_stream_next")]
    public bool next (Bson bson);

    [CCode (cname = "mongoc_change_stream_next")]
    public Bson? get_resume_token (ChangeStream stream);

    [CCode (cname = "mongoc_change_stream_next")]
    public bool error_document (BsonError? error, Bson reply);

}
