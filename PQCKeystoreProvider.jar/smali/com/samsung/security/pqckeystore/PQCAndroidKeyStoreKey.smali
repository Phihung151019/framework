.class public Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "PQCAndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAuthorizations:[Landroid/security/samsungpqcoperation/PqcAuthorization;

.field private final mDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private final mKeyId:J

.field private final mSamsungPQCOperation:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;


# direct methods
.method public constructor <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/security/samsungpqcoperation/PqcAuthorization;Ljava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V
    .locals 0
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/security/samsungpqcoperation/PqcAuthorization;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "pqcOperation"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 62
    iput-wide p2, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mKeyId:J

    .line 63
    iput-object p4, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mAuthorizations:[Landroid/security/samsungpqcoperation/PqcAuthorization;

    .line 64
    iput-object p5, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mSamsungPQCOperation:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 121
    return v0

    .line 123
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 124
    return v1

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 127
    return v1

    .line 129
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;

    .line 130
    .local v2, "other":Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
    iget-wide v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mKeyId:J

    iget-wide v5, v2, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mKeyId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getAuthorizations()[Landroid/security/samsungpqcoperation/PqcAuthorization;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mAuthorizations:[Landroid/security/samsungpqcoperation/PqcAuthorization;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    .line 73
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 74
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-wide v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mKeyId:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 75
    const/4 v1, 0x4

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 76
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 77
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 78
    return-object v0
.end method

.method getPQCOperation()Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mSamsungPQCOperation:Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    return-object v0
.end method

.method getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 109
    const/16 v0, 0x1f

    .line 110
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 112
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mKeyId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 114
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;->mKeyId:J

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 115
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
