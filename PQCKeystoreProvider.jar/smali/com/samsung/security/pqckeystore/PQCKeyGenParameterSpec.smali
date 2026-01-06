.class public final Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "PQCKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

.field private static final KYBER_1024_KEY_SIZE:I = 0xc60

.field private static final KYBER_512_KEY_SIZE:I = 0x660

.field private static final KYBER_768_KEY_SIZE:I = 0x960

.field private static final MLDSA_44_KEY_SIZE:I = 0x9e0

.field private static final MLDSA_65_KEY_SIZE:I = 0xfa0

.field private static final MLDSA_87_KEY_SIZE:I = 0x1300


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private mDigests:[Ljava/lang/String;

.field private final mKeySize:I

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mNamespace:I

.field private final mPurposes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 24
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 26
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 27
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 28
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySize"    # I
    .param p5, "purposes"    # I
    .param p6, "digests"    # [Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mNamespace:I

    .line 72
    iput-object p3, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mKeySize:I

    .line 74
    iput p5, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mPurposes:I

    .line 75
    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 76
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cloneIfNotNull([B)[B
    .locals 1
    .param p1, "value"    # [B

    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeySize()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 107
    iget v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mNamespace:I

    return v0
.end method

.method public getPurposes()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
