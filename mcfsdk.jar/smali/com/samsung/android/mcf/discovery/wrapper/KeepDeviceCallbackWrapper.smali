.class public Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;
.source "KeepDeviceCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;->onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
