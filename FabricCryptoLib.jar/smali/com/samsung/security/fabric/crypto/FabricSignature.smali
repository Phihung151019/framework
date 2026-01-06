.class public Lcom/samsung/security/fabric/crypto/FabricSignature;
.super Ljava/lang/Object;
.source "FabricSignature.java"


# static fields
.field public static final DEFAULT_CHUNK_SIZE_MAX:I = 0x40000

.field public static final SUPPORT_ALTORITHMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FabricSignature"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private final mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

.field private mOperationHandle:I

.field private mSigning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "SHA256withECDSA"

    const-string v1, "SHA384withECDSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/security/fabric/crypto/FabricSignature;->SUPPORT_ALTORITHMS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mOperationHandle:I

    .line 41
    iput-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mSigning:Z

    .line 42
    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mAlgorithm:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private checkSignatureState()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    if-eqz v0, :cond_1

    .line 176
    iget-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mSigning:Z

    if-eqz v0, :cond_0

    .line 178
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current is not signing mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FabricSignature not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructArguments()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "SHA256withECDSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "SHA384withECDSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v2, 0x20000005

    const/4 v3, 0x3

    const v4, 0x10000002

    packed-switch v1, :pswitch_data_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support algorithms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FabricSignature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    :pswitch_0
    invoke-static {v4, v3}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v1, 0x5

    invoke-static {v2, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_2

    .line 185
    :pswitch_1
    invoke-static {v4, v3}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    nop

    .line 201
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2600842b -> :sswitch_1
        0x4833a8c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricSignature;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/samsung/security/fabric/crypto/FabricSignature;->SUPPORT_ALTORITHMS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricSignature;

    invoke-direct {v0, p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetAll()V
    .locals 1

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mOperationHandle:I

    .line 206
    iput-boolean v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mSigning:Z

    .line 207
    return-void
.end method


# virtual methods
.method public final initSign(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->constructArguments()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->signBegin(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mOperationHandle:I

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mSigning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const/4 v0, 0x1

    .line 79
    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->resetAll()V

    .line 83
    :cond_0
    return-void

    .line 72
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The alias cannot be an empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricSignature;
    .end local p1    # "alias":Ljava/lang/String;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricSignature;
    .restart local p1    # "alias":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->resetAll()V

    .line 82
    :cond_2
    throw v1
.end method

.method public final sign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->checkSignatureState()V

    .line 168
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mOperationHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->signFinish([BI)[B

    move-result-object v0

    .line 169
    .local v0, "signature":[B
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->resetAll()V

    .line 170
    return-object v0
.end method

.method public final update([B)V
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->checkSignatureState()V

    .line 100
    if-eqz p1, :cond_2

    .line 104
    array-length v0, p1

    if-ltz v0, :cond_1

    .line 108
    array-length v0, p1

    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mOperationHandle:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->signUpdate([BI)I

    .line 114
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is greater than DEFAULT_CHUNK_SIZE_MAX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update([BII)V
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

    .line 131
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricSignature;->checkSignatureState()V

    .line 133
    if-eqz p1, :cond_3

    .line 137
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 142
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 147
    const/high16 v0, 0x40000

    if-gt p3, v0, :cond_0

    .line 152
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 153
    .local v0, "data":[B
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    iget v2, p0, Lcom/samsung/security/fabric/crypto/FabricSignature;->mOperationHandle:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->signUpdate([BI)I

    .line 154
    return-void

    .line 148
    .end local v0    # "data":[B
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

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
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

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
