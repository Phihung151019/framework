.class public Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
.super Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;
.source "McfUWBRangingCallbackWrapper.java"


# instance fields
.field private mBleSID:I

.field private final mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "bleSID"    # I

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 21
    iput p2, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mBleSID:I

    .line 22
    return-void
.end method


# virtual methods
.method public getBleSID()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mBleSID:I

    return v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfirmed(I[B)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "uwbParam"    # [B

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onConfirmed(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .locals 1
    .param p1, "data"    # [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
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

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onStatusChanged(IILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "arg1"    # I
    .param p3, "argString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onStatusChanged(IILjava/lang/String;)V
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

.method public onStatusError(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onStatusError(I)V
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

.method public onUWBParamChanged(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "targetDeviceAddr"    # Ljava/lang/String;
    .param p2, "param"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onUWBParamChanged(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
