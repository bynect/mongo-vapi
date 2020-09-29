/*
    Mongo C Driver bindings for Vala

    Copyright (c) 2020 nect <bynect@gmail.com>

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
*/

[CCode (cheader_filename = "mongoc.h,bson.h", has_type_id = false, cprefix = "mongoc_", lower_case_cprefix = "mongoc_")]
namespace Mongo {

    /**
     * mongoc_client_t
     */

    [CCode (cname = "mongoc_client_t", free_function = "mongoc_client_destroy")]
    [Compact]
    public class Client {

        [CCode (cname = "mongoc_client_new")]
        public Client (string uri);

        [CCode (cname = "mongoc_client_new_from_uri")]
        public Client.from_uri (Uri uri);

        [CCode (cname = "mongoc_client_get_server_status")]
        public bool get_server_status (ReadPrefs read_prefs, Bson reply, BsonError? error);

    }

    /**
     * mongoc_collection_t
     */

    [Compact]
    [CCode (cname = "mongoc_collection_t", free_function = "mongoc_collection_destroy")]
    public class Collection {

    }

    /**
     * mongoc_read_mode_t
     */

    [CCode (cname = "mongoc_read_mode_t", cprefix = "MONGOC_READ_", has_type_id = false)]
    [Flags]
    public enum ReadMode {
        PRIMARY,
        SECONDARY,
        PRIMARY_PREFERRED,
        SECONDARY_PREFERRED,
        NEAREST
    }

    /**
     * mongoc_read_prefs_t
     */

    [CCode (cname = "mongoc_read_prefs_t", free_function = "mongoc_read_prefs_destroy")]
    [Compact]
    public class ReadPrefs {
        [CCode (cname = "mongoc_read_prefs_new")]
        public ReadPrefs (ReadMode mode);
    }

    /**
     * mongoc_cursor_t
     */

    [Compact]
    [CCode (cname = "mongoc_cursor_t", free_function = "mongoc_cursor_destroy")]
    public class Cursor {

    }

    /**
     * mongoc_database_t
     */

    [CCode (cname = "mongoc_database_t", free_function = "mongoc_database_destroy", copy_function = "mongoc_database_copy")]
    [Compact]
    public class Database {

        [CCode (cname = "mongoc_database_get_name")]
        public string get_name ();

    }

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
     * mongoc_uri_t
     */

    [CCode (cname = "mongoc_uri_t", free_function = "mongoc_uri_destroy")]
    [Compact]
    public class Uri {

        [CCode (cname = "mongoc_uri_new")]
        public Uri (string uri);

        [CCode (cprefix = "mongoc_uri_new_with_error")]
        public Uri.with_error (string uri, BsonError? error);

        [CCode (cname = "mongoc_uri_new_for_host_port")]
        public Uri.for_host_port (string hostname, uint16 port);

    }

    /**
     * bson_t
     */

    [CCode (cname = "bson_t", free_function = "bson_destroy", copy_function = "bson_copy", has_type_id = false)]
    [Compact]
    public class Bson {

        /**
         * Constructors
         */
        [CCode (cname = "bson_new")]
        public Bson ();

        //FIXME
        //  [CCode (cname = "bson_new_from_buffer")]
        //  public Bson.from_buffer (ref uint8 buf, size_t buf_len, ReallocFunc func);

        [CCode (cname = "bson_new_from_data")]
        public Bson.from_data (uint8 data, size_t length);


        //TODO: Check ssize_t
        [CCode (cname = "bson_new_from_json")]
        public Bson.from_json (uint8 data, ssize_t length, BsonError? error);

        [CCode (cname = "bson_sized_new")]
        public Bson.sized (size_t size);

        /**
         * Methods
         */
        [CCode (cname = "bson_append_array")]
        public bool append_array (string key, int key_length, Bson array);

        [CCode (cname = "bson_append_array_begin")]
        public bool append_array_begin (string key, int key_length, Bson child);

        [CCode (cname = "bson_append_array_end")]
        public bool append_array_end (Bson child);

        [CCode (cname = "bson_append_binary")]
        public bool append_binary (string key, int key_length, BsonSubtype subtype, uint8? binary, uint32? length);

