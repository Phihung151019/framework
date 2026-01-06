.class public Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;
.source "McfDeviceDiscoverCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
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

.method public onDeviceRemoved(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDiscoveryStarted(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDiscoveryStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDiscoveryStopped(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDiscoveryStopped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
