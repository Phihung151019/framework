.class public Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
.super Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;
.source "McfMessageCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 18
    return-void
.end method


# virtual methods
.method public getMyCallback()Lcom/samsung/android/mcf/messaging/McfMessageCallback;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .param p2, "status"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageDeviceStatus(Lcom/samsung/android/mcf/McfDevice;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onMessageReceived(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageReceived(Lcom/samsung/android/mcf/McfDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onMessageResult(Landroid/os/PersistableBundle;II)V
    .locals 2
    .param p1, "mcfMessage"    # Landroid/os/PersistableBundle;
    .param p2, "result"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/messaging/McfMessage;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/messaging/McfMessage;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageResult(Lcom/samsung/android/mcf/messaging/McfMessage;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
