.class public final Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "SecureKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_ALGORITHM:Ljava/lang/String; = "EC"

.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mChallenge:[B

.field private final mDNQualifier:[B

.field private final mDeviceAttestation:Z

.field private final mDevicePropertiesAttestationIncluded:Z

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mKeySize:I

.field private final mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPurposes:I

.field private final mServiceTAName:[B

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[BII[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BZZZLjavax/security/auth/x500/X500Principal;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "serviceTAName"    # [B
    .param p3, "dnQualifier"    # [B
    .param p4, "keySize"    # I
    .param p5, "purposes"    # I
    .param p6, "digests"    # [Ljava/lang/String;
    .param p8, "encryptionPaddings"    # [Ljava/lang/String;
    .param p9, "signaturePaddings"    # [Ljava/lang/String;
    .param p10, "blockModes"    # [Ljava/lang/String;
    .param p11, "challenge"    # [B
    .param p12, "isDeviceAttestation"    # Z
    .param p13, "isCheckVerifiableIntegrity"    # Z
    .param p14, "devicePropertiesAttestationIncluded"    # Z
    .param p15, "certificateSubject"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[BII[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[BZZZ",
            "Ljavax/security/auth/x500/X500Principal;",
            ")V"
        }
    .end annotation

    .line 70
    .local p7, "mgf1Digests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mServiceTAName:[B

    .line 74
    invoke-direct {p0, p3}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->cloneIfNotNull([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDNQualifier:[B

    .line 75
    iput p4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mKeySize:I

    .line 76
    iput p5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mPurposes:I

    .line 77
    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 78
    if-eqz p7, :cond_0

    move-object v0, p7

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 79
    nop

    .line 80
    invoke-static {p8}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    .line 81
    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 82
    invoke-static {p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 85
    move-object/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->cloneIfNotNull([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mChallenge:[B

    .line 86
    move/from16 v1, p12

    iput-boolean v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDeviceAttestation:Z

    .line 87
    move/from16 v2, p13

    iput-boolean v2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mVerifiableIntegrity:Z

    .line 88
    move/from16 v3, p14

    iput-boolean v3, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    .line 89
    move-object/from16 v4, p15

    iput-object v4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 90
    return-void
.end method

.method private cloneIfNotNull([B)[B
    .locals 1
    .param p1, "value"    # [B

    .line 617
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

    .line 97
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getChallenge()[B
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mChallenge:[B

    return-object v0
.end method

.method public getDNQualifier()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDNQualifier:[B

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getMgf1Digests()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mask generation function (MGF) not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPurposes()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public getServiceTAName()[B
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mServiceTAName:[B

    return-object v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceAttestation()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDeviceAttestation:Z

    return v0
.end method

.method public isDevicePropertiesAttestationIncluded()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    return v0
.end method

.method public isMgf1DigestsSpecified()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVerifiableIntegrity()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mVerifiableIntegrity:Z

    return v0
.end method