        [CCode (cname = "bson_append_bool")]
        public bool append_bool (string key, int key_length, bool value);

        [CCode (cname = "bson_append_code")]
        public bool append_code (string key, int key_length, string js);

        [CCode (cname = "bson_append_code_with_scope")]
        public bool append_code_with_scope (string key, int key_length, string js, Bson? scope);

        [CCode (cname = "bson_append_date_time")]
        public bool append_date_time (string key, int key_length, int64 value);

        [CCode (cname = "bson_append_dbpointer")]
        public bool append_dbpointer (string key, int key_length, string collection, BsonOid oid);

        [CCode (cname = "bson_append_decimal128")]
        public bool append_decimal128 (string key, int key_length, string collection, BsonDecimal128 value);
    
        [CCode (cname = "bson_append_document")]
        public bool append_document (string key, int key_length, Bson value);

        [CCode (cname = "bson_append_document_begin")]
        public bool append_document_begin (string key, int key_length, Bson child);

        [CCode (cname = "bson_append_document_end")]
        public bool append_document_end (Bson child);

        [CCode (cname = "bson_append_double")]
        public bool append_double (string key, int key_length, double value);

        [CCode (cname = "bson_append_int32")]
        public bool append_int32 (string key, int key_length, int32 value);

        [CCode (cname = "bson_append_int64")]
        public bool append_int64 (string key, int key_length, int64 value);

        [CCode (cname = "bson_append_iter")]
        public bool append_iter (string key, int key_length, BsonIter iter);

        [CCode (cname = "bson_append_maxkey")]
        public bool append_maxkey (string key, int key_length);

        [CCode (cname = "bson_append_minkey")]
        public bool append_minkey (string key, int key_length);

        [CCode (cname = "bson_append_now_utc")]
        public bool append_now_utc (string key, int key_length);

        [CCode (cname = "bson_append_null")]
        public bool append_null (string key, int key_length);

        [CCode (cname = "bson_append_oid")]
        public bool append_oid (string key, int key_length, BsonOid iter);

        [CCode (cname = "bson_append_regex")]
        public bool append_regex (string key, int key_length, string regex, string options);

        [CCode (cname = "bson_append_regex_w_len")]
        public bool append_regex_with_length (string key, int key_length, string regex, int regex_length, string options);

        [CCode (cname = "bson_append_symbol")]
        public bool append_symbol (string key, int key_length, string? value, int length);

        //TODO: Check time_t
        [CCode (cname = "bson_append_time_t")]
        public bool append_time_t (string key, int key_length, time_t value);

        [CCode (cname = "bson_append_timestamp")]
        public bool append_timestamp (string key, int key_length, uint32 timestamp, uint32 increment);

        //TODO: Check TimeVal vs DateTime
        [CCode (cname = "bson_append_timeval")]
        public bool append_timeval (string key, int key_length, GLib.TimeVal value);

        [CCode (cname = "bson_append_undefined")]
        public bool append_undefined (string key, int key_length);

        [CCode (cname = "bson_append_utf8")]
        public bool append_utf8 (string key, int key_length, string value, int length);

        [CCode (cname = "bson_append_value")]
        public bool append_value (string key, int key_length, BsonValue value);

        [CCode (cname = "bson_array_as_json")]
        public string? array_as_json (int? length);

        [CCode (cname = "bson_as_canonical_extended_json")]
        public string? as_canonical_extended_json (int? length);

        [CCode (cname = "bson_as_json")]
        public string? as_json (int? length);

        [CCode (cname = "bson_as_relaxed_extended_json")]
        public string? as_relaxed_extended_json (int? length);

        [CCode (cname = "bson_compare")]
        public int compare (Bson other);

        [CCode (cname = "bson_concat")]
        public bool concat (Bson dest);

        [CCode (cname = "bson_copy_to")]
        public void copy_to (Bson dest);

        [CCode (cname = "bson_copy_to_excluding_noinit")]
        public void copy_to_excluding (Bson dest, string exclude);

        [CCode (cname = "bson_copy_to_excluding_noinit")]
        public void copy_to_excluding_va (Bson dest, string exclude, va_list args);

        [CCode (cname = "bson_count_keys")]
        public int32 count_keys ();

