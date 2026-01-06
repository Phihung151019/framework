.class public final synthetic Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->lambda$evAttestKey$0(Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object p1

    return-object p1
.end method
