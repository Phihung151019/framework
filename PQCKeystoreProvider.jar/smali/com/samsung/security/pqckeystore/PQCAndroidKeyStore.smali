.class public Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;
.super Ljava/lang/Object;
.source "PQCAndroidKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PQCAndroidKeyStore"


# instance fields
.field private mNamespace:I

.field private mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mNamespace:I

    .line 57
    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->getSamsungPQCKeystoreService()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 58
    return-void
.end method

.method private getKeyMetadata(Ljava/lang/String;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 170
    if-eqz p1, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 177
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_0
    new-instance v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda2;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->handleRemoteExceptionSamsungPQCOperation(Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v1, "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    return-object v1

    .line 180
    .end local v1    # "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 182
    const-string v2, "PQCAndroidKeyStore"

    const-string v3, "Could not get key metadata from Keystore."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 171
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized getSamsungPQCKeystoreService()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .locals 2

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "PQCAndroidKeyStore"

    const-string v1, "get PQC operation binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, "android.security.samsungpqcoperation"

    .line 305
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 307
    .end local p0    # "this":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTargetDomain()I
    .locals 2

    .line 164
    iget v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x2

    .line 164
    :goto_0
    return v0
.end method

.method private handleRemoteExceptionSamsungPQCOperation(Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 290
    .local p1, "request":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;, "Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest<TR;>;"
    const-string v0, ""

    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->getSamsungPQCKeystoreService()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-result-object v1

    .line 292
    .local v1, "service":Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;->execute(Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PQCAndroidKeyStore"

    const-string v4, "Cannot connect to SamsungKeystore daemon."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    new-instance v3, Landroid/security/KeyStoreException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 293
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 294
    .local v2, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Landroid/security/KeyStoreException;

    iget v4, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v3, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method static synthetic lambda$deleteEntry$0(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Ljava/lang/Integer;
    .locals 1
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-interface {p1, p0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getKeyMetadata$1(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .locals 1
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-interface {p1, p0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadAndroidKeyStoreKeyFromKeystore$2(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .locals 1
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-interface {p1, p0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method private makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 156
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 157
    iget v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 158
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 159
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 160
    return-object v0
.end method

.method private makePQCAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;I)Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;
    .locals 10
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .param p3, "algorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 258
    iget-object v0, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    .line 264
    .local v0, "x509PublicCert":[B
    invoke-static {v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 265
    .local v1, "parsedX509Certificate":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 272
    .local v2, "publicKey":Ljava/security/PublicKey;
    const/4 v3, 0x0

    .line 273
    .local v3, "keyAlgorithm":Ljava/lang/String;
    const/16 v4, 0xc0

    if-ne p3, v4, :cond_0

    .line 274
    const-string v3, "ML-DSA"

    move-object v8, v3

    goto :goto_0

    .line 275
    :cond_0
    const/16 v4, 0xa0

    if-ne p3, v4, :cond_1

    .line 276
    const-string v3, "ML-KEM"

    move-object v8, v3

    goto :goto_0

    .line 275
    :cond_1
    move-object v8, v3

    .line 279
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    .local v8, "keyAlgorithm":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    .line 280
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .local v5, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v6, "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    invoke-direct/range {v4 .. v9}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;[BLjava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V

    .line 279
    return-object v4

    .line 266
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    .end local v5    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v6    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .end local v8    # "keyAlgorithm":Ljava/lang/String;
    .restart local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :cond_2
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .restart local v5    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v6    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "Failed to parse the X.509 certificate containing the public key. This likely indicates a hardware problem."

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    .end local v0    # "x509PublicCert":[B
    .end local v1    # "parsedX509Certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v6    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .restart local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :cond_3
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .restart local v5    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v6    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "Failed to obtain X.509 form of public key. Keystore has no public certificate stored."

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "bytes"    # [B

    .line 312
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 313
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 315
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "PQCAndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/4 v1, 0x0

    return-object v1
.end method

.method static toCertificates([B)Ljava/util/Collection;
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

    .line 323
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 324
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 326
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "PQCAndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method public deleteEntry(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 143
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_0
    new-instance v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda1;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->handleRemoteExceptionSamsungPQCOperation(Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 152
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :goto_0
    return-void

    .line 149
    .restart local v1    # "e":Landroid/security/KeyStoreException;
    :cond_0
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->getKeyMetadata(Ljava/lang/String;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v0

    .line 83
    .local v0, "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    return-object v1

    .line 87
    :cond_0
    iget-object v2, v0, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    .line 88
    .local v2, "encodedCert":[B
    const-string v3, "PQCAndroidKeyStore"

    if-eqz v2, :cond_1

    .line 89
    const-string v1, "getCertificate : get certificate."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {v2}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 94
    :cond_1
    iget-object v2, v0, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificateChain:[B

    .line 95
    if-eqz v2, :cond_2

    .line 96
    const-string v1, "getCertificate : get certificate chain."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v2}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 102
    :cond_2
    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->getKeyMetadata(Ljava/lang/String;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v0

    .line 108
    .local v0, "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    if-nez v2, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    iget-object v2, v0, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    invoke-static {v2}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 113
    .local v2, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_1

    .line 114
    return-object v1

    .line 119
    :cond_1
    iget-object v1, v0, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificateChain:[B

    .line 121
    .local v1, "caBytes":[B
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 122
    invoke-static {v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->toCertificates([B)Ljava/util/Collection;

    move-result-object v4

    .line 124
    .local v4, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v5, [Ljava/security/cert/Certificate;

    .line 126
    .local v3, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 127
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v6, 0x1

    .line 128
    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_0

    .line 131
    .end local v4    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "i":I
    :cond_2
    goto :goto_1

    .line 132
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    new-array v3, v3, [Ljava/security/cert/Certificate;

    .line 135
    .restart local v3    # "caList":[Ljava/security/cert/Certificate;
    :goto_1
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 137
    return-object v3

    .line 109
    .end local v1    # "caBytes":[B
    .end local v2    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_4
    :goto_2
    return-object v1
.end method

.method public getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    iget v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->mNamespace:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/samsungpqcoperation/ISamsungPqcOperation;Ljava/lang/String;I)Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;

    move-result-object v0
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 70
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Landroid/security/KeyStoreException;

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v1

    check-cast v2, Landroid/security/KeyStoreException;

    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 73
    const/4 v2, 0x0

    return-object v2

    .line 76
    :cond_0
    throw v0

    .line 66
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Landroid/security/keystore/KeyPermanentlyInvalidatedException;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public loadAndroidKeyStoreKeyFromKeystore(Landroid/security/samsungpqcoperation/ISamsungPqcOperation;Ljava/lang/String;I)Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
    .locals 10
    .param p1, "pqcOperation"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 192
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 193
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 194
    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    goto :goto_0

    .line 196
    :cond_0
    int-to-long v3, p3

    iput-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 197
    const/4 v3, 0x2

    iput v3, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 199
    :goto_0
    iput-object p2, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 200
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 202
    const/4 v4, 0x0

    .line 204
    .local v4, "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :try_start_0
    new-instance v5, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v5}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->handleRemoteExceptionSamsungPQCOperation(Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v4    # "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .local v5, "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    nop

    .line 221
    const/4 v3, 0x0

    .line 223
    .local v3, "keymasterAlgorithm":Ljava/lang/Integer;
    const/4 v4, -0x1

    .line 224
    .local v4, "keymasterDigest":I
    iget-object v6, v5, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->authorizations:[Landroid/security/samsungpqcoperation/PqcAuthorization;

    array-length v7, v6

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v8, v6, v1

    .line 225
    .local v8, "a":Landroid/security/samsungpqcoperation/PqcAuthorization;
    iget-object v9, v8, Landroid/security/samsungpqcoperation/PqcAuthorization;->keyParameter:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    iget v9, v9, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->tag:I

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    .line 230
    :sswitch_0
    if-ne v4, v2, :cond_1

    iget-object v9, v8, Landroid/security/samsungpqcoperation/PqcAuthorization;->keyParameter:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    iget-object v9, v9, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    invoke-virtual {v9}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->getDigest()I

    move-result v4

    goto :goto_2

    .line 227
    :sswitch_1
    iget-object v9, v8, Landroid/security/samsungpqcoperation/PqcAuthorization;->keyParameter:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    iget-object v9, v9, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    invoke-virtual {v9}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->getAlgorithm()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 228
    nop

    .line 224
    .end local v8    # "a":Landroid/security/samsungpqcoperation/PqcAuthorization;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_2
    const-string v1, "Key algorithm unknown"

    if-eqz v3, :cond_6

    .line 239
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xc0

    if-eq v2, v6, :cond_4

    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xa0

    if-ne v2, v6, :cond_3

    goto :goto_3

    .line 241
    :cond_3
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v2, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_4
    :goto_3
    nop

    .line 245
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v5, v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->makePQCAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;I)Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    move-result-object v1

    .line 247
    .local v1, "key":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
    instance-of v2, v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    if-eqz v2, :cond_5

    .line 248
    move-object v2, v1

    check-cast v2, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    invoke-virtual {v2}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getPrivateKey()Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    .line 250
    :cond_5
    return-object v1

    .line 236
    .end local v1    # "key":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
    :cond_6
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v2, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v3    # "keymasterAlgorithm":Ljava/lang/Integer;
    .end local v5    # "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .local v4, "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 215
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Failed to obtain information about key"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v1}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/UnrecoverableKeyException;

    throw v2

    .line 211
    :sswitch_2
    new-instance v2, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    const-string v3, "User changed or deleted their auth credentials"

    invoke-direct {v2, v3, v1}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 209
    :sswitch_3
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x10000002 -> :sswitch_1
        0x20000005 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_3
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
