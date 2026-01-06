.class public Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;
.super Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
.source "PQCAndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final mCertificate:[B

.field private final mCertificateChain:[B

.field private final mEncoded:[B


# direct methods
.method public constructor <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/PqcKeyMetadata;[BLjava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V
    .locals 8
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .param p3, "x509EncodedForm"    # [B
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "pqcOperation"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 41
    iget-object v0, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-object v5, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->authorizations:[Landroid/security/samsungpqcoperation/PqcAuthorization;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p4    # "algorithm":Ljava/lang/String;
    .end local p5    # "pqcOperation":Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v6, "algorithm":Ljava/lang/String;
    .local v7, "pqcOperation":Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    invoke-direct/range {v1 .. v7}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/security/samsungpqcoperation/PqcAuthorization;Ljava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V

    .line 42
    iget-object p1, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificate:[B

    iput-object p1, v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificate:[B

    .line 43
    iget-object p1, p2, Landroid/security/samsungpqcoperation/PqcKeyMetadata;->certificateChain:[B

    iput-object p1, v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificateChain:[B

    .line 44
    iput-object p3, v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mEncoded:[B

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 80
    return v2

    .line 87
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;

    .line 89
    .local v1, "other":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;
    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificate:[B

    iget-object v4, v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificateChain:[B

    iget-object v4, v1, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "X.509"

    return-object v0
.end method

.method public getPrivateKey()Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePrivateKey;
    .locals 7

    .line 48
    new-instance v0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePrivateKey;

    invoke-virtual {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-wide v2, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 49
    invoke-virtual {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getAuthorizations()[Landroid/security/samsungpqcoperation/PqcAuthorization;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->getPQCOperation()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/security/samsungpqcoperation/PqcAuthorization;Ljava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V

    .line 48
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 64
    const/16 v0, 0x1f

    .line 65
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 67
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-super {p0}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 68
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 69
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 71
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
