.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->lambda$exportPrivkeyData$35(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B

    move-result-object p1

    return-object p1
.end method
