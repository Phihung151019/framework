.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$0:[B

    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$1:[B

    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$4:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$0:[B

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$1:[B

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;->f$4:Ljava/util/Collection;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->lambda$keyDerivationAlias$29([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
