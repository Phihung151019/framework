.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Collection;

.field public final synthetic f$4:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$1:[B

    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$3:Ljava/util/Collection;

    iput-object p5, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$4:[B

    return-void
.end method


# virtual methods
.method public final execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$1:[B

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$3:Ljava/util/Collection;

    iget-object v4, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;->f$4:[B

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->lambda$importData$36(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
