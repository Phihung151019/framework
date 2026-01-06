.class public Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;
.source "BleScanCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V
    .locals 0
    .param p1, "callBack"    # Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 15
    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleScanCallback;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onScanFailed(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/ble/BleScanCallback;->onScanFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 1
    .param p1, "scanresult"    # Landroid/bluetooth/le/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/ble/BleScanCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
