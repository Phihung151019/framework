.class public final Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "PQCKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mDigests:[Ljava/lang/String;

.field private mKeySize:I

.field private final mKeystoreAlias:Ljava/lang/String;

.field private mNamespace:I

.field private mPurposes:I


# direct methods
.method public constructor <init>(Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;)V
    .locals 2
    .param p1, "sourceSpec"    # Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;

    .line 208
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getNamespace()I

    move-result v0

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mNamespace:I

    .line 210
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mKeySize:I

    .line 211
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getPurposes()I

    move-result v0

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mPurposes:I

    .line 212
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 215
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mKeySize:I

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mPurposes:I

    .line 164
    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mNamespace:I

    .line 176
    if-eqz p1, :cond_3

    .line 179
    if-eqz p2, :cond_2

    .line 182
    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 186
    const-string v0, "ML-DSA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/16 v0, 0x9e0

    invoke-virtual {p0, v0}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;

    .line 188
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mPurposes:I

    goto :goto_0

    .line 189
    :cond_0
    const-string v0, "ML-KEM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const/16 v0, 0x660

    invoke-virtual {p0, v0}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->setKeySize(I)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;

    .line 191
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mPurposes:I

    .line 196
    :goto_0
    const-string v5, "SHA-384"

    const-string v6, "SHA-512"

    const-string v1, "NONE"

    const-string v2, "SHA-1"

    const-string v3, "SHA-224"

    const-string v4, "SHA-256"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;

    .line 200
    return-void

    .line 193
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

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "keystoreAlias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;
    .locals 7

    .line 314
    new-instance v0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;

    iget-object v1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mNamespace:I

    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mKeySize:I

    iget v5, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mPurposes:I

    iget-object v6, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec;-><init>(Ljava/lang/String;ILjava/lang/String;II[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs setDigests([Ljava/lang/String;)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .line 305
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public setKeySize(I)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    .line 272
    if-ltz p1, :cond_0

    .line 275
    iput p1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mKeySize:I

    .line 276
    return-object p0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNamespace(I)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "namespace"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 261
    iput p1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mNamespace:I

    .line 262
    return-object p0
.end method

.method public setPurposes(I)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "purposes"    # I

    .line 281
    iput p1, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mPurposes:I

    .line 282
    return-object p0
.end method

.method public setUid(I)Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    invoke-static {p1}, Landroid/security/keystore/KeyProperties;->legacyUidToNamespace(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/security/pqckeystore/PQCKeyGenParameterSpec$Builder;->mNamespace:I

    .line 239
    return-object p0
.end method
