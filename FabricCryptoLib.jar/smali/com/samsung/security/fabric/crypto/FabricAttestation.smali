.class public Lcom/samsung/security/fabric/crypto/FabricAttestation;
.super Ljava/lang/Object;
.source "FabricAttestation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;,
        Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field private static final DEFAULT_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final EC_DEFAULT_CURVE_NAME:Ljava/lang/String; = "P-256"

.field private static final SAMSUNG_ATTESTATION_SERVICE:Ljava/lang/String; = "android.security.samsungattestation"

.field private static final SAMSUNG_ATTESTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field private static final TAG:Ljava/lang/String; = "FabricAttestation"


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mKeyStore:Landroid/security/KeyStore2;

.field private mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 68
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mKeyStore:Landroid/security/KeyStore2;

    .line 69
    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private attestKey([B)Ljava/lang/Iterable;
    .locals 8
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, -0x6ffffd3c

    invoke-static {v1, p1}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 274
    const-string v2, "samsung"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 272
    const v2, -0x6ffff7ca

    invoke-static {v2, v1}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const v1, 0x700008fe

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :try_start_0
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    .line 282
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    new-instance v3, Lcom/samsung/security/fabric/crypto/FabricAttestation$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/samsung/security/fabric/crypto/FabricAttestation$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->handleRemoteExceptionSamsungAttestation(Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/Certificate;

    .line 286
    .local v3, "result":[Landroid/hardware/security/keymint/Certificate;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 287
    .local v6, "c":Landroid/hardware/security/keymint/Certificate;
    iget-object v7, v6, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .end local v6    # "c":Landroid/hardware/security/keymint/Certificate;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "result":[Landroid/hardware/security/keymint/Certificate;
    :cond_0
    goto :goto_1

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 296
    .end local v2    # "e":Landroid/security/KeyStoreException;
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 301
    return-object v1

    .line 297
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attestation certificate chain contained "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 298
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries. At least three are required."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    .restart local v2    # "e":Landroid/security/KeyStoreException;
    :cond_2
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to generate attestation certificate chain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 292
    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private generateKeyPair(Ljava/lang/String;)V
    .locals 5
    .param p1, "ecCurve"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 248
    :try_start_0
    const-string v0, "EC"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 249
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v2, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "SHA-256"

    const-string v3, "SHA-384"

    const-string v4, "SHA-512"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 255
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 256
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    nop

    .line 262
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 260
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    if-nez v0, :cond_0

    .line 383
    const-string v0, "android.security.samsungattestation"

    .line 384
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 386
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricAttestation;
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 381
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleRemoteExceptionSamsungAttestation(Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 368
    .local p1, "request":Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;, "Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest<TR;>;"
    const-string v0, "FabricAttestation"

    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v1

    .line 370
    .local v1, "service":Landroid/security/samsungattestation/ISamsungAttestation;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;->execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Cannot connect to Fabric Crypto daemon."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v0, Landroid/security/KeyStoreException;

    const/4 v3, -0x4

    const-string v4, "Cannot connect to Fabric Crypto daemon"

    invoke-direct {v0, v3, v4}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 371
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 372
    .local v2, "e":Landroid/os/ServiceSpecificException;
    const-string v3, "Fabric Crypto Attestation exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    new-instance v0, Landroid/security/KeyStoreException;

    iget v4, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v4, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$attestKey$0(Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;
    .locals 1
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "args"    # Ljava/util/List;
    .param p2, "service"    # Landroid/security/samsungattestation/ISamsungAttestation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    nop

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 283
    invoke-interface {p2, p0, v0}, Landroid/security/samsungattestation/ISamsungAttestation;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object v0

    return-object v0
.end method

.method private storeCertificateChain(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 306
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz p1, :cond_3

    .line 310
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "FabricAttestation"

    if-nez v1, :cond_0

    .line 312
    const-string v1, "there is no cert chain byte"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 317
    .local v1, "userCert":[B
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    const-string v3, "there is no ca cert"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 322
    :cond_1
    const/4 v2, 0x0

    .line 323
    .local v2, "caCert":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 324
    .local v3, "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [B

    .line 326
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 330
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    .line 331
    .local v4, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v5, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mKeyStore:Landroid/security/KeyStore2;

    .line 332
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 331
    invoke-virtual {v5, v4, v1, v6}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v4    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    nop

    .line 337
    return-void

    .line 333
    :catch_0
    move-exception v4

    .line 334
    .local v4, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v4}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 335
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-virtual {v4}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .end local v1    # "userCert":[B
    .end local v2    # "caCert":[B
    .end local v3    # "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Landroid/security/KeyStoreException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 341
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 342
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 344
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "FabricAttestation"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    throw v0
.end method

.method private toCertificates([B)Ljava/util/Collection;
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 352
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 353
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 355
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "FabricAttestation"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    throw v0
.end method


# virtual methods
.method public deleteKey()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 237
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    const/4 v2, -0x7

    if-ne v1, v2, :cond_0

    .line 244
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :goto_0
    return-void

    .line 240
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    :cond_0
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 241
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public existKey()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    return v1

    .line 221
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 222
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v2, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 223
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 225
    return v1
.end method

.method public generateKeyPairWithKeyAttestation([B)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 81
    const-string v0, "P-256"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->generateKeyPairWithKeyAttestation([BLjava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPairWithKeyAttestation([BLjava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "challenge"    # [B
    .param p2, "ecCurve"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0, p2}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->generateKeyPair(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->attestKey([B)Ljava/lang/Iterable;

    move-result-object v0

    .line 108
    .local v0, "certChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->storeCertificateChain(Ljava/lang/Iterable;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "certChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The challenge cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ecCurve cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 129
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v1, "response":Landroid/system/keystore2/KeyEntryResponse;
    const-string v2, "FabricAttestation"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v4, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v4, v4, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v4, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    iget-object v4, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v4, v4, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-direct {p0, v4}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 137
    .local v4, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_1

    .line 138
    const-string v5, "result of certificate conversion is empty"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    return-object v2

    .line 144
    :cond_1
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 146
    .local v2, "caBytes":[B
    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 147
    invoke-direct {p0, v2}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->toCertificates([B)Ljava/util/Collection;

    move-result-object v6

    .line 149
    .local v6, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/2addr v7, v5

    new-array v5, v7, [Ljava/security/cert/X509Certificate;

    .line 151
    .local v5, "caList":[Ljava/security/cert/X509Certificate;
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 152
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v8, 0x1

    .line 153
    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 154
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    aput-object v10, v5, v8

    move v8, v9

    goto :goto_0

    .line 156
    .end local v6    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    .end local v9    # "i":I
    :cond_2
    goto :goto_1

    .line 157
    .end local v5    # "caList":[Ljava/security/cert/X509Certificate;
    :cond_3
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .line 160
    .restart local v5    # "caList":[Ljava/security/cert/X509Certificate;
    :goto_1
    aput-object v4, v5, v3

    .line 162
    return-object v5

    .line 132
    .end local v2    # "caBytes":[B
    .end local v4    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v5    # "caList":[Ljava/security/cert/X509Certificate;
    :cond_4
    :goto_2
    const-string v4, "Entry is empty"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-array v2, v3, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 163
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 186
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    .line 188
    .local v1, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 189
    const-string v3, "FabricAttestation"

    const-string v4, "Entry is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v2

    .line 193
    :cond_0
    iget-object v3, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v3, v3, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 194
    .local v3, "encodedCert":[B
    if-eqz v3, :cond_1

    .line 195
    invoke-direct {p0, v3}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 198
    :cond_1
    iget-object v4, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v4, v4, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 199
    .end local v3    # "encodedCert":[B
    .local v4, "encodedCert":[B
    if-eqz v4, :cond_2

    .line 200
    invoke-direct {p0, v4}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 203
    :cond_2
    return-object v2

    .line 204
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .end local v4    # "encodedCert":[B
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;->mAlias:Ljava/lang/String;

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;-><init>(Lcom/samsung/security/fabric/crypto/FabricAttestation;Ljava/lang/String;Ljava/security/Signature;Lcom/samsung/security/fabric/crypto/FabricAttestation-IA;)V

    return-object v0
.end method
