.class public Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Default;
.super Ljava/lang/Object;
.source "IKeepDeviceCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .locals 0
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
