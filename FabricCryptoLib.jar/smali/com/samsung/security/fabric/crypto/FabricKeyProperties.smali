.class public Lcom/samsung/security/fabric/crypto/FabricKeyProperties;
.super Ljava/lang/Object;
.source "FabricKeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EcCurve;,
        Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EncryptionPadding;,
        Lcom/samsung/security/fabric/crypto/FabricKeyProperties$Digest;,
        Lcom/samsung/security/fabric/crypto/FabricKeyProperties$BlockMode;,
        Lcom/samsung/security/fabric/crypto/FabricKeyProperties$KeyAlgorithm;
    }
.end annotation


# static fields
.field public static final BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final DEFAULT_EC_NIST_CURVE_NAME:Ljava/lang/String; = "P-256"

.field public static final DEFAULT_KEM_NAME:Ljava/lang/String; = "KEM-1024"

.field public static final DIGEST_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final DIGEST_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final DIGEST_SHA384:Ljava/lang/String; = "SHA-384"

.field public static final DIGEST_SHA512:Ljava/lang/String; = "SHA-512"

.field public static final EC_CURVE_P_256:Ljava/lang/String; = "P-256"

.field public static final EC_CURVE_P_384:Ljava/lang/String; = "P-384"

.field public static final EC_CURVE_P_521:Ljava/lang/String; = "P-521"

.field public static final EC_CURVE_X25519:Ljava/lang/String; = "X25519"

.field public static final ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final ENCRYPT_MODE:I = 0x1

.field public static final KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final KEY_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field public static final KEY_ALGORITHM_KEM:Ljava/lang/String; = "KEM"

.field public static final KEY_ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field public static final KM_ALGORITHM_AES:I = 0x20

.field public static final KM_ALGORITHM_EC:I = 0x3

.field public static final KM_ALGORITHM_KEM:I = 0x7

.field public static final KM_ALGORITHM_RSA:I = 0x1

.field public static final KM_BLOCK_MODE_GCM:I = 0x20

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA256:I = 0x4

.field public static final KM_DIGEST_SHA384:I = 0x5

.field public static final KM_DIGEST_SHA512:I = 0x6

.field public static final KM_EC_CURVE_P_256:I = 0x1

.field public static final KM_EC_CURVE_P_384:I = 0x2

.field public static final KM_EC_CURVE_P_521:I = 0x3

.field public static final KM_EC_CURVE_X25519:I = 0x4

.field public static final KM_PAD_NONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
