.class public Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Default;
.super Ljava/lang/Object;
.source "ISehPQCkeymaster.java"

# interfaces
.implements Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public begin(I[B[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/BeginResult;
    .locals 1
    .param p1, "purpose"    # I
    .param p2, "keyBlob"    # [B
    .param p3, "params"    # [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkDomainKeyStatus()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkPreloadedKeyValidation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAllKey()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public deleteKey(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public exportKey(I)[B
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKeyPair([Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKeyPairEx([Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    .locals 1
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public importKey([B)I
    .locals 1
    .param p1, "keyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isGenerateKeyAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public manageProvisionedKey(II)I
    .locals 1
    .param p1, "operationType"    # I
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method
