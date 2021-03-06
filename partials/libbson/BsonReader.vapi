
/**
 * bson_json_reader_t
 */

[CCode (cname = "bson_json_reader_t", free_function = "bson_json_reader_destroy", has_type_id = false)]
[Compact]
public class BsonJsonReader<T> {

    //Constructors
    [CCode (cname = "bson_json_reader_new")]
    public BsonJsonReader (ref T data, JsonReaderCallback cb, JsonDestroyCallback dcb, bool allow_multiple, size_t buf_size);

    [CCode (cname = "bson_json_reader_new_from_file")]
    public BsonJsonReader.from_file (string filename, BsonError error);

    [CCode (cname = "bson_json_reader_new_from_fd")]
    public BsonJsonReader.from_fd (int fd, bool close_on_destroy);

    [CCode (cname = "bson_json_data_reader_new")]
    public BsonJsonReader.data (bool allow_multiple, size_t size);

    //Methods
    [CCode (cname = "bson_json_reader_read")]
    public int read (Bson bson, BsonError? error);

    [CCode (cname = "bson_json_data_reader_ingest")]
    public void ingest (uint8 data, size_t len);

}

/**
 * bson_json_reader_cb
 */

[CCode (cname = "bson_json_reader_cb", has_target = false, array_length_type = "size_t")]
public delegate ssize_t JsonReaderCallback<T> (T? handle, uint8[] buf);

/**
 * bson_json_destroy_cb
 */

[CCode (cname = "bson_json_destroy_cb", has_target = false)]
public delegate void JsonDestroyCallback<T> (T? handle);

/**
 * bson_reader_t
 */

[CCode (cname = "bson_reader_t", free_function = "bson_reader_destroy", has_type_id = false)]
[Compact]
public class BsonReader {

    //Constructors
    [CCode (cname = "bson_reader_new_from_data")]
    public BsonReader.from_data (uint8 data, size_t length);

    [CCode (cname = "bson_reader_new_from_file")]
    public BsonReader.from_file (string path, BsonError error);

    [CCode (cname = "bson_reader_new_from_fd")]
    public BsonReader.from_fd (int fd, bool close_on_destroy);

    [CCode (cname = "bson_reader_new_from_handle", delegate_target_pos = 1, has_target = true)]
    public BsonReader.from_handle (BsonReaderReadFunc rf, BsonReaderDestroyFunc df);

    //Methods
    [CCode (cname = "bson_reader_read")]
    public Bson read (bool reached_eof);

    [CCode (cname = "bson_reader_reset")]
    public void reset ();

    [CCode (cname = "bson_reader_tell")]
    public Posix.off_t tell ();

    [CCode (cname = "bson_reader_set_read_func")]
    public void set_read_function (BsonReaderReadFunc func);

    [CCode (cname = "bson_reader_set_destroy_func")]
    public void set_destroy_function (BsonReaderDestroyFunc func);

}

/**
 * bson_reader_read_func_t
 */

[CCode (cname = "bson_reader_read_func_t", has_type_id = false, simple_generics = true)]
public delegate ssize_t BsonReaderReadFunc<T> (T handle, T buf, size_t count);

/**
 * bson_reader_destroy_func_t
 */

[CCode (cname = "bson_reader_destroy_func_t", has_type_id = false, simple_generics = true)]
public delegate void BsonReaderDestroyFunc<T> (T handle);

/**
 * bson_json_error_code_t
 */

[CCode (cname = "bson_json_error_code_t", has_type_id = false, cprefix = "BSON_JSON_ERROR_READ_")]
[Flags]
public enum JsonErrorCode {
    CORRUPT_JS,
    INVALID_PARAM,
    CB_FAILURE
}
