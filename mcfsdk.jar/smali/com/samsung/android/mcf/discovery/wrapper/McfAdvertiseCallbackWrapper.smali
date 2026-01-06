.class public Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;
.source "McfAdvertiseCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 15
    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdvertiseStarted(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;->onAdvertiseStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onAdvertiseStopped(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;->onAdvertiseStopped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
