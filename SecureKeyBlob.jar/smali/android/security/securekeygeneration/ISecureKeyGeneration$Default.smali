.class public Landroid/security/securekeygeneration/ISecureKeyGeneration$Default;
.super Ljava/lang/Object;
.source "ISecureKeyGeneration.java"

# interfaces
.implements Landroid/security/securekeygeneration/ISecureKeyGeneration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/securekeygeneration/ISecureKeyGeneration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateSecureKey([Landroid/hardware/security/keymint/KeyParameter;[Landroid/hardware/security/keymint/KeyParameter;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 1
    .param p1, "genParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "attestParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
