.class public Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
.super Ljava/lang/Object;
.source "FabricKeyGenerator.java"


# static fields
.field private static final AES_DEFAULT_KEY_SIZE:I = 0x100

.field private static final EC_DEFAULT_CURVE_NAME:Ljava/lang/String; = "P-256"

.field private static final KEM_DEFAULT_NAME:Ljava/lang/String; = "KEM-1024"

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0xc00

.field private static final TAG:Ljava/lang/String; = "FabricKeyGenerator"


# instance fields
.field private final mAlgorithm:I

.field private mAlias:Ljava/lang/String;

.field private mEcCurve:I

.field private final mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

.field private mKeySize:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "algorithm"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    .line 42
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 43
    return-void
.end method

.method private static checkValidAesKeySize(I)V
    .locals 3
    .param p0, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 209
    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    .line 212
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported(AES) : 256."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValidEcCurveName(Ljava/lang/String;)V
    .locals 5
    .param p0, "ecCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 216
    const-string v0, "P-256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    const-string v1, "P-384"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported EC Curve Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported(EC) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_1
    :goto_0
    return-void
.end method

.method private static checkValidKemKeySize(I)V
    .locals 3
    .param p0, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 235
    const/16 v0, 0xc60

    if-ne p0, v0, :cond_0

    .line 238
    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported(KEM) : 3168."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValidRsaKeySize(I)V
    .locals 3
    .param p0, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 227
    const/16 v0, 0xc00

    if-ne p0, v0, :cond_0

    .line 230
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported(RSA) : 3072."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructKeyGenerationArguments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    const v1, 0x10000002

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    invoke-static {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mKeySize:I

    if-lez v1, :cond_0

    .line 200
    const v1, 0x30000003

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mKeySize:I

    invoke-static {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeInt(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mEcCurve:I

    if-lez v1, :cond_1

    .line 202
    const v1, 0x1000000a

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mEcCurve:I

    invoke-static {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    .line 55
    invoke-static {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$KeyAlgorithm;->toFkeymaster(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;-><init>(I)V

    .line 54
    return-object v0
.end method

.method private resetAll()V
    .locals 1

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mEcCurve:I

    .line 243
    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mKeySize:I

    .line 244
    return-void
.end method


# virtual methods
.method public generateKey()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->constructKeyGenerationArguments()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->generateKey(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v0

    .line 165
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 169
    const/4 v1, 0x1

    return v1

    .line 166
    :cond_0
    new-instance v1, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 158
    .end local v0    # "ret":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKeyPQ()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->constructKeyGenerationArguments()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->generateKeyPQ(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v0

    .line 190
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 193
    const/4 v1, 0x1

    return v1

    .line 191
    :cond_0
    new-instance v1, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 186
    .end local v0    # "ret":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;)V
    .locals 3
    .param p1, "spec"    # Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->resetAll()V

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "success":Z
    if-eqz p1, :cond_5

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlias:Ljava/lang/String;

    .line 120
    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->checkValidAesKeySize(I)V

    .line 122
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mKeySize:I

    .line 124
    :cond_0
    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->checkValidRsaKeySize(I)V

    .line 126
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mKeySize:I

    .line 128
    :cond_1
    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->checkValidKemKeySize(I)V

    .line 130
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mKeySize:I

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getEcCurveName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getEcCurveName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->checkValidEcCurveName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getEcCurveName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EcCurve;->toFkeymaster(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mEcCurve:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_3
    const/4 v0, 0x1

    .line 138
    if-nez v0, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->resetAll()V

    .line 142
    :cond_4
    return-void

    .line 138
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 115
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply FabricKeyGenParameterSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    .end local p1    # "spec":Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    .restart local p1    # "spec":Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;
    :goto_0
    if-nez v0, :cond_6

    .line 139
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->resetAll()V

    .line 141
    :cond_6
    throw v1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    iget v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 77
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->build()Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;)V

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 81
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v1, "P-256"

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->setEcCurve(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->build()Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;)V

    goto :goto_0

    .line 84
    :cond_1
    iget v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 86
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 87
    const/16 v1, 0xc60

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    move-result-object v0

    .line 88
    const-string v1, "KEM-1024"

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->setKemAlgo(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->build()Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;)V

    goto :goto_0

    .line 90
    :cond_2
    iget v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->mAlgorithm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 92
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 93
    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->build()Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;)V

    .line 96
    :cond_3
    :goto_0
    return-void

    .line 71
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
