.class public Lvendor/qti/hardware/display/aiqe/IDisplayAiqe$Default;
.super Ljava/lang/Object;
.source "IDisplayAiqe.java"

# interfaces
.implements Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;
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

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableCopr(IZ)V
    .locals 0
    .param p1, "disp_id"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public getCoprStats(I)[I
    .locals 1
    .param p1, "disp_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public setABCMode(ILjava/lang/String;)V
    .locals 0
    .param p1, "dispId"    # I
    .param p2, "mode_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public setABCReconfig(I)V
    .locals 0
    .param p1, "dispId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public setABCState(II)V
    .locals 0
    .param p1, "dispId"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public setMdnieMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public setSsrcMode(ILjava/lang/String;)V
    .locals 0
    .param p1, "disp_id"    # I
    .param p2, "mode_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
