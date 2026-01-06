.class public Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;
.super Ljava/lang/Object;
.source "FabricAttestation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/crypto/FabricAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Signature"
.end annotation


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method private constructor <init>(Lcom/samsung/security/fabric/crypto/FabricAttestation;Ljava/lang/String;Ljava/security/Signature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/security/fabric/crypto/FabricAttestation;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mAlias:Ljava/lang/String;

    .line 406
    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mSignature:Ljava/security/Signature;

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/security/fabric/crypto/FabricAttestation;Ljava/lang/String;Ljava/security/Signature;Lcom/samsung/security/fabric/crypto/FabricAttestation-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;-><init>(Lcom/samsung/security/fabric/crypto/FabricAttestation;Ljava/lang/String;Ljava/security/Signature;)V

    return-void
.end method

.method private getPrivateKey()Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 469
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 470
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 471
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 472
    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPublicKey()Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 482
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 483
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 484
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 485
    .local v2, "cert":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 486
    .end local v0    # "keystore":Ljava/security/KeyStore;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public initSign()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 416
    .local v0, "privKey":Ljava/security/PrivateKey;
    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mSignature:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 420
    return-void

    .line 417
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "The Private Key cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initVerify()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 429
    .local v0, "pubKey":Ljava/security/PublicKey;
    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mSignature:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 433
    return-void

    .line 430
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "The Public Key cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 442
    return-void
.end method

.method public verify([B)Z
    .locals 1
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
