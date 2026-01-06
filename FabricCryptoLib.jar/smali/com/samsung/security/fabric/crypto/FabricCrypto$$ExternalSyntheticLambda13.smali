.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[B

.field public final synthetic f$5:[B

.field public final synthetic f$6:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$0:[B

    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$2:[B

    iput-object p4, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$4:[B

    iput-object p6, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$5:[B

    iput-object p7, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$6:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$0:[B

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$2:[B

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$4:[B

    iget-object v5, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$5:[B

    iget-object v6, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;->f$6:Ljava/util/Collection;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->lambda$keyAgreementPQencap$26([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B

    move-result-object p1

    return-object p1
.end method
