.class public Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;
.super Lcom/samsung/android/mcf/ISubscribeCallback$Stub;
.source "SubscriberCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

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
.method public constructor <init>(Lcom/samsung/android/mcf/SubscribeCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "callBack"    # Lcom/samsung/android/mcf/SubscribeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/SubscribeCallback;",
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

    .line 30
    .local p2, "onMcfServiceStateChanged":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "checkStateClearAllUWBRangingCallback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;

    .line 34
    return-void
.end method


# virtual methods
.method public getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-object v0
.end method

.method public getSubscribeCallback()Lcom/samsung/android/mcf/SubscribeCallback;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/SubscribeCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/SubscribeCallback;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 110
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

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDiscoveryStarted(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public onDiscoveryStopped(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
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

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
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

.method public onHandoverStarted(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public onHandoverStopped(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
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

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/SubscribeCallback;->onMcfServiceStateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onPilotAdvertiseStarted(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    return-void
.end method

.method public onPilotAdvertiseStopped(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    return-void
.end method

.method public onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    .locals 2
    .param p1, "device"    # Landroid/os/PersistableBundle;
    .param p2, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onReceiveHandoverResponse(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V
    .locals 0
    .param p1, "handoverCallback"    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    .line 47
    return-void
.end method
