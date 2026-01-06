.class public Lcom/samsung/android/mcf/IDiscoveryResultCallback$Default;
.super Ljava/lang/Object;
.source "IDiscoveryResultCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/IDiscoveryResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/IDiscoveryResultCallback;
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

.method public onDeviceDiscoverd(Landroid/os/PersistableBundle;IILjava/lang/String;)V
    .locals 0
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