        [CCode (cname = "bson_destroy_with_steal")]
        public uint8 destroy_with_steal (bool steal, uint32 length);

        [CCode (cname = "bson_equal")]
        public bool equal (Bson other);

        [CCode (cname = "bson_get_data")]
        public uint8 get_data ();

        [CCode (cname = "bson_has_field")]
        public bool has_field (string key);

        [CCode (cname = "bson_init")]
        public void init ();

        //TODO: Check ssize_t vs size_t
        [CCode (cname = "bson_init_from_json")]
        public bool init_from_json (string data, ssize_t size, BsonError? error);

        [CCode (cname = "bson_init_static")]
        public bool init_static (uint8 data, size_t length);

        [CCode (cname = "bson_reinit")]
        public void reinit ();

        [CCode (cname = "bson_reserve_buffer")]
        public uint8 reserve_buffer (uint32 size);

        [CCode (cname = "bson_steal")]
        public bool steal (Bson src);

        [CCode (cname = "bson_validate")]
        public bool validate (ValidateFlags flags, size_t offset);

        [CCode (cname = "bson_validate_with_error")]
        public bool validate_with_error (ValidateFlags flags, BsonError? error);

    }

    /**
     * bson_type_t
     */

    [CCode (cname = "bson_type_t", has_type_id = false, cprefix = "BSON_TYPE_")]
    public enum BsonType {
        EOD,
        DOUBLE,
        UTF8,
        DOCUMENT,
        ARRAY,
        BINARY,
        UNDEFINED,
        OID,
        BOOL,
        DATE_TIME,
        NULL,
        REGEX,
        DBPOINTER,
        CODE,
        SYMBOL,
        CODEWSCOPE,
        INT32,
        TIMESTAMP,
        INT64,
        DECIMAL128,
        MAXKEY,
        MINKEY
    }

    /**
     * bson_subtype_t
     */

    [CCode (cname = "bson_subtype_t", has_type_id = false, cprefix = "BSON_SUBTYPE_")]
    public enum BsonSubtype {
        BINARY,
        FUNCTION,
        BINARY_DEPRECATED,
        UUID_DEPRECATED,
        UUID,
        MD5,
        USER
    }

    /**
     * bson_validate_flags_t
     */

    [CCode (cname = "bson_validate_flags_t", has_type_id = false, cprefix = "BSON_VALIDATE_")]
    [Flags]
    public enum ValidateFlags {
        NONE,
        UTF8,
        DOLLAR_KEYS,
        DOT_KEYS,
        BUTF8_ALLOW_NULL,
        EMPTY_KEYS,
    }

    /**
     * bson_decimal128_t
     */

    [CCode (cname = "bson_decimal128_t", has_type_id = false, free_function = "")]
    public struct BsonDecimal128 {

        [CCode (cname = "bson_decimal128_from_string")]
        public static bool from_string (string str, BsonDecimal128 dec); 

        [CCode (cname = "bson_decimal128_from_string_w_len")]
        public static bool from_string_with_length (string str, int length, BsonDecimal128 dec); 

        [CCode (cname = "bson_decimal128_to_string")]
        public void to_string (string str);

    }

    /**
     * bson_oid_t
     */

    [CCode (cname = "bson_oid_t", has_type_id = false, free_function = "", copy_function = "bson_oid_copy")]
    public struct BsonOid {

        [CCode (cname = "bson_oid_compare")]
        public int compare (BsonOid oid);

        [CCode (cname = "bson_oid_equal")]
        public bool equal (BsonOid oid);

        [CCode (cname = "bson_oid_get_time_t")]
        public time_t get_time_t (BsonOid oid);

        [CCode (cname = "bson_oid_hash")]
        public uint32 hash (BsonOid oid);

        [CCode (cname = "bson_oid_init")]
        public void init (BsonContext? ctx);

        [CCode (cname = "bson_oid_init_from_data")]
        public void init_from_data (uint8 data);

        [CCode (cname = "bson_oid_init_from_string")]
        public void init_from_string (string str);
    
        [CCode (cname = "bson_oid_is_valid")]
        public static bool is_valid (string str, size_t length);

        [CCode (cname = "bson_oid_to_string")]
        public void to_string (string str);

    }

