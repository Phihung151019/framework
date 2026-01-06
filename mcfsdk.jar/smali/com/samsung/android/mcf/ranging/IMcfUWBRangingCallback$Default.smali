.class public Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Default;
.super Ljava/lang/Object;
.source "IMcfUWBRangingCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirmed(I[B)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "uwbParam"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .locals 0
    .param p1, "results"    # [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onStatusChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "arg"    # I
    .param p3, "argString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onStatusError(I)V
    .locals 0
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onUWBParamChanged(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "TargetDeviceAddr"    # Ljava/lang/String;
    .param p2, "param"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
