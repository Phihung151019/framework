.class public Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
.super Ljava/lang/Object;
.source "FabricEscrowVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EVType"
.end annotation


# instance fields
.field public eCeRk:[B

.field public eVS:[B

.field public eVSW:[B

.field public s:[B

.field public signEceRk:[B

.field public signEvsw:[B

.field public v:[B

.field public verifierType:[B

.field public w:[B


# direct methods
.method public constructor <init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    return-void
.end method

.method public constructor <init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;[B[B[B[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
    .param p2, "verifierType"    # [B
    .param p3, "eCeRk"    # [B
    .param p4, "eVS"    # [B
    .param p5, "signEceRk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    .line 998
    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->eCeRk:[B

    .line 999
    iput-object p4, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->eVS:[B

    .line 1000
    iput-object p5, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->signEceRk:[B

    .line 1001
    return-void
.end method
