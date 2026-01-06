.class Lcom/samsung/android/mcf/McfSubscriberImpl;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "McfSubscriberImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfSubscriber;


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

.field private final mKeepDeviceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/messaging/McfMessageCallback;",
            "Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/SubscribeCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "callback"    # Lcom/samsung/android/mcf/SubscribeCallback;
    .param p4, "service"    # Lcom/samsung/android/mcf/IMcfService;
    .param p5, "listener"    # Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 49
    const-string v3, "McfSubscriberImpl"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "appId":I
    .end local p4    # "service":Lcom/samsung/android/mcf/IMcfService;
    .end local p5    # "listener":Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    .local v1, "context":Landroid/content/Context;
    .local v2, "appId":I
    .local v4, "service":Lcom/samsung/android/mcf/IMcfService;
    .local v5, "listener":Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/AbstractClient;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 50
    new-instance p1, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    iget-object p2, v0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/samsung/android/mcf/McfBleAdapterImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    new-instance p2, Lcom/samsung/android/mcf/McfSubscriberImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/mcf/McfSubscriberImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/McfSubscriberImpl;)V

    invoke-direct {p1, p3, p4, p2}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;-><init>(Lcom/samsung/android/mcf/SubscribeCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    .line 52
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mKeepDeviceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method private stopAllHandover()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopHandover()Z

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    .line 385
    return-void
.end method

.method private stopAllKeepDiscoveredDevice()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mKeepDeviceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 378
    return-void
.end method

.method private stopMessaging()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 389
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/mcf/messaging/McfMessageCallback;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 390
    .local v2, "callback":Lcom/samsung/android/mcf/messaging/McfMessageCallback;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->closeMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    .line 391
    .end local v2    # "callback":Lcom/samsung/android/mcf/messaging/McfMessageCallback;
    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 393
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->closeInternal()V

    .line 87
    return-void
.end method

.method public closeInternal()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "closeInternal"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopAllScan(I)V

    .line 97
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopAllAdvertise(I)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopAllKeepDiscoveredDevice()V

    .line 99
    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopAllUWBRanging(I)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopAllHandover()V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopMessaging()V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "callback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 110
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v3, "failed"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->invalidateService()V

    .line 115
    return-void
.end method

.method public closeMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 329
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 330
    .local v0, "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    const/4 v1, 0x0

    const-string v2, "closeMessagingClient"

    if-nez v0, :cond_0

    .line 331
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - not open"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return v1

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "MessageCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 340
    const/16 v3, 0x7e

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public enableUwbAsync()Z
    .locals 1

    .line 252
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->enableUwbAsync(I)Z

    move-result v0

    return v0
.end method

.method public getMessagingDeviceRssi(JLcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 5
    .param p1, "intervalMs"    # J
    .param p3, "callback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 360
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 361
    .local v0, "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    const/4 v1, 0x0

    const-string v2, "getMessagingDeviceRssi"

    if-nez v0, :cond_0

    .line 362
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - not open"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return v1

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "rssiInterval"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 369
    const-string v3, "MessageCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 370
    const/16 v3, 0x7f

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isMine(ILcom/samsung/android/mcf/SubscribeCallback;)Z
    .locals 1
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/SubscribeCallback;

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->isMyId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/SubscribeCallback;)Z

    move-result v0

    return v0
.end method

.method public keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "keep"    # Z
    .param p3, "callback"    # Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mKeepDeviceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;

    .line 164
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;
    const/4 v1, 0x0

    const-string v2, "keepDiscoveredDevice"

    if-eqz p2, :cond_1

    .line 165
    if-eqz v0, :cond_0

    .line 166
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore- already keep"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v1

    .line 170
    :cond_0
    new-instance v3, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;

    invoke-direct {v3, p3}, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V

    move-object v0, v3

    .line 171
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mKeepDeviceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_1
    if-nez v0, :cond_2

    .line 174
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore- not keep"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v1

    .line 178
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keep-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "deviceAddr"

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "booleanArg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    const-string v3, "callback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 184
    const/16 v3, 0x70

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    .line 186
    .local v3, "ret":I
    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 187
    iget-object v4, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mKeepDeviceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_3
    if-nez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method synthetic lambda$new$0$com-samsung-android-mcf-McfSubscriberImpl(II)V
    .locals 0
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I

    .line 51
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->checkStateClearAllUWBRangingCallback(II)V

    return-void
.end method

.method public open()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v1, "open"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 78
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public openMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 5
    .param p1, "messaging"    # Lcom/samsung/android/mcf/messaging/McfMessage;
    .param p2, "callback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 301
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 302
    return v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 305
    .local v0, "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    const-string v2, "openMessagingClient"

    if-eqz v0, :cond_1

    .line 306
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - already started"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v1

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v2, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-direct {v2, p2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;-><init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V

    .line 312
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    .local v2, "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 316
    const-string v3, "MessageCallback"

    invoke-virtual {v2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 317
    const/16 v3, 0x7d

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    .line 319
    .local v3, "ret":I
    if-eqz v3, :cond_2

    .line 320
    iget-object v4, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return v1

    .line 323
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerHandoverCallback"

    const-string v2, "already registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public sendMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 5
    .param p1, "message"    # Lcom/samsung/android/mcf/messaging/McfMessage;
    .param p2, "callback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 345
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mMcfMessageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 346
    .local v0, "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    const/4 v1, 0x0

    const-string v2, "sendMessage"

    if-nez v0, :cond_0

    .line 347
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - not open"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return v1

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v2}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 354
    const-string v3, "MessageCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 355
    const/16 v3, 0x7c

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "antennaPairSelection"    # I

    .line 268
    const/16 v0, 0x7a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->setAntennaPairSelection(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTargetUwbParam(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Ljava/lang/String;[BI)Z
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "TargetDeviceAddr"    # Ljava/lang/String;
    .param p3, "param"    # [B
    .param p4, "result"    # I

    .line 280
    const-string v0, "setTargetUwbParam"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->getRangingCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    move-result-object v1

    .line 284
    .local v1, "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    if-nez v1, :cond_1

    .line 285
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - not start"

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return v2

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "serviceID"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v3, "rangingCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 292
    const-string v3, "deviceAddr"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v3, "rangingUwbParam"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 294
    const-string v3, "rangingUwbResult"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const/16 v3, 0x7b

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 281
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    :cond_3
    :goto_0
    return v2
.end method

.method public startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 197
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->startAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result v0

    return v0
.end method

.method public startHandover(Lcom/samsung/android/mcf/handover/McfHandoverData;)Z
    .locals 4
    .param p1, "handoverData"    # Lcom/samsung/android/mcf/handover/McfHandoverData;

    .line 227
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v2, "startHandover"

    const-string v3, "Ignore - callback is null"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 233
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v2, 0x6a

    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getConnectionType()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(IILandroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/mcf/discovery/McfScanData;
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 128
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->startScan(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result v0

    return v0
.end method

.method public startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "config"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;

    .line 257
    const/16 v0, 0x78

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->startUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;Z)Z

    move-result v0

    return v0
.end method

.method public startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;Z)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "config"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
    .param p3, "needOpenUwbSession"    # Z

    .line 263
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/mcf/McfSubscriberImpl;->startUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;Z)Z

    move-result v0

    return v0
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 202
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result v0

    return v0
.end method

.method public stopHandover()Z
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopHandover"

    const-string v3, "Ignore - callback is null"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v1

    .line 242
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->getMyId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v2

    const-string v4, "serviceID"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const/16 v2, 0x6b

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 133
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result v0

    return v0
.end method

.method public stopScanWithFlush(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 138
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    .line 139
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    const-string v1, "stopScanWithFlush"

    if-nez v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not start"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, -0x1

    return v1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "deviceCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    const/16 v2, 0x68

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    return v2
.end method

.method public stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 274
    const/16 v0, 0x79

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterHandoverCallback()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->TAG:Ljava/lang/String;

    const-string v1, "unregisterHandoverCallback"

    const-string v2, "not registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfSubscriberImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    .line 223
    return-void
.end method
