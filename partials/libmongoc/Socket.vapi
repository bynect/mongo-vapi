
/**
 * mongoc_socket_t 
 */

[CCode (cname = "mongoc_socket_t", free_function = "mongoc_socket_destroy")]
[Compact]
public class Socket {

    //Constructor
    [CCode (cname = "mongoc_socket_new")]
    public Socket (int domain, int type, int protocol);

    //Methods
    [CCode (cname = "mongoc_socket_accept")]
    public Socket accept (int64 expire_at);

    [CCode (cname = "mongoc_socket_bind")]
    public int bind (Posix.SockAddr addr, Posix.socklen_t addrlen);

    [CCode (cname = "mongoc_socket_close")]
    public int close ();

    [CCode (cname = "mongoc_socket_connect")]
    public int connect (Posix.SockAddr addr, Posix.socklen_t addrlen, int64 expire_at);

    [CCode (cname = "mongoc_socket_errno")]
    public int errno ();

    [CCode (cname = "mongoc_socket_getnameinfo")]
    public string getnameinfo ();

    [CCode (cname = "mongoc_socket_getsockname")]
    public int getsockname (Posix.SockAddr addr, Posix.socklen_t addrlen);

    [CCode (cname = "mongoc_socket_listen")]
    public int listen (uint backlog);

    [CCode (cname = "mongoc_socket_recv")]
    public ssize_t recv (void *buf, size_t buflen, int flags, int64 expire_at);

    [CCode (cname = "mongoc_socket_send")]
    public ssize_t send (void *buf, size_t buflen, int64 expire_at);

    [CCode (cname = "mongoc_socket_sendv")]
    public ssize_t sendv (IOVec iov, size_t iovcnt, int64 expire_at);

    [CCode (cname = "mongoc_socket_setsockopt")]
    public int setsockopt (int level, int optname, void* optval, Posix.socklen_t optlen);

}
