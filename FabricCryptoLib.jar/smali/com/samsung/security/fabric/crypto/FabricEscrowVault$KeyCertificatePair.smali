.class public Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;
.super Ljava/lang/Object;
.source "FabricEscrowVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyCertificatePair"
.end annotation


# instance fields
.field private certificates:[Ljava/security/cert/Certificate;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "certificates"    # [Ljava/security/cert/Certificate;
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

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->privateKey:Ljava/security/PrivateKey;

    .line 1010
    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->certificates:[Ljava/security/cert/Certificate;

    .line 1011
    return-void
.end method


# virtual methods
.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->certificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