    /**
     * bson_context_flags_t
     */

    [CCode (cname = "bson_context_flags_t", has_type_id = false, cprefix = "BSON_CONTEXT_")]
    [Flags]
    public enum BsonContextFlags {
        NONE,
        THREAD_SAFE,
        DISABLE_HOST_CACHE,
        DISABLE_PID_CACHE,
        USE_TASK_ID
    }

    /**
     * bson_context_flags_t
     */

    [CCode (cname = "bson_context_t", free_function = "bson_context_destroy", has_type_id = false)]
    public struct BsonContext {

        [CCode (cname = "bson_context_new")]
        public BsonContext (BsonContextFlags flags);

        [CCode (cname = "bson_context_get_default")]
        public BsonContext.get_default ();

    }

    /**
     * bson_value_t
     */

    [CCode (cname = "bson_value_t", free_function = "bson_value_destroy", copy_function = "bson_value_copy", has_type_id = false)]
    public struct BsonValue {

    }

    /**
     * bson_visitor_t
     */

    [CCode (cname = "bson_visitor_t", free_function = "", has_type_id = false)]
    public struct BsonVisitor {
    
    }

    /**
     * bson_iter_t
     */

    [CCode (cname = "bson_iter_t", free_function = "bson_iter_destroy", copy_function = "bson_iter_bson_copy", has_type_id = false)]
    [Compact]
    public class BsonIter {

        //Methods    
        [CCode (cname = "bson_iter_array")]
        public void iter_array (uint32 array_len, ref uint8 array);

        [CCode (cname = "bson_iter_as_bool")]
        public bool iter_as_bool ();

        [CCode (cname = "bson_iter_as_double")]
        public bool iter_as_double ();
    
        [CCode (cname = "bson_iter_as_int64")]
        public int64 iter_as_int64 ();

        [CCode (cname = "bson_iter_binary")]
        public void iter_binary (BsonSubtype? subtype, uint32 binary_len, ref uint8 binary);

        [CCode (cname = "bson_iter_bool")]
        public bool iter_bool ();

        [CCode (cname = "bson_iter_code")]
        public string iter_code (uint32? length);

        [CCode (cname = "bson_iter_codewscope")]
        public string iter_codewscope (uint32 length, uint32 scope_len, ref uint8? scope);

        [CCode (cname = "bson_iter_date_time")]
        public int64 iter_date_time ();

        [CCode (cname = "bson_iter_decimal128")]
        public bool iter_decimal128 (BsonDecimal128 dec);

        [CCode (cname = "bson_iter_document")]
        public void iter_document (uint32 document_len, ref uint8 document);

        [CCode (cname = "bson_iter_double")]
        public double iter_double ();

        [CCode (cname = "bson_iter_dup_utf8")]
        public string iter_dup_utf8 (uint32? length);

        [CCode (cname = "bson_iter_find")]
        public bool iter_find (string key);

        [CCode (cname = "bson_iter_find_case")]
        public bool iter_find_case (string key);

        [CCode (cname = "bson_iter_find_descendant")]
        public bool iter_find_descendant (string dotkey, BsonIter descendant);

        [CCode (cname = "bson_iter_find_w_len")]
        public bool iter_find_w_len (string key, int keylen);

        [CCode (cname = "bson_iter_init")]
        public bool init (Bson bson);

        [CCode (cname = "bson_iter_init_find")]
        public bool init_find (Bson bson, string key);

        [CCode (cname = "bson_iter_init_find_case")]
        public bool init_find_case (Bson bson, string key);

        [CCode (cname = "bson_iter_init_find_w_len")]
        public bool init_find_w_len (Bson bson, string key, int keylen);

        [CCode (cname = "bson_iter_init_from_data")]
        public bool init_from_data (uint8 data, size_t length);

        [CCode (cname = "bson_iter_init_from_data_at_offset")]
        public bool init_from_data_at_offset (uint8 data, size_t length, uint32 offset, uint32 keylen);

        [CCode (cname = "bson_iter_int32")]
        public int32 iter_int32 ();

        [CCode (cname = "bson_iter_int64")]
        public int64 iter_int64 ();

        [CCode (cname = "bson_iter_key")]
        public string iter_key ();

