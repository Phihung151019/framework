.class public Lcom/samsung/security/fabric/crypto/FabricKeyManager;
.super Ljava/lang/Object;
.source "FabricKeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FabricKeyManager"


# instance fields
.field private final mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;
    .locals 1

    .line 25
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    invoke-direct {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;-><init>()V

    return-object v0
.end method

.method private keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)Z
    .locals 8
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "secretKeyAlias"    # Ljava/lang/String;
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .param p6, "ecCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 374
    if-eqz p2, :cond_5

    .line 378
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 382
    if-eqz p4, :cond_3

    .line 386
    if-eqz p5, :cond_2

    .line 390
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 395
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    nop

    .line 396
    invoke-static {p6}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EcCurve;->toFkeymaster(Ljava/lang/String;)I

    move-result v0

    .line 395
    const v1, 0x1000000a

    invoke-static {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .end local p3    # "secretKeyAlias":Ljava/lang/String;
    .end local p4    # "label":[B
    .end local p5    # "context":[B
    .local v2, "privateKeyAlias":Ljava/lang/String;
    .local v3, "publicKey":[B
    .local v4, "secretKeyAlias":Ljava/lang/String;
    .local v5, "label":[B
    .local v6, "context":[B
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 391
    .end local v2    # "privateKeyAlias":Ljava/lang/String;
    .end local v3    # "publicKey":[B
    .end local v4    # "secretKeyAlias":Ljava/lang/String;
    .end local v5    # "label":[B
    .end local v6    # "context":[B
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    .restart local p3    # "secretKeyAlias":Ljava/lang/String;
    .restart local p4    # "label":[B
    .restart local p5    # "context":[B
    :cond_1
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .restart local v2    # "privateKeyAlias":Ljava/lang/String;
    .restart local v3    # "publicKey":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The ecCurveName cannot be an empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    .end local v2    # "privateKeyAlias":Ljava/lang/String;
    .end local v3    # "publicKey":[B
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :cond_2
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .restart local v2    # "privateKeyAlias":Ljava/lang/String;
    .restart local v3    # "publicKey":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    .end local v2    # "privateKeyAlias":Ljava/lang/String;
    .end local v3    # "publicKey":[B
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :cond_3
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .restart local v2    # "privateKeyAlias":Ljava/lang/String;
    .restart local v3    # "publicKey":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The label cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    .end local v2    # "privateKeyAlias":Ljava/lang/String;
    .end local v3    # "publicKey":[B
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :cond_4
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .restart local v2    # "privateKeyAlias":Ljava/lang/String;
    .restart local v3    # "publicKey":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The secret-key alias cannot be an empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    .end local v2    # "privateKeyAlias":Ljava/lang/String;
    .end local v3    # "publicKey":[B
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :cond_5
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .restart local v2    # "privateKeyAlias":Ljava/lang/String;
    .restart local v3    # "publicKey":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The public-key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    .end local v2    # "privateKeyAlias":Ljava/lang/String;
    .end local v3    # "publicKey":[B
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :cond_6
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .restart local v2    # "privateKeyAlias":Ljava/lang/String;
    .restart local v3    # "publicKey":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The private-key alias cannot be an empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)Z
    .locals 10
    .param p1, "decapKeyAlias"    # Ljava/lang/String;
    .param p2, "cipherText"    # [B
    .param p3, "privateKeyAlias"    # Ljava/lang/String;
    .param p4, "publicKey"    # [B
    .param p5, "secretKeyAlias"    # Ljava/lang/String;
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .param p8, "ecCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 497
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 501
    if-eqz p4, :cond_5

    .line 505
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 509
    if-eqz p6, :cond_3

    .line 513
    if-eqz p7, :cond_2

    .line 517
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 522
    .local v9, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    nop

    .line 523
    invoke-static/range {p8 .. p8}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EcCurve;->toFkeymaster(Ljava/lang/String;)I

    move-result v0

    .line 522
    const v1, 0x1000000a

    invoke-static {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p5}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 518
    .end local v9    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ecCurveName cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The label cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The secret-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The private-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)[B
    .locals 9
    .param p1, "encapKey"    # [B
    .param p2, "privateKeyAlias"    # Ljava/lang/String;
    .param p3, "publicKey"    # [B
    .param p4, "secretKeyAlias"    # Ljava/lang/String;
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .param p7, "ecCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 433
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 437
    if-eqz p3, :cond_4

    .line 441
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 445
    if-eqz p5, :cond_2

    .line 449
    if-eqz p6, :cond_1

    .line 453
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 458
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    nop

    .line 459
    invoke-static/range {p7 .. p7}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EcCurve;->toFkeymaster(Ljava/lang/String;)I

    move-result v0

    .line 458
    const v1, 0x1000000a

    invoke-static {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)[B

    move-result-object v0

    return-object v0

    .line 454
    .end local v8    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ecCurveName cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The label cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The secret-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The private-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "inputAlias"    # Ljava/lang/String;
    .param p4, "outputAlias"    # Ljava/lang/String;
    .param p5, "ecCurveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 564
    if-eqz p1, :cond_5

    .line 568
    if-eqz p2, :cond_4

    .line 572
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 577
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 581
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 586
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    nop

    .line 587
    invoke-static {p5}, Lcom/samsung/security/fabric/crypto/FabricKeyProperties$EcCurve;->toFkeymaster(Ljava/lang/String;)I

    move-result v0

    .line 586
    const v1, 0x1000000a

    invoke-static {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .end local p3    # "inputAlias":Ljava/lang/String;
    .end local p4    # "outputAlias":Ljava/lang/String;
    .local v2, "label":[B
    .local v3, "context":[B
    .local v4, "inputAlias":Ljava/lang/String;
    .local v5, "outputAlias":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 582
    .end local v2    # "label":[B
    .end local v3    # "context":[B
    .end local v4    # "inputAlias":Ljava/lang/String;
    .end local v5    # "outputAlias":Ljava/lang/String;
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    .restart local p3    # "inputAlias":Ljava/lang/String;
    .restart local p4    # "outputAlias":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .restart local v2    # "label":[B
    .restart local v3    # "context":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The ecCurveName cannot be an empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    .end local v2    # "label":[B
    .end local v3    # "context":[B
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    :cond_2
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .restart local v2    # "label":[B
    .restart local v3    # "context":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The secret-key alias cannot be an empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    .end local v2    # "label":[B
    .end local v3    # "context":[B
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    :cond_3
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .restart local v2    # "label":[B
    .restart local v3    # "context":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The link-key alias cannot be an empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    .end local v2    # "label":[B
    .end local v3    # "context":[B
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    :cond_4
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .restart local v2    # "label":[B
    .restart local v3    # "context":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    .end local v2    # "label":[B
    .end local v3    # "context":[B
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    :cond_5
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .restart local v2    # "label":[B
    .restart local v3    # "context":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The label cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public aliases()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkImportedBlobWithPassword([BLjava/lang/String;[B)Z
    .locals 3
    .param p1, "wrappedKey"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_3

    .line 212
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 217
    new-array p3, v0, [B

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 221
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 220
    invoke-virtual {v1, p1, v2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->checkImportedBlobWithPassword([B[B[B)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 213
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The password cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "ret":I
    if-eqz v0, :cond_1

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v1, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 96
    .end local v0    # "ret":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public existKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->existKey(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    if-nez p3, :cond_0

    .line 249
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapping-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The exported-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportKeyWithPassword(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    if-nez p3, :cond_0

    .line 280
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 284
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 283
    invoke-virtual {v0, p1, v1, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->exportKeyWithPassword(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The password cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The exported-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportKeyWithSecureImport(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    if-eqz p2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->exportKeyWithSecureImport(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The exported-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The exported-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPQEncapKey(Ljava/lang/String;)[B
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getPQEncapKey(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey(Ljava/lang/String;)[B
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getPublicKey(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public importKey(Ljava/lang/String;[BLjava/lang/String;[B)Z
    .locals 2
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    if-eqz p2, :cond_3

    .line 141
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 146
    new-array p4, v0, [B

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v1, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->importKey(Ljava/lang/String;[BLjava/lang/String;[B)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapping-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public importKeyWithPassword(Ljava/lang/String;[BLjava/lang/String;[B)Z
    .locals 3
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    if-eqz p2, :cond_3

    .line 180
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 185
    new-array p4, v0, [B

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v1, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->deleteKey(Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->mFabricCrypto:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 191
    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 190
    invoke-virtual {v1, p1, p2, v2, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->importKeyWithPassword(Ljava/lang/String;[B[B[B)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The password cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped-key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped-key alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[B)Z
    .locals 7
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "secretKeyAlias"    # Ljava/lang/String;
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 363
    const-string v6, "P-256"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .end local p3    # "secretKeyAlias":Ljava/lang/String;
    .end local p4    # "label":[B
    .end local p5    # "context":[B
    .local v1, "privateKeyAlias":Ljava/lang/String;
    .local v2, "publicKey":[B
    .local v3, "secretKeyAlias":Ljava/lang/String;
    .local v4, "label":[B
    .local v5, "context":[B
    invoke-direct/range {v0 .. v6}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[B)Z
    .locals 9
    .param p1, "decapKeyAlias"    # Ljava/lang/String;
    .param p2, "cipherText"    # [B
    .param p3, "privateKeyAlias"    # Ljava/lang/String;
    .param p4, "publicKey"    # [B
    .param p5, "secretKeyAlias"    # Ljava/lang/String;
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 489
    const-string v8, "P-256"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)Z

    move-result v8

    return v8
.end method

.method public keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[B)[B
    .locals 8
    .param p1, "encapKey"    # [B
    .param p2, "privateKeyAlias"    # Ljava/lang/String;
    .param p3, "publicKey"    # [B
    .param p4, "secretKeyAlias"    # Ljava/lang/String;
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 425
    const-string v7, "P-256"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "encapKey":[B
    .end local p2    # "privateKeyAlias":Ljava/lang/String;
    .end local p3    # "publicKey":[B
    .end local p4    # "secretKeyAlias":Ljava/lang/String;
    .end local p5    # "label":[B
    .end local p6    # "context":[B
    .local v1, "encapKey":[B
    .local v2, "privateKeyAlias":Ljava/lang/String;
    .local v3, "publicKey":[B
    .local v4, "secretKeyAlias":Ljava/lang/String;
    .local v5, "label":[B
    .local v6, "context":[B
    invoke-direct/range {v0 .. v7}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public keyDerivationAlias([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "label"    # [B
    .param p2, "inputAlias"    # Ljava/lang/String;
    .param p3, "outputAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 551
    const-string v0, "context"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v7, "P-256"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "label":[B
    .end local p2    # "inputAlias":Ljava/lang/String;
    .end local p3    # "outputAlias":Ljava/lang/String;
    .local v3, "label":[B
    .local v5, "inputAlias":Ljava/lang/String;
    .local v6, "outputAlias":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "inputAlias"    # Ljava/lang/String;
    .param p4, "outputAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 557
    const-string v5, "P-256"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .end local p3    # "inputAlias":Ljava/lang/String;
    .end local p4    # "outputAlias":Ljava/lang/String;
    .local v1, "label":[B
    .local v2, "context":[B
    .local v3, "inputAlias":Ljava/lang/String;
    .local v4, "outputAlias":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
