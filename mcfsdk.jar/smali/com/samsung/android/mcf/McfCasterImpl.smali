.class Lcom/samsung/android/mcf/McfCasterImpl;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "McfCasterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfCaster;


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

.field private mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/CasterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "callback"    # Lcom/samsung/android/mcf/CasterCallback;
    .param p4, "service"    # Lcom/samsung/android/mcf/IMcfService;
    .param p5, "listener"    # Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 45
    const-string v3, "McfCasterImpl"

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

    .line 46
    new-instance p1, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    iget-object p2, v0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/samsung/android/mcf/McfBleAdapterImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    new-instance p2, Lcom/samsung/android/mcf/McfCasterImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/mcf/McfCasterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/McfCasterImpl;)V

    invoke-direct {p1, p3, p4, p2}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;-><init>(Lcom/samsung/android/mcf/CasterCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    .line 48
    return-void
.end method

.method private static isContactOnlyAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z
    .locals 2
    .param p0, "mcfAdvertiseData"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getAccessPermission()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private stopAllHandover()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopHandover()Z

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    .line 401
    return-void
.end method

.method private stopMessaging()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->getMyCallback()Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    .line 394
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->closeInternal()V

    .line 84
    return-void
.end method

.method public closeInternal()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "closeInternal"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopAllAdvertise(I)V

    .line 94
    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopAllScan(I)V

    .line 95
    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopAllUWBRanging(I)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopMessaging()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopAllHandover()V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "callback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 106
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "failed"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->invalidateService()V

    .line 111
    return-void
.end method

.method public closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 5
    .param p1, "msgCallback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "closeMessagingServer"

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "not opened"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "callback is not matched. but, close server"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 366
    .local v0, "wrapper":Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 367
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "MessageCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    const/16 v3, 0xda

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public confirmUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/McfDevice;Z)Z
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "device"    # Lcom/samsung/android/mcf/McfDevice;
    .param p3, "confirm"    # Z

    .line 298
    const-string v0, "confirmUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/McfCasterImpl;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    if-nez p2, :cond_1

    .line 303
    iget-object v1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "device should not be null"

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return v2

    .line 306
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "mcfBtAddress":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 308
    iget-object v3, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v4, "device BT address should not be null"

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return v2

    .line 312
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->getRangingCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    move-result-object v3

    .line 313
    .local v3, "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    if-nez v3, :cond_3

    .line 314
    iget-object v4, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v5, "Ignore - not started"

    invoke-static {v4, v0, v5}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v2

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v4, "confirmRanging"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "serviceID"

    invoke-virtual {v3}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v4, "rangingCallback"

    invoke-virtual {v3}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v4, "deviceAddr"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v4, "confirm"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    const/16 v4, 0xd7

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 299
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mcfBtAddress":Ljava/lang/String;
    .end local v3    # "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    :cond_5
    :goto_0
    return v2
.end method

.method public enableUwbAsync()Z
    .locals 1

    .line 274
    const/16 v0, 0xdc

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->enableUwbAsync(I)Z

    move-result v0

    return v0
.end method

.method public isMine(ILcom/samsung/android/mcf/CasterCallback;)Z
    .locals 1
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/CasterCallback;

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->isMyId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/CasterCallback;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-samsung-android-mcf-McfCasterImpl(II)V
    .locals 0
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I

    .line 47
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->checkStateClearAllUWBRangingCallback(II)V

    return-void
.end method