        [CCode (cname = "bson_iter_key_len")]
        public uint32 key_len ();

        [CCode (cname = "bson_iter_next")]
        public bool next ();

        [CCode (cname = "bson_iter_offset")]
        public uint32 offset ();

        [CCode (cname = "bson_iter_oid")]
        public BsonOid oid ();



        [CCode (cname = "bson_iter_overwrite_bool")]
        public void overwrite_bool (bool value);

        [CCode (cname = "bson_iter_overwrite_date_time")]
        public void overwrite_date_time (int64 value);

        [CCode (cname = "bson_iter_overwrite_decimal128")]
        public void overwrite_decimal128 (BsonDecimal128 value);

        [CCode (cname = "bson_iter_overwrite_double")]
        public void overwrite_double (double value);

        [CCode (cname = "bson_iter_overwrite_int32")]
        public void overwrite_int32 (int32 value);

        [CCode (cname = "bson_iter_overwrite_int64")]
        public void overwrite_int64 (int64 value);

        [CCode (cname = "bson_iter_overwrite_oid")]
        public void overwrite_oid (BsonOid oid);

        [CCode (cname = "bson_iter_overwrite_timestamp")]
        public void overwrite_timestamp (uint32 timestamp, uint32 increment);

        [CCode (cname = "bson_iter_recurse")]
        public bool recurse (BsonIter child);

        //XXX
        [CCode (cname = "bson_iter_regex")]
        public string regex ();

        [CCode (cname = "bson_iter_symbol")]
        public string symbol (uint32 length);

        [CCode (cname = "bson_iter_time_t")]
        public time_t time_t ();

        [CCode (cname = "bson_iter_timestamp")]
        public void timestamp (uint32 timestamp, uint32 increment);
    
        [CCode (cname = "bson_iter_timeval")]
        public void timeval (GLib.TimeVal tv);

        [CCode (cname = "bson_iter_type")]
        public BsonType type ();

        [CCode (cname = "bson_iter_utf8")]
        public string utf8 (uint32 length);

        [CCode (cname = "bson_iter_value")]
        public BsonValue value ();

        //XXX
        [CCode (cname = "bson_iter_visit_all")]
        public bool visit_all (BsonVisitor visitor);

    }

    /**
     * bson_error_t
     */

    [CCode (cname = "bson_error_t", free_function = "", has_type_id = false)]
    public struct BsonError {

        [CCode (cname = "bson_set_error")]
        public void set_error (uint32 domain, uint32 code, string format);

        [CCode (cname = "bson_strerror_r")]
        public string strerror (int err_code, string buf, size_t buflen);

    }

    /**
     * bson_get_monotonic_time
     */

    [CCode (cname = "bson_get_monotonic_time")]
    public int64 get_monotonic_time ();

    /**
     * bson_gettimeofday
     */

    [CCode (cname = "bson_gettimeofday")]
    public int gettimeofday (GLib.TimeVal tv, GLib.TimeZone tz);

    /**
     * bson_check_version
     */

    [CCode (cname = "bson_check_version")]
    public bool bson_check_version (int required_major, int required_minor, int required_micro);

    /**
     * bson_get_version
     */

    [CCode (cname = "bson_get_version")]
    public string bson_get_version ();

    /**
     * bson_get_major_version
     */

    [CCode (cname = "bson_get_major_version")]
    public int bson_get_major_version ();

    /**
     * bson_get_micro_version
     */

    [CCode (cname = "bson_get_micro_version")]
    public int bson_get_micro_version ();

    /**
     * bson_get_minor_version
     */

    [CCode (cname = "bson_get_minor_version")]
    public int bson_get_minor_version ();

    /**
     * bson_mem_restore_vtable
     */

    [CCode (cname = "bson_mem_restore_vtable")]
    public void bson_mem_restore_vtable ();

    /**
     * bson_mem_set_vtable
     */

    [CCode (cname = "bson_mem_set_vtable")]
    public void bson_mem_set_vtable (BsomMemVTable vtable);

    /**
     * bson_mem_vtable_t
     */

    [CCode (cname = "bson_mem_vtable_t", has_type_id = false, free_function = "")]
    public struct BsomMemVTable {

    }

