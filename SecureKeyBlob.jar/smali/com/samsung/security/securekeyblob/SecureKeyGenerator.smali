.class public Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
.super Ljava/lang/Object;
.source "SecureKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest;
    }
.end annotation


# static fields
.field private static final DEFAULT_MGF1_DIGEST:Ljava/lang/String; = "SHA-1"

.field private static final FEATURE_SECURE_KEY_SERVICE:Ljava/lang/String; = "samsung.software.secure_key_service"

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field private static final SAMSUNG_ATTESTESTATION_DEVICE_IDS_ROOT:Ljava/lang/String; = "samsungDeviceIds"

.field private static final SAMSUNG_ATTESTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field private static final TAG:Ljava/lang/String; = "SecureKeyGenerator"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore2;

.field private mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;


# direct methods
.method public static synthetic $r8$lambda$TAHDe-k6b5dSzaTBw3vdUTnj81w(Lcom/samsung/security/securekeyblob/SecureKeyGenerator;Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;Landroid/security/securekeygeneration/ISecureKeyGeneration;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->lambda$generateKeyPair$0(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;Landroid/security/securekeygeneration/ISecureKeyGeneration;)Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    .line 95
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mKeyStore:Landroid/security/KeyStore2;

    .line 96
    return-void
.end method

.method private checkValidKeyGenParameterSpec(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V
    .locals 3
    .param p1, "spec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 231
    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getServiceTAName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_0
    nop

    .line 244
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getKeySize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->checkValidKeySize(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    return-void

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "challenge should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecureKeyGenParameterSpec should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static checkValidKeySize(Ljava/lang/String;I)V
    .locals 3
    .param p0, "keymasterAlgorithm"    # Ljava/lang/String;
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :pswitch_0
    const/16 v0, 0x200

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_1

    goto :goto_2

    .line 564
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :pswitch_1
    const/16 v0, 0xe0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x180

    if-eq p1, v0, :cond_3

    const/16 v0, 0x209

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 558
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructAttestationArguments(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;
    .locals 4
    .param p1, "spec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, -0x6ffffd3c

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getChallenge()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isDeviceAttestation()Z

    move-result v1

    const v2, -0x6ffff7ca

    if-eqz v1, :cond_0

    .line 325
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 326
    const-string v3, "samsungDeviceIds"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 325
    invoke-static {v2, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 329
    const-string v3, "samsung"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 328
    invoke-static {v2, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 332
    .local v1, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v1, :cond_1

    const-string v2, "RFC1779"

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    nop

    .line 334
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 333
    const v3, -0x6ffff7c9

    invoke-static {v3, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isVerifiableIntegrity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const v2, 0x700008fe

    invoke-static {v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    return-object v2
.end method

.method private constructKeyGenerationArguments(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;
    .locals 5
    .param p1, "spec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getKeySize()I

    move-result v1

    .line 255
    .local v1, "keySizeBits":I
    const v2, 0x30000003

    invoke-static {v2, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "EC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const v3, 0x10000002

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 263
    :pswitch_0
    const/4 v2, 0x3

    invoke-static {v3, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const v2, 0x1000000a

    invoke-static {v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->keySizeAndNameToEcCurve(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :pswitch_1
    invoke-static {v3, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const v4, 0x500000c8

    invoke-static {v4, v2, v3}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    nop

    .line 268
    :goto_2
    nop

    .line 269
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getPurposes()I

    move-result v2

    .line 268
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v2

    new-instance v3, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 272
    nop

    .line 273
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    new-instance v3, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getKeymasterMgf1Digests(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)[I

    move-result-object v2

    .line 278
    .local v2, "keymasterMgf1Digests":[I
    nop

    .line 279
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    new-instance v4, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;[I)V

    invoke-static {v3, v4}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 303
    nop

    .line 304
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    new-instance v4, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 307
    nop

    .line 308
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    new-instance v4, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 312
    const v3, -0x6ffff69f

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getServiceTAName()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getDNQualifier()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 314
    const v3, -0x6ffff69d

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getDNQualifier()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCertificates(Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .line 496
    .local p0, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 497
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    const-string v1, "SecureKeyGenerator"

    const-string v2, "there is no cert chain byte"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, 0x0

    return-object v1

    .line 502
    :cond_0
    const/4 v1, 0x0

    .line 503
    .local v1, "certChains":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 504
    .local v2, "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [B

    .line 506
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->toCertificates([B)Ljava/util/Collection;

    move-result-object v3

    .line 510
    .local v3, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 512
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .line 513
    .local v5, "caList":[Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 514
    .local v6, "index":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v5, v6

    move v6, v7

    goto :goto_1

    .line 519
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_2
    return-object v5
.end method

.method private static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .param p0, "errorCode"    # I

    .line 460
    if-lez p0, :cond_0

    .line 462
    sparse-switch p0, :sswitch_data_0

    .line 478
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 476
    :sswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 474
    :sswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 472
    :sswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 470
    :sswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 468
    :sswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 466
    :sswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 464
    :sswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 482
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 489
    new-instance v0, Landroid/security/KeyStoreException;

    .line 490
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 489
    return-object v0

    .line 486
    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_0
    .end packed-switch
.end method

.method private getKeymasterMgf1Digests(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)[I
    .locals 6
    .param p1, "spec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    .line 185
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v0

    .line 187
    .local v0, "mgfDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 188
    .local v1, "keymasterMgf1Digests":[I
    const/4 v2, 0x0

    .line 189
    .local v2, "offset":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "digest":Ljava/lang/String;
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 191
    nop

    .end local v4    # "digest":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 192
    goto :goto_0

    .line 193
    .end local v0    # "mgfDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "offset":I
    :cond_0
    goto :goto_1

    .line 195
    .end local v1    # "keymasterMgf1Digests":[I
    :cond_1
    nop

    .line 196
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    move-object v1, v0

    .line 198
    .restart local v1    # "keymasterMgf1Digests":[I
    :goto_1
    return-object v1
.end method

.method private declared-synchronized getSamsungSecurekeyGenerationService()Landroid/security/securekeygeneration/ISecureKeyGeneration;
    .locals 1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "android.security.securekeygeneration"

    .line 224
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/securekeygeneration/ISecureKeyGeneration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    .line 226
    .end local p0    # "this":Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleRemoteExceptionSecureKeyGeneration(Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 209
    .local p1, "request":Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest;, "Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest<TR;>;"
    const-string v0, ""

    const-string v1, "SecureKeyGenerator"

    invoke-direct {p0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getSamsungSecurekeyGenerationService()Landroid/security/securekeygeneration/ISecureKeyGeneration;

    move-result-object v2

    .line 211
    .local v2, "service":Landroid/security/securekeygeneration/ISecureKeyGeneration;
    :try_start_0
    invoke-interface {p1, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest;->execute(Landroid/security/securekeygeneration/ISecureKeyGeneration;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 215
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Cannot connect to SamsungKeystore daemon."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 212
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 213
    .local v3, "e":Landroid/os/ServiceSpecificException;
    const-string v4, "KeyStore exception"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    new-instance v1, Landroid/security/KeyStoreException;

    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static keySizeAndNameToEcCurve(I)I
    .locals 3
    .param p0, "keySizeBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 536
    sparse-switch p0, :sswitch_data_0

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC curve keysize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 542
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 540
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 538
    :sswitch_3
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_2
        0x180 -> :sswitch_1
        0x209 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$constructKeyGenerationArguments$1(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 270
    const v0, 0x20000001

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method static synthetic lambda$constructKeyGenerationArguments$2(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "blockMode"    # Ljava/lang/Integer;

    .line 274
    const v0, 0x20000004

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method static synthetic lambda$constructKeyGenerationArguments$3(Ljava/util/List;[ZLjava/lang/Integer;)V
    .locals 3
    .param p0, "params"    # Ljava/util/List;
    .param p1, "hasDefaultMgf1DigestBeenAdded"    # [Z
    .param p2, "mgf1Digests"    # Ljava/lang/Integer;

    .line 285
    nop

    .line 286
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    const v1, 0x200000cb

    invoke-static {v1, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    .line 289
    const-string v2, "SHA-1"

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 290
    return-void
.end method

.method static synthetic lambda$constructKeyGenerationArguments$4(Ljava/util/List;[ILjava/lang/Integer;)V
    .locals 3
    .param p0, "params"    # Ljava/util/List;
    .param p1, "keymasterMgf1Digests"    # [I
    .param p2, "padding"    # Ljava/lang/Integer;

    .line 280
    const v0, 0x20000006

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 283
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 284
    .local v0, "hasDefaultMgf1DigestBeenAdded":[Z
    new-instance v2, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;[Z)V

    invoke-static {p1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 295
    aget-boolean v1, v0, v1

    if-nez v1, :cond_0

    .line 296
    nop

    .line 298
    const-string v1, "SHA-1"

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v1

    .line 296
    const v2, 0x200000cb

    invoke-static {v2, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v0    # "hasDefaultMgf1DigestBeenAdded":[Z
    :cond_0
    return-void
.end method

.method static synthetic lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "padding"    # Ljava/lang/Integer;

    .line 305
    const v0, 0x20000006

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method static synthetic lambda$constructKeyGenerationArguments$6(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "digest"    # Ljava/lang/Integer;

    .line 309
    const v0, 0x20000005

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private synthetic lambda$generateKeyPair$0(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;Landroid/security/securekeygeneration/ISecureKeyGeneration;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 2
    .param p1, "spec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    .param p2, "service"    # Landroid/security/securekeygeneration/ISecureKeyGeneration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->constructKeyGenerationArguments(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->constructAttestationArguments(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/security/securekeygeneration/ISecureKeyGeneration;->generateSecureKey([Landroid/hardware/security/keymint/KeyParameter;[Landroid/hardware/security/keymint/KeyParameter;)Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeBool(I)Landroid/hardware/security/keymint/KeyParameter;
    .locals 4
    .param p0, "tag"    # I

    .line 389
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 390
    .local v0, "type":I
    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_0

    .line 393
    new-instance v1, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v1}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 394
    .local v1, "p":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v1, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 395
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 396
    return-object v1

    .line 391
    .end local v1    # "p":Landroid/hardware/security/keymint/KeyParameter;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a boolean tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .locals 3
    .param p0, "tag"    # I
    .param p1, "b"    # [B

    .line 408
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_0

    .line 411
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 412
    .local v0, "p":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 413
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 414
    return-object v0

    .line 409
    .end local v0    # "p":Landroid/hardware/security/keymint/KeyParameter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a bytes tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # I

    .line 426
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 427
    .local v0, "kp":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 428
    sparse-switch p0, :sswitch_data_0

    .line 449
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an enum or repeatable enum tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :sswitch_0
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->paddingMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 447
    goto :goto_0

    .line 440
    :sswitch_1
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 441
    goto :goto_0

    .line 436
    :sswitch_2
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blockMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 437
    goto :goto_0

    .line 430
    :sswitch_3
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 431
    goto :goto_0

    .line 443
    :sswitch_4
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 444
    goto :goto_0

    .line 433
    :sswitch_5
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 434
    nop

    .line 451
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x10000002 -> :sswitch_5
        0x1000000a -> :sswitch_4
        0x20000001 -> :sswitch_3
        0x20000004 -> :sswitch_2
        0x20000005 -> :sswitch_1
        0x20000006 -> :sswitch_0
        0x200000cb -> :sswitch_1
    .end sparse-switch
.end method

.method static makeInt(II)Landroid/hardware/security/keymint/KeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # I

    .line 351
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 352
    .local v0, "type":I
    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an int or repeatable int tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_1
    :goto_0
    new-instance v1, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v1}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 356
    .local v1, "p":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v1, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 357
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 358
    return-object v1
.end method

.method static makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # J

    .line 370
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 371
    .local v0, "type":I
    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_1

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a long or repeatable long tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_1
    :goto_0
    new-instance v1, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v1}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 375
    .local v1, "p":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v1, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 376
    invoke-static {p1, p2}, Landroid/hardware/security/keymint/KeyParameterValue;->longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 377
    return-object v1
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 525
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 526
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 528
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "SecureKeyGenerator"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method public generateKeyPair(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)Lcom/samsung/security/securekeyblob/SecureKeyResult;
    .locals 7
    .param p1, "spec"    # Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;,
            Lcom/samsung/security/securekeyblob/DeviceAttestationException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->checkValidKeyGenParameterSpec(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V

    .line 121
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    new-instance v1, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/security/securekeyblob/SecureKeyGenerator;Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V

    invoke-direct {p0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->handleRemoteExceptionSecureKeyGeneration(Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/securekeygeneration/SecureKeyInfo;

    .line 125
    .local v1, "result":Landroid/security/securekeygeneration/SecureKeyInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/security/securekeygeneration/SecureKeyInfo;->attestedCertificates:[Landroid/hardware/security/keymint/Certificate;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, v1, Landroid/security/securekeygeneration/SecureKeyInfo;->attestedCertificates:[Landroid/hardware/security/keymint/Certificate;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 129
    .local v5, "c":Landroid/hardware/security/keymint/Certificate;
    iget-object v6, v5, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    nop

    .end local v5    # "c":Landroid/hardware/security/keymint/Certificate;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 137
    invoke-static {v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getCertificates(Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 139
    .local v2, "attestResults":[Ljava/security/cert/X509Certificate;
    new-instance v3, Lcom/samsung/security/securekeyblob/SecureKeyResult;

    iget-object v4, v1, Landroid/security/securekeygeneration/SecureKeyInfo;->blob:[B

    invoke-virtual {p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->getServiceTAName()[B

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/samsung/security/securekeyblob/SecureKeyResult;-><init>([B[Ljava/security/cert/X509Certificate;[B)V

    return-object v3

    .line 133
    .end local v2    # "attestResults":[Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attestation certificate chain contained "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries. At least three are required."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
    .end local p1    # "spec":Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    throw v2

    .line 126
    .restart local p0    # "this":Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
    .restart local p1    # "spec":Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "SecureKeyGeneration fail"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
    .end local p1    # "spec":Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    throw v2
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .end local v1    # "result":Landroid/security/securekeygeneration/SecureKeyInfo;
    .restart local p0    # "this":Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
    .restart local p1    # "spec":Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x42

    if-ne v1, v2, :cond_3

    .line 142
    new-instance v1, Lcom/samsung/security/securekeyblob/DeviceAttestationException;

    .line 144
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    const-string v3, "Failed to generate attestation certificate chain with deviceIds"

    invoke-direct {v1, v3, v2}, Lcom/samsung/security/securekeyblob/DeviceAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_3
    new-instance v1, Ljava/security/ProviderException;

    .line 147
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    const-string v3, "Failed to generate attestation certificate chain"

    invoke-direct {v1, v3, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateKeyPair([BLjava/lang/String;)Lcom/samsung/security/securekeyblob/SecureKeyResult;
    .locals 1
    .param p1, "serviceName"    # [B
    .param p2, "keyAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;,
            Lcom/samsung/security/securekeyblob/DeviceAttestationException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;-><init>([BLjava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec$Builder;->build()Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->generateKeyPair(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)Lcom/samsung/security/securekeyblob/SecureKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public isSupportSecureKeyService(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    const-string v1, "samsung.software.secure_key_service"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 179
    return v0
.end method
