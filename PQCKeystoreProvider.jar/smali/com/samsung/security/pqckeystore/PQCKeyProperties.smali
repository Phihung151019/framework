.class public abstract Lcom/samsung/security/pqckeystore/PQCKeyProperties;
.super Ljava/lang/Object;
.source "PQCKeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$Origin;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$OriginEnum;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$Digest;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$DigestEnum;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$KeyAlgorithm;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$KeyAlgorithmEnum;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$Purpose;,
        Lcom/samsung/security/pqckeystore/PQCKeyProperties$PurposeEnum;
    }
.end annotation


# static fields
.field public static final DIGEST_MD5:Ljava/lang/String; = "MD5"

.field public static final DIGEST_NONE:Ljava/lang/String; = "NONE"

.field public static final DIGEST_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final DIGEST_SHA224:Ljava/lang/String; = "SHA-224"

.field public static final DIGEST_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final DIGEST_SHA384:Ljava/lang/String; = "SHA-384"

.field public static final DIGEST_SHA512:Ljava/lang/String; = "SHA-512"

.field public static final KEY_ALGORITHM_ML_DSA:Ljava/lang/String; = "ML-DSA"

.field public static final KEY_ALGORITHM_ML_KEM:Ljava/lang/String; = "ML-KEM"

.field public static final ORIGIN_GENERATED:I = 0x1

.field public static final ORIGIN_IMPORTED:I = 0x2

.field public static final ORIGIN_SECURELY_IMPORTED:I = 0x8

.field public static final ORIGIN_UNKNOWN:I = 0x4

.field public static final PURPOSE_DECRYPT:I = 0x2

.field public static final PURPOSE_ENCRYPT:I = 0x1

.field public static final PURPOSE_SIGN:I = 0x4

.field public static final PURPOSE_VERIFY:I = 0x8


# direct methods
.method static bridge synthetic -$$Nest$smgetSetFlags(I)[I
    .locals 0

    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeyProperties;->getSetFlags(I)[I

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSetBitCount(I)I
    .locals 2
    .param p0, "value"    # I

    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 385
    .local v0, "result":I
    :goto_0
    if-eqz p0, :cond_2

    .line 386
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 387
    add-int/lit8 v0, v0, 0x1

    .line 389
    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 391
    :cond_2
    return v0
.end method

.method private static getSetFlags(I)[I
    .locals 4
    .param p0, "flags"    # I

    .line 363
    if-nez p0, :cond_0

    .line 364
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 366
    :cond_0
    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeyProperties;->getSetBitCount(I)I

    move-result v0

    new-array v0, v0, [I

    .line 367
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 368
    .local v1, "resultOffset":I
    const/4 v2, 0x1

    .line 369
    .local v2, "flag":I
    :goto_0
    if-eqz p0, :cond_2

    .line 370
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    .line 371
    aput v2, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    .line 374
    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    .line 375
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_2
    return-object v0
.end method