    /**
     * bson_json_reader_t
     */

    [CCode (cname = "bson_json_reader_t", free_function = "bson_json_reader_destroy", has_type_id = false)]
    [Compact]
    public class BsonJsonReader {

        //Constructors
        //TODO
        //  [CCode (cname = "bson_json_reader_new")]
        //  public BsonJsonReader (void data, JsonReaderCB cb, JsonDestroyCB dcb, bool allow_multiple, size_t buf_size);

        [CCode (cname = "bson_json_reader_new")]
        public BsonJsonReader.from_file (string filename, BsonError error);

        [CCode (cname = "bson_json_reader_new")]
        public BsonJsonReader.from_fd (int fd, bool close_on_destroy);

        [CCode (cname = "bson_json_data_reader_new")]
        public BsonJsonReader.data (bool allow_multiple, size_t size);

        //Methods
        [CCode (cname = "bson_json_reader_read")]
        public int read (Bson bson, BsonError error);

        [CCode (cname = "bson_json_data_reader_ingest")]
        public void ingest (uint8 data, size_t len);

    }

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
    /**
     * bson_string_t
     */

    [CCode (cname = "bson_string_t", free_function = "", has_type_id = false)]
    [Compact]
    public class BsonString {
    
        //Constructor
        [CCode (cname = "bson_string_new")]
        public BsonString (string str);

        //Methods
        [CCode (cname = "bson_string_append")]
        public void append (string str);

        [CCode (cname = "bson_string_append_c")]
        public void append_char (char c);

        [CCode (cname = "bson_string_append_printf")]
        public void append_printf (string format);

        [CCode (cname = "bson_string_append_unichar")]
        public void append_unichar (unichar c);

        [CCode (cname = "bson_string_free")]
        public string free (bool free_segment);

        [CCode (cname = "bson_string_truncate")]
        public void truncate (uint32 len);

    }

    /**
     * bson_unichar_t
     */

    [CCode (cname = "bson_unichar_t")]
    [SimpleType]
    [IntegerType (rank = 7)]
    public struct BsonUnichar {

    }

    /**
     * Various chars and string methods
     */

    //FIXME
    //  [CCode (cname = "bson_ascii_strtoll")]
    //  public int64 ascii_strtoll (string str, ref char? endptr, int base);

    [CCode (cname = "bson_isspace")]
    public bool is_space (char c);

    [CCode (cname = "bson_snprintf")]
    public int snprintf (string str, size_t size, string format);

    [CCode (cname = "bson_strcasecmp")]
    public int strcasecmp (string str, string str2);

    [CCode (cname = "bson_strdup")]
    public string? strdup (string str);

    [CCode (cname = "bson_strdup_printf")]
    public string? strdup_printf (string format);

    [CCode (cname = "bson_strdupv_printf")]
    public string strdupv_printf (string format, va_list args);

    [CCode (cname = "bson_strfreev")]
    public void strfreev (string[] str);

    [CCode (cname = "bson_strncpy")]
    public void strncpy (string dst, string src, size_t size);

    [CCode (cname = "bson_strndup")]
    public void strndup (string str, size_t size);

    [CCode (cname = "bson_strnlen")]
    public size_t strnlen (string dst, size_t max);

    //FIXME
    //  [CCode (cname = "bson_uint32_to_string")]
    //  public size_t uint32_to_string (uint32 value, ref string strptr, string str, size_t size);

    [CCode (cname = "bson_utf8_escape_for_json")]
    public string utf8_escape_for_json (string utf8, ssize_t utf8_len);

    [CCode (cname = "bson_utf8_from_unichar")]
    public void utf8_from_unichar (BsonUnichar unich, string utf8, uint32 len);

    [CCode (cname = "bson_utf8_get_char")]
    public BsonUnichar utf8_get_char (string str);

    [CCode (cname = "bson_utf8_next_char")]
    public string utf8_next_char (string str);

    [CCode (cname = "bson_utf8_validate")]
    public bool utf8_validate (string utf8, size_t utf8_len, bool allow_null);

    [CCode (cname = "bson_vsnprintf")]
    public int vsnprintf (string str, size_t size, string format, va_list ap);

}
