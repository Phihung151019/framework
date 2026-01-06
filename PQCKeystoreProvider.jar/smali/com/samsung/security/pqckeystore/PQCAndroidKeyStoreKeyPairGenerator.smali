.class public Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;
.super Ljava/lang/Object;
.source "PQCAndroidKeyStoreKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KYBER_DEFAULT_KEY_SIZE:I = 0x660

.field private static final MLDSA_DEFAULT_KEY_SIZE:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "PQCAndroidKeyStoreKeyPairGenerator"


# instance fields
.field private mEntryAlias:Ljava/lang/String;

.field private mEntryNamespace:I

.field private mKeySizeBits:I

.field private mKeymasterAlgorithm:I

.field private mKeymasterDigests:[I

.field private mKeymasterPurposes:[I

.field private final mOriginalKeymasterAlgorithm:Ljava/lang/String;

.field private mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

.field private mSpec:Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterAlgorithm:I

    .line 74
    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mOriginalKeymasterAlgorithm:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private constructKeyGenerationArguments()[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 201
    const-string v0, "constructKeyGenerationArguments sample spec"

    const-string v1, "PQCAndroidKeyStoreKeyPairGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;>;"
    const v2, 0x30000003

    iget v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeySizeBits:I

    invoke-static {v2, v3}, Lcom/samsung/security/pqckeystore/PQCParameterUtils;->makeInt(II)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructKeyGenerationArguments add key size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeySizeBits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const v2, 0x10000002

    iget v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterAlgorithm:I

    invoke-static {v2, v3}, Lcom/samsung/security/pqckeystore/PQCParameterUtils;->makeEnum(II)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructKeyGenerationArguments add algorithm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mOriginalKeymasterAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterPurposes:[I

    new-instance v2, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterDigests:[I

    new-instance v2, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    return-object v1
.end method

.method private static getDefaultKeySize(I)I
    .locals 3
    .param p0, "keymasterAlgorithm"    # I

    .line 127
    sparse-switch p0, :sswitch_data_0

    .line 133
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :sswitch_0
    const/16 v0, 0xfa0

    return v0

    .line 129
    :sswitch_1
    const/16 v0, 0x660

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .param p0, "errorCode"    # I

    .line 238
    if-lez p0, :cond_0

    .line 240
    sparse-switch p0, :sswitch_data_0

    .line 256
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 254
    :sswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 252
    :sswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 250
    :sswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 248
    :sswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 246
    :sswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 244
    :sswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 242
    :sswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key master exceptino"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

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
.end method

.method private declared-synchronized getSamsungPQCKeystoreService()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .locals 2

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "PQCAndroidKeyStoreKeyPairGenerator"

    const-string v1, "get PQC operation binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "android.security.samsungpqcoperation"

    .line 160
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 162
    .end local p0    # "this":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleRemoteExceptionSamsungPQCOperation(Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 144
    .local p1, "request":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest;, "Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest<TR;>;"
    const-string v0, ""

    const-string v1, "PQCAndroidKeyStoreKeyPairGenerator"

    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->getSamsungPQCKeystoreService()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-result-object v2

    .line 146
    .local v2, "service":Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    :try_start_0
    invoke-interface {p1, v2}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest;->execute(Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Cannot connect to SamsungKeystore daemon."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 147
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "e":Landroid/os/ServiceSpecificException;
    const-string v4, "KeyStore exception"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v1, Landroid/security/KeyStoreException;

    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$constructKeyGenerationArguments$1(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/ArrayList;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 213
    nop

    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    const v1, 0x20000001

    invoke-static {v1, v0}, Lcom/samsung/security/pqckeystore/PQCParameterUtils;->makeEnum(II)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructKeyGenerationArguments add purpose : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PQCAndroidKeyStoreKeyPairGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method static synthetic lambda$constructKeyGenerationArguments$2(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/ArrayList;
    .param p1, "digest"    # Ljava/lang/Integer;

    .line 222
    nop

    .line 223
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    const v1, 0x20000005

    invoke-static {v1, v0}, Lcom/samsung/security/pqckeystore/PQCParameterUtils;->makeEnum(II)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructKeyGenerationArguments add digest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PQCAndroidKeyStoreKeyPairGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method static synthetic lambda$generateKeyPair$0(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .locals 1
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "params"    # [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .param p2, "service"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-interface {p2, p0, p1}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation;->generateKey(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method private makeGeneratedPQCAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;I)Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;
    .locals 10
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .param p3, "algorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 268
    iget-object v0, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    .line 274
    .local v0, "x509PublicCert":[B
    invoke-static {v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 275
    .local v1, "parsedX509Certificate":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 282
    .local v2, "publicKey":Ljava/security/PublicKey;
    const/4 v3, 0x0

    .line 283
    .local v3, "keyAlgorithm":Ljava/lang/String;
    const/16 v4, 0xc0

    if-ne p3, v4, :cond_0

    .line 284
    const-string v3, "ML-DSA"

    move-object v8, v3

    goto :goto_0

    .line 285
    :cond_0
    const/16 v4, 0xa0

    if-ne p3, v4, :cond_1

    .line 286
    const-string v3, "ML-KEM"

    move-object v8, v3

    goto :goto_0

    .line 285
    :cond_1
    move-object v8, v3

    .line 289
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    .local v8, "keyAlgorithm":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    .line 290
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSamsungPQCOperationBinder:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .local v5, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v6, "metadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    invoke-direct/range {v4 .. v9}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;[BLjava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V

    .line 289
    return-object v4

    .line 276
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

    .line 269
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

.method private resetAll()V
    .locals 2

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryAlias:Ljava/lang/String;

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryNamespace:I

    .line 120
    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterPurposes:[I

    .line 121
    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterDigests:[I

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeySizeBits:I

    .line 123
    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSpec:Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;

    .line 124
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 169
    const-string v0, "PQCAndroidKeyStoreKeyPairGenerator"

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->constructKeyGenerationArguments()[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    move-result-object v1

    .line 170
    .local v1, "params":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyPair param size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 173
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryAlias:Ljava/lang/String;

    iput-object v3, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 174
    iget v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryNamespace:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 175
    const/4 v3, 0x0

    goto :goto_0

    .line 176
    :cond_0
    const/4 v3, 0x2

    :goto_0
    iput v3, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 177
    iget v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryNamespace:I

    int-to-long v3, v3

    iput-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 178
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 180
    new-instance v3, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)V

    invoke-direct {p0, v3}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->handleRemoteExceptionSamsungPQCOperation(Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    .line 183
    .local v3, "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateKeyPair result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->modificationTimeMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterAlgorithm:I

    .line 186
    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->makeGeneratedPQCAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;I)Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    move-result-object v0

    .line 189
    .local v0, "publicKey":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;
    new-instance v4, Ljava/security/KeyPair;

    invoke-virtual {v0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getPrivateKey()Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePrivateKey;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 193
    .end local v0    # "publicKey":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;
    .end local v1    # "params":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .end local v2    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "keyMetadata":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to construct key object from newly generated key pair."

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 190
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v1, Ljava/security/ProviderException;

    .line 192
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    const-string v3, "Failed to generate attestation certificate chain"

    invoke-direct {v1, v3, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialize(Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;)V
    .locals 4
    .param p1, "params"    # Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->resetAll()V

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "success":Z
    if-eqz p1, :cond_4

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mOriginalKeymasterAlgorithm:Ljava/lang/String;

    .line 93
    invoke-static {v1}, Lcom/samsung/security/pqckeystore/PQCKeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterAlgorithm:I

    .line 95
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryAlias:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getNamespace()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mEntryNamespace:I

    .line 97
    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mSpec:Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;

    .line 98
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeySizeBits:I

    .line 99
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getPurposes()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/security/pqckeystore/PQCKeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterPurposes:[I

    .line 100
    iget v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeySizeBits:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 101
    iget v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterAlgorithm:I

    invoke-static {v1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->getDefaultKeySize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeySizeBits:I

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterDigests:[I

    goto :goto_0

    .line 106
    :cond_1
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->mKeymasterDigests:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    const/4 v0, 0x1

    .line 111
    if-nez v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->resetAll()V

    .line 115
    :cond_2
    return-void

    .line 89
    :cond_3
    :try_start_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "KeyStore entry alias not provided"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;
    .end local p1    # "params":Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
    throw v1

    .line 111
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;
    .restart local p1    # "params":Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 84
    :cond_4
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must supply params of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;

    .line 85
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;
    .end local p1    # "params":Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;
    .restart local p1    # "params":Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
    :goto_1
    if-nez v0, :cond_5

    .line 112
    invoke-direct {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->resetAll()V

    .line 114
    :cond_5
    throw v1
.end method
