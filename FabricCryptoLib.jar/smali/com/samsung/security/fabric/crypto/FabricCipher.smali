.class public Lcom/samsung/security/fabric/crypto/FabricCipher;
.super Ljava/lang/Object;
.source "FabricCipher.java"


# static fields
.field public static final DECRYPT_MODE:I = 0x1

.field public static final DEFAULT_CHUNK_SIZE_MAX:I = 0x40000

.field public static final ENCRYPT_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FabricCipher"


# instance fields
.field private mAlgorithm:I

.field private mBlockMode:I

.field private mEncrypting:Z

.field private final mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

.field private mIv:[B

.field private mOperationHandle:I

.field private mPadding:I


# direct methods
.method private constructor <init>(III)V
    .locals 1
    .param p1, "algorithm"    # I
    .param p2, "blockMode"    # I
    .param p3, "padding"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 48
    iput p1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mAlgorithm:I

    .line 49
    iput p2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mBlockMode:I

    .line 50
    iput p3, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mPadding:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    .line 52
    iput-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    .line 54
    return-void
.end method

.method private checkCipherState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    if-eqz v0, :cond_0

    .line 361
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FabricCipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkValidInputData([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 365
    if-eqz p1, :cond_3

    .line 369
    if-ltz p3, :cond_2

    if-ltz p2, :cond_2

    .line 374
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 379
    const/high16 v0, 0x40000

    if-gt p3, v0, :cond_0

    .line 383
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is greater than DEFAULT_CHUNK_SIZE_MAX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input buffer too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructArguments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    const v1, 0x10000002

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mAlgorithm:I

    invoke-static {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const v1, 0x20000004

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mBlockMode:I

    invoke-static {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const v1, 0x20000006

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mPadding:I

    invoke-static {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCipher;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "blockMode"    # Ljava/lang/String;
    .param p2, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCipher;

    .line 70
    invoke-static {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$KeyAlgorithm;->toFkeymaster(Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-static {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$BlockMode;->toFkeymaster(Ljava/lang/String;)I

    move-result v2

    .line 72
    invoke-static {p2}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EncryptionPadding;->toFkeymaster(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/security/fabric/crypto/FabricCipher;-><init>(III)V

    .line 69
    return-object v0
.end method

.method private resetAll()V
    .locals 1

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mAlgorithm:I

    .line 395
    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mBlockMode:I

    .line 396
    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mPadding:I

    .line 397
    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    .line 398
    iput-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    .line 400
    return-void
.end method


# virtual methods
.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkCipherState()V

    .line 271
    iget-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptFinish([BI)[B

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptFinish([BI)[B

    move-result-object v0

    :goto_0
    nop

    .line 273
    .local v0, "output":[B
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->resetAll()V

    .line 274
    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkCipherState()V

    .line 303
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkValidInputData([BII)V

    .line 305
    iget-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptFinish([BI)[B

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptFinish([BI)[B

    move-result-object v0

    :goto_0
    nop

    .line 307
    .local v0, "output":[B
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->resetAll()V

    .line 308
    return-object v0
.end method

.method public final doFinal([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkCipherState()V

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkValidInputData([BII)V

    .line 340
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 341
    .local v0, "data":[B
    iget-boolean v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptFinish([BI)[B

    move-result-object v1

    goto :goto_0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptFinish([BI)[B

    move-result-object v1

    :goto_0
    nop

    .line 343
    .local v1, "output":[B
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->resetAll()V

    .line 344
    return-object v1
.end method

.method public getIv()[B
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    :goto_0
    return-object v0
.end method

.method public final init(Ljava/lang/String;I)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "opmode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I[B)V

    .line 89
    return-void
.end method

.method public final init(Ljava/lang/String;I[B)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "opmode"    # I
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkCipherState()V

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    packed-switch p2, :pswitch_data_0

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 125
    :pswitch_0
    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mBlockMode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_0

    array-length v1, p3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV and tag length required when decrypting, but not found in parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCipher;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "opmode":I
    .end local p3    # "iv":[B
    throw v1

    .line 129
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCipher;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "opmode":I
    .restart local p3    # "iv":[B
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->constructArguments()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptBegin(Ljava/lang/String;[BLjava/util/Collection;)I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    .line 131
    const/4 v0, 0x1

    .line 132
    goto :goto_1

    .line 117
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 118
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->constructArguments()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptBegin(Ljava/lang/String;Ljava/util/Collection;)Lcom/samsung/security/fabric/cryptod/OperationResult;

    move-result-object v1

    .line 119
    .local v1, "opResult":Lcom/samsung/security/fabric/cryptod/OperationResult;
    iget v2, v1, Lcom/samsung/security/fabric/cryptod/OperationResult;->operationHandle:I

    iput v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    .line 120
    iget-object v2, v1, Lcom/samsung/security/fabric/cryptod/OperationResult;->output:[B

    iput-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mIv:[B

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v0, 0x1

    .line 123
    nop

    .line 137
    .end local v1    # "opResult":Lcom/samsung/security/fabric/cryptod/OperationResult;
    :goto_1
    if-nez v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->resetAll()V

    .line 141
    :cond_2
    return-void

    .line 134
    :goto_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCipher;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "opmode":I
    .end local p3    # "iv":[B
    throw v1

    .line 112
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCipher;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "opmode":I
    .restart local p3    # "iv":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The alias cannot be an empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCipher;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "opmode":I
    .end local p3    # "iv":[B
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCipher;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "opmode":I
    .restart local p3    # "iv":[B
    :catchall_0
    move-exception v1

    if-nez v0, :cond_4

    .line 138
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->resetAll()V

    .line 140
    :cond_4
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final update([B)[B
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 161
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkValidInputData([BII)V

    .line 167
    iget-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptUpdate([BI)[B

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptUpdate([BI)[B

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 162
    :cond_2
    :goto_1
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public final update([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 191
    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkValidInputData([BII)V

    .line 197
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 198
    .local v0, "data":[B
    iget-boolean v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptUpdate([BI)[B

    move-result-object v1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptUpdate([BI)[B

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    .line 192
    .end local v0    # "data":[B
    :cond_2
    :goto_1
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public final updateAad([B)V
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/security/fabric/crypto/FabricCipher;->updateAad([BII)V

    .line 222
    return-void
.end method

.method public final updateAad([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkCipherState()V

    .line 247
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->checkValidInputData([BII)V

    .line 249
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 250
    .local v0, "data":[B
    iget-boolean v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mEncrypting:Z

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->encryptUpdateAad([BI)I

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricCipher;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptUpdateAad([BI)I

    .line 255
    :goto_0
    return-void
.end method
