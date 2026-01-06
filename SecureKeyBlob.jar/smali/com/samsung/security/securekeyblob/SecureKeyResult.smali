.class public Lcom/samsung/security/securekeyblob/SecureKeyResult;
.super Ljava/lang/Object;
.source "SecureKeyResult.java"


# instance fields
.field private mCertificates:[Ljava/security/cert/X509Certificate;

.field private mServiceID:[B

.field private mServiceKey:[B


# direct methods
.method public constructor <init>([B[Ljava/security/cert/X509Certificate;[B)V
    .locals 0
    .param p1, "serviceKey"    # [B
    .param p2, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p3, "serviceID"    # [B

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceKey:[B

    .line 12
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mCertificates:[Ljava/security/cert/X509Certificate;

    .line 13
    iput-object p3, p0, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceID:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getServiceID()[B
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceID:[B

    return-object v0
.end method

.method public getServiceKey()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceKey:[B

    return-object v0
.end method
