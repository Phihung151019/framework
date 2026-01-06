.class public Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Default;
.super Ljava/lang/Object;
.source "IMcfMessageCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    .locals 0
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "status"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onMessageReceived(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onMessageResult(Landroid/os/PersistableBundle;II)V
    .locals 0
    .param p1, "mcfMessage"    # Landroid/os/PersistableBundle;
    .param p2, "result"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
