.class public Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Default;
.super Ljava/lang/Object;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
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
.method public activate(IIZ)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "enable"    # I
    .param p3, "isBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceList(Z)[I
    .locals 1
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyState(ILvendor/samsung/hardware/sysinput/SehIntStringParcel;)V
    .locals 0
    .param p1, "keycode"    # I
    .param p2, "outbuf"    # Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public getProperty(II)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public injectRawdata(I[II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "inputData"    # [I
    .param p3, "inputSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public readTaas(Lvendor/samsung/hardware/sysinput/SehIntStringParcel;)V
    .locals 0
    .param p1, "outbuf"    # Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public registerCallback(Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;)I
    .locals 1
    .param p1, "callback"    # Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public runCommand(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/SehIntStringParcel;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cmdname"    # Ljava/lang/String;
    .param p3, "outbuf"    # Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public setProperty(IILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "property"    # I
    .param p3, "vaule"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public streamRawdata(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeTaas(Ljava/lang/String;)I
    .locals 1
    .param p1, "buf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method
