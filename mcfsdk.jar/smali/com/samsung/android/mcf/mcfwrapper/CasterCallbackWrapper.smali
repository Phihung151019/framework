.class public Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;
.super Lcom/samsung/android/mcf/ICasterCallback$Stub;
.source "CasterCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/CasterCallback;

.field private mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

.field private mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/CasterCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "callBack"    # Lcom/samsung/android/mcf/CasterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/CasterCallback;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "onMcfServiceStateChanged":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "checkStateClearAllUWBRangingCallback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/samsung/android/mcf/ICasterCallback$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    .line 31
    iput-object p3, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;

    .line 32
    return-void
.end method


# virtual methods
.method public getCasterCallback()Lcom/samsung/android/mcf/CasterCallback;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    return-object v0
.end method

.method public getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/CasterCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/CasterCallback;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdvertiseStarted(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    return-void
.end method

.method public onAdvertiseStopped(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    return-void
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onHandoverRequest(ILandroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p2}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverRequest(Lcom/samsung/android/mcf/McfDevice;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onMcfServiceStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/CasterCallback;->onMcfServiceStateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onPilotScanResult(Ljava/lang/String;I)V
    .locals 0
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    return-void
.end method

.method public setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V
    .locals 0
    .param p1, "handoverCallback"    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    .line 44
    return-void
.end method
