
/**
 * BCON
*/

[CCode (cname = "BCON_NEW", sentinel = "")]
public Bson BCON_NEW (...);

[CCode (cname = "BCON_UTF8")]
public BconType BCON_UTF8 (string str);

[CCode (cname = "BCON_DOUBLE")]
public BconType BCON_DOUBLE (double num);

[CCode (cname = "BCON_DOCUMENT")]
public BconType BCON_DOCUMENT (Bson doc);

[CCode (cname = "BCON_ARRAY")]
public BconType BCON_ARRAY (Bson arr);

[CCode (cname = "BCON_BIN")]
public BconType BCON_BIN (BsonSubtype subtype, uint8 binary, uint32 length);

[CCode (cname = "BCON_UNDEFINED")]
public BconType BCON_UNDEFINED ();

[CCode (cname = "BCON_OID")]
public BconType BCON_OID (BsonOid oid);

[CCode (cname = "BCON_BOOL")]
public BconType BCON_BOOL (bool val);

[CCode (cname = "BCON_DATE_TIME")]
public BconType BCON_DATE_TIME (int64 val);

[CCode (cname = "BCON_NULL")]
public BconType BCON_NULL ();

//FIXME
[CCode (cname = "BCON_REGEX")]
public BconType BCON_REGEX (string regex, string flags);

[CCode (cname = "BCON_DBPOINTER")]
public BconType BCON_DBPOINTER (Collection coll, BsonOid oid);

[CCode (cname = "BCON_CODE")]
public BconType BCON_CODE (string code);

[CCode (cname = "BCON_SYMBOL")]
public BconType BCON_SYMBOL (string val);

[CCode (cname = "BCON_CODEWSCOPE")]
public BconType BCON_CODEWSCOPE (string val, Bson scope);

[CCode (cname = "BCON_INT32")]
public BconType BCON_INT32 (int32 val);

[CCode (cname = "BCON_TIMESTAMP")]
public BconType BCON_TIMESTAMP (int32 timestamp, int32 increment);

[CCode (cname = "BCON_INT64")]
public BconType BCON_INT64 (int64 val);

[CCode (cname = "BCON_DECIMAL128")]
public BconType BCON_DECIMAL128 (BsonDecimal128 val);

[CCode (cname = "BCON_MAXKEY")]
public BconType BCON_MAXKEY ();

[CCode (cname = "BCON_MINKEY")]
public BconType BCON_MINKEY ();

[CCode (cname = "BCON")]
public BconType BCON (Bson val);

[CCode (cname = "BCON_ITER")]
public BconType BCON_ITER (BsonIter val);
