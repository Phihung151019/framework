.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[BLjava/util/Collection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;->f$1:[B

    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;->f$1:[B

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;->f$2:Ljava/util/Collection;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->lambda$decryptBegin$11(Ljava/lang/String;[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
