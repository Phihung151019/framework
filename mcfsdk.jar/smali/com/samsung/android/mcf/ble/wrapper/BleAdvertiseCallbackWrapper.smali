.class public Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;
.source "BleAdvertiseCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)V
    .locals 0
    .param p1, "callBack"    # Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdvertisingStarted(II)V
    .locals 1
    .param p1, "txPower"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;->onAdvertisingStarted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onAdvertisingStopped()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;->onAdvertisingStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
