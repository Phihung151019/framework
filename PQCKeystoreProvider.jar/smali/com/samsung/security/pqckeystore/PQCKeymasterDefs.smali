.class public final Lcom/samsung/security/pqckeystore/PQCKeymasterDefs;
.super Ljava/lang/Object;
.source "PQCKeymasterDefs.java"


# static fields
.field public static final KM_TAG_NONCE:I = -0x6ffffc17

.field public static final KM_TAG_USER_ID:I = 0x300001f5

.field public static final PQC_KM_ALGORITHM_ML_DSA:I = 0xc0

.field public static final PQC_KM_ALGORITHM_ML_KEM:I = 0xa0

.field public static final PQC_KM_BIGNUM:I = -0x80000000

.field public static final PQC_KM_BOOL:I = 0x70000000

.field public static final PQC_KM_BYTES:I = -0x70000000

.field public static final PQC_KM_DATE:I = 0x60000000

.field public static final PQC_KM_DIGEST_MD5:I = 0x1

.field public static final PQC_KM_DIGEST_NONE:I = 0x0

.field public static final PQC_KM_DIGEST_SHA1:I = 0x2

.field public static final PQC_KM_DIGEST_SHA_2_224:I = 0x3

.field public static final PQC_KM_DIGEST_SHA_2_256:I = 0x4

.field public static final PQC_KM_DIGEST_SHA_2_384:I = 0x5

.field public static final PQC_KM_DIGEST_SHA_2_512:I = 0x6

.field public static final PQC_KM_ENUM:I = 0x10000000

.field public static final PQC_KM_ENUM_REP:I = 0x20000000

.field public static final PQC_KM_ERROR_OK:I = 0x0

.field public static final PQC_KM_ERROR_UNKNOWN:I = 0x3e8

.field public static final PQC_KM_INVALID:I = 0x0

.field public static final PQC_KM_ORIGIN_DERIVED:I = 0x1

.field public static final PQC_KM_ORIGIN_GENERATED:I = 0x0

.field public static final PQC_KM_ORIGIN_IMPORTED:I = 0x2

.field public static final PQC_KM_ORIGIN_SECURELY_IMPORTED:I = 0x4

.field public static final PQC_KM_ORIGIN_UNKNOWN:I = 0x3

.field public static final PQC_KM_PURPOSE_DECRYPT:I = 0x1

.field public static final PQC_KM_PURPOSE_ENCRYPT:I = 0x0

.field public static final PQC_KM_PURPOSE_SIGN:I = 0x2

.field public static final PQC_KM_PURPOSE_VERIFY:I = 0x3

.field public static final PQC_KM_TAG_ALGORITHM:I = 0x10000002

.field public static final PQC_KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field public static final PQC_KM_TAG_DIGEST:I = 0x20000005

.field public static final PQC_KM_TAG_INVALID:I = 0x0

.field public static final PQC_KM_TAG_KEY_SIZE:I = 0x30000003

.field public static final PQC_KM_TAG_ORIGIN:I = 0x100002be

.field public static final PQC_KM_TAG_PURPOSE:I = 0x20000001

.field public static final PQC_KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field public static final PQC_KM_UINT:I = 0x30000000

.field public static final PQC_KM_UINT_REP:I = 0x40000000

.field public static final PQC_KM_ULONG:I = 0x50000000

.field public static final PQC_KM_ULONG_REP:I = -0x60000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getTagType(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 91
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    return v0
.end method
