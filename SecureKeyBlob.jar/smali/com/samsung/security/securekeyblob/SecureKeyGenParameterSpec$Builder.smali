.class public final Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "SecureKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mBlockModes:[Ljava/lang/String;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private mChallenge:[B

.field private mDNQualifier:[B

.field private mDeviceAttestation:Z

.field private mDevicePropertiesAttestationIncluded:Z

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mKeySize:I

.field private mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurposes:I

.field private mServiceTAName:[B

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V
    .locals 2
    .param p1, "sourceSpec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    .line 337
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getServiceTAName()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;-><init>([BLjava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getServiceTAName()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mServiceTAName:[B

    .line 340
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getDNQualifier()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDNQualifier:[B

    .line 341
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mKeySize:I

    .line 342
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getPurposes()I

    move-result v0

    iput v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mPurposes:I

    .line 343
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getChallenge()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mChallenge:[B

    .line 352
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isDeviceAttestation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDeviceAttestation:Z

    .line 353
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isVerifiableIntegrity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 354
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 355
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 356
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mServiceTAName:[B

    .line 278
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDNQualifier:[B

    .line 279
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mKeySize:I

    .line 280
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mPurposes:I

    .line 281
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 283
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mChallenge:[B

    .line 288
    iput-boolean v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDeviceAttestation:Z

    .line 289
    iput-boolean v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 290
    iput-boolean v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 291
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 304
    if-eqz p2, :cond_3

    .line 307
    if-eqz p1, :cond_2

    .line 310
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mServiceTAName:[B

    .line 312
    invoke-direct {p0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->getChallenge()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setChallenge([B)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 313
    const-string v0, "SHA-256"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 316
    const-string v0, "EC"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 318
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setPurpose(I)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    goto :goto_0

    .line 319
    :cond_0
    const-string v0, "RSA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 321
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setPurpose(I)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 323
    const-string v0, "ECB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 324
    const-string v0, "PKCS1Padding"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 325
    const-string v0, "PSS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getChallenge()[B
    .locals 4

    .line 582
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 583
    .local v0, "rand":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 585
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "ch":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public build()Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    .locals 18

    .line 597
    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    iget-object v2, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mServiceTAName:[B

    iget-object v4, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDNQualifier:[B

    iget v5, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mKeySize:I

    iget v6, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mPurposes:I

    iget-object v7, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    iget-object v9, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mChallenge:[B

    iget-boolean v13, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDeviceAttestation:Z

    iget-boolean v14, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mVerifiableIntegrity:Z

    iget-boolean v15, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;-><init>(Ljava/lang/String;[B[BII[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BZZZLjavax/security/auth/x500/X500Principal;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    .line 504
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 505
    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 574
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 575
    return-object p0
.end method

.method public setChallenge([B)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "challenge"    # [B

    .line 514
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mChallenge:[B

    .line 515
    return-object p0
.end method

.method public setDNQualifier([B)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "dNQualifier"    # [B

    .line 374
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDNQualifier:[B

    .line 375
    return-object p0
.end method

.method public setDeviceAttestation(Z)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "requested"    # Z

    .line 527
    iput-boolean p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDeviceAttestation:Z

    .line 528
    return-object p0
.end method

.method public setDevicePropertiesAttestationIncluded(Z)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "devicePropertiesAttestationIncluded"    # Z

    .line 564
    iput-boolean p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 565
    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .line 423
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 424
    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 473
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 474
    return-object p0
.end method

.method public setKeySize(I)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    .line 390
    if-ltz p1, :cond_0

    .line 393
    iput p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mKeySize:I

    .line 394
    return-object p0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setMgf1Digests([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "mgf1Digests"    # [Ljava/lang/String;

    .line 449
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 450
    return-object p0
.end method

.method public setPurpose(I)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "purpose"    # I

    .line 399
    iput p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mPurposes:I

    .line 400
    return-object p0
.end method

.method public setServiceTAName([B)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "serviceTAName"    # [B

    .line 364
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mServiceTAName:[B

    .line 365
    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 489
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public setVerifiableIntegrity(Z)Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "checked"    # Z

    .line 539
    iput-boolean p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 540
    return-object p0
.end method