.method public open()I
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v1, "open"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public openMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 4
    .param p1, "msgCallback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 330
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    return v1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const-string v2, "openMessagingServer"

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - app can open only 1 Messaging server"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return v1

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;-><init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "serviceID"

    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->getMyId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "MessageCallback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 345
    const/16 v2, 0xd9

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 346
    .local v2, "ret":I
    if-eqz v2, :cond_2

    .line 347
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 350
    :cond_2
    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public registerAdvertiseData(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 5
    .param p1, "scanData"    # Lcom/samsung/android/mcf/discovery/McfScanData;
    .param p2, "advData"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .param p3, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 144
    invoke-static {p2}, Lcom/samsung/android/mcf/McfCasterImpl;->isContactOnlyAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z

    move-result v0

    const-string v1, "registerAdvertiseData"

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v2, "Need READ_CONTACTS permission"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/McfCasterImpl;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    .line 150
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 151
    iget-object v3, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - already registered"

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return v2

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scanMode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 155
    iget-object v3, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - This API don\'t support Low_Latency Scan"

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v2

    .line 158
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/mcf/discovery/McfScanData;->setTimeout(I)V

    .line 159
    invoke-virtual {p2, v2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->setTimeout(I)V

    .line 161
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    invoke-direct {v1, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 163
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    .local v1, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/mcf/McfCasterImpl;->putScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2, v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 167
    const-string v2, "deviceCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 169
    const/16 v2, 0xcb

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 170
    .local v2, "ret":I
    if-eqz v2, :cond_3

    .line 171
    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/McfCasterImpl;->removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 174
    :cond_3
    return v2
.end method

.method public registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerHandoverCallback"

    const-string v2, "already registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public sendHandoverResponse(Lcom/samsung/android/mcf/handover/McfHandoverData;Z)Z
    .locals 4
    .param p1, "handoverData"    # Lcom/samsung/android/mcf/handover/McfHandoverData;
    .param p2, "isAllow"    # Z

    .line 243
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendHandoverResponse"

    const-string v3, "Ignore - callback is null"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "allow"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const/16 v2, 0xcd

    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getConnectionType()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(IILandroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public sendResponseMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .locals 4
    .param p1, "message"    # Lcom/samsung/android/mcf/messaging/McfMessage;
    .param p2, "msgCallback"    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    .line 374
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "sendResponseMessage"

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not opened"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return v1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - callback is not matched"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return v1

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 385
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "MessageCallback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 386
    const/16 v2, 0xdb

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "antennaPairSelection"    # I

    .line 280
    const/16 v0, 0xd8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/mcf/McfCasterImpl;->setAntennaPairSelection(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "antennaPairSelection"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 287
    const/16 v0, 0xd8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/mcf/McfCasterImpl;->setAntennaPairSelection(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 127
    invoke-static {p1}, Lcom/samsung/android/mcf/McfCasterImpl;->isContactOnlyAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v1, "startAdvertise"

    const-string v2, "Need READ_CONTACTS permission"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/McfCasterImpl;->startAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result v0

    return v0
.end method

.method public startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/mcf/discovery/McfScanData;
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 213
    const/16 v0, 0xd3

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/McfCasterImpl;->startScan(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result v0

    return v0
.end method

.method public startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p2, "config"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;

    .line 268
    const/16 v0, 0xd5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/mcf/McfCasterImpl;->startUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;Z)Z

    move-result v0

    return v0
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 137
    const/16 v0, 0xc9

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result v0

    return v0
.end method

.method public stopHandover()Z
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopHandover"

    const-string v3, "Ignore - callback is null"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return v1

    .line 259
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->getMyId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v2

    const-string v4, "serviceID"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const/16 v2, 0xce

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 218
    const/16 v0, 0xd4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result v0

    return v0
.end method

.method public stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 293
    const/16 v0, 0xd6

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterAdvertiseData(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 198
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    .line 199
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    const-string v1, "unregisterAdvertiseData"

    if-nez v0, :cond_0

    .line 200
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not registered"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v1, -0x1

    return v1

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "deviceCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 208
    const/16 v2, 0xcc

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    return v2
.end method

.method public unregisterHandoverCallback()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v1, "unregisterHandoverCallback"

    const-string v2, "not registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    .line 239
    return-void
.end method

.method public updateAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 4
    .param p1, "advData"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 179
    invoke-static {p1}, Lcom/samsung/android/mcf/McfCasterImpl;->isContactOnlyAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z

    move-result v0

    const-string v1, "updateAdvertiseData"

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v2, "Need READ_CONTACTS permission"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/McfCasterImpl;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    .line 185
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    if-nez v0, :cond_1

    .line 186
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not registered"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v1, -0x1

    return v1

    .line 189
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->setTimeout(I)V

    .line 190
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 192
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "deviceCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    const/16 v2, 0xd2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/mcf/McfCasterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    return v2
.end method
