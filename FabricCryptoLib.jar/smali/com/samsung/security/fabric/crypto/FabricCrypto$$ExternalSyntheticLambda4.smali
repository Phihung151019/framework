.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->lambda$list$6(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
