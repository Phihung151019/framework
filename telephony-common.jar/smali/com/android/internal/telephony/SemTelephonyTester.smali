.class public Lcom/android/internal/telephony/SemTelephonyTester;
.super Landroid/os/Handler;
.source "SemTelephonyTester.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field protected blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasCallTest(Lcom/android/internal/telephony/SemTelephonyTester;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->hasCallTest(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V
    .locals 7

    .line 385
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 227
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 229
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyTester$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyTester$1;-><init>(Lcom/android/internal/telephony/SemTelephonyTester;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 392
    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mHandlerThread:Landroid/os/HandlerThread;

    .line 394
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    const-string p1, "com.samsung.intent.action.SET_PREFERRED_NETWORK_TYPE_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string p1, "com.samsung.intent.action.TELEPHONY_FEATURES_CHECK_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string p1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_ENTER_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string p1, "com.samsung.intent.action.ALL_CELL_INFO_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string p1, "com.samsung.intent.action.HAS_CALL_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string p1, "com.samsung.intent.action.SIMULATE_NETWORK_EMERGENCY_NUMBER_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string p1, "com.samsung.intent.action.UT_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string p1, "com.samsung.intent.action.DRX_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string p1, "com.samsung.intent.action.CDMA_WAITING_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string p1, "com.samsung.intent.action.SRVCC_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string p1, "com.samsung.intent.action.CALL_QUALITY_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string p1, "com.samsung.intent.action.SUPP_SERVICE_NOTIFICATION_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_0

    .line 408
    const-string p1, "com.samsung.intent.action.SEM_MMI_CODE_HELPER_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string p1, "com.samsung.intent.action.CARRIER_ID_FROM_MCCMNC_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string p1, "com.samsung.intent.action.REQUEST_SATELLITE_ENABLED_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string p1, "com.samsung.intent.action.REQUEST_SATELLITE_ALIGNED_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string p1, "com.samsung.intent.action.REQUEST_SATELLITE_PROVISION_TEST"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    .line 388
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Vendor test is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 616
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object p0
.end method

.method private blacklist handleDrxTest()V
    .locals 8

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v0

    .line 535
    const-string v1, "handleDrxTest"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRX Test #1] getCurrentCycle() - cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    .line 540
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #2-1] changeDRX(CN6_T32) - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x140

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #2-2] getCurrentCycle() - cycle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #3-1] changeDRX(CN9_T256, 1) - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa00

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-wide/32 v3, 0xdea8

    .line 550
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    move v3, v5

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DRX Test #3-2] getCurrentCycle() - cycle: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    .line 554
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #4-1] changeDRX(DEFAULT_CYCLE) - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x500

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRX Test #4-2] getCurrentCycle() - cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void

    .line 563
    :cond_1
    const-string v0, "handleDrxTest - drxController is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleUtTest()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    .line 458
    const-string v0, "handleUtTest - mImsPhone is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void

    .line 462
    :cond_0
    const-string v0, "handleUtTest"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 464
    const-string v0, "[UT Test #1] CallBarring"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testCallBarringApi()V

    const-wide/16 v0, 0x7d0

    .line 466
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 468
    const-string v2, "[UT Test #2] CallForwarding"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testCallForwardingApi()V

    .line 470
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 472
    const-string v2, "[UT Test #3] CallWaiting"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testCallWaitingApi()V

    .line 474
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 476
    const-string v2, "[UT Test #4] CLIR"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testClirApi()V

    .line 478
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 480
    const-string v2, "[UT Test #5] CLIP"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testClipApi()V

    .line 482
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 484
    const-string v0, "[UT Test #6] COLR - Skip (No COLR API in ImsPhone)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 486
    const-string v0, "[UT Test #7] COLP - Skip (No COLP API in ImsPhone)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist hasCallTest(I)V
    .locals 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 572
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SemCallTrackerHelper;->getHasCallAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 574
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 575
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 577
    iget-object v5, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result v5

    .line 579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasCallTest - key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", domain: 0x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category: 0x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 583
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 585
    :cond_2
    const-string p1, "hasCallTest END"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist isTestAllowed()Z
    .locals 1

    .line 440
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isTestAllowedAndEnabled()Z
    .locals 2

    .line 448
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    const-string v0, "persist.radio.debug.teletester"

    .line 449
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static blacklist isTestEnabled()Z
    .locals 2

    .line 444
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "persist.radio.debug.teletester"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemTelephonyTester"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeSemTelephonyTester(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SemTelephonyTester;
    .locals 3

    .line 418
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 422
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 423
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 424
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 425
    new-instance v1, Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V

    return-object v1
.end method

.method private blacklist testCallBarringApi()V
    .locals 5

    .line 493
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const-string v1, "AO"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "1234"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 496
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 497
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testCallForwardingApi()V
    .locals 9

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-string v6, "1234567890"

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 506
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v3

    const/4 v4, 0x4

    const-string v6, "1234567890"

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist testCallWaitingApi()V
    .locals 3

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 514
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 515
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 516
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testClipApi()V
    .locals 1

    .line 528
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->queryCLIP(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testClirApi()V
    .locals 3

    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 521
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 522
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 524
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist waitForMs(J)V
    .locals 1

    .line 622
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InterruptedException while waiting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 429
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public blacklist getAssistedDialingTestData()Ljava/lang/String;
    .locals 1

    .line 867
    const-string p0, "ril.test.assisteddial"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getForceCallDomain()Ljava/lang/String;
    .locals 1

    .line 842
    const-string p0, "ril.test.forcecalldomain"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNetworkTypeCapabilityTestData()Ljava/lang/String;
    .locals 3

    .line 882
    const-string p0, "ril.test.networktypecapability"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 884
    const-string v1, "---"

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public blacklist getProvisionStatusAndSetProvision(Z)V
    .locals 2

    .line 750
    new-instance p1, Lcom/android/internal/telephony/SemTelephonyTester$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SemTelephonyTester$2;-><init>(Lcom/android/internal/telephony/SemTelephonyTester;)V

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteManager;

    if-eqz v0, :cond_0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/satellite/SatelliteManager;->requestSatelliteSubscriberProvisionStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatelliteSubscriverProvisionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 591
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void

    .line 603
    :cond_0
    const-string p1, "EVENT_DRX_TEST"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->handleDrxTest()V

    return-void

    .line 598
    :cond_1
    const-string p1, "EVENT_UT_TEST"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->handleUtTest()V

    return-void

    .line 593
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_HASCALL_TEST - count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 594
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->hasCallTest(I)V

    return-void
.end method

.method public blacklist isBlockFallback(ILandroid/os/Bundle;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 732
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSilentRedialFromCs(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ril.test.block.psfb"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 735
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSilentRedialFromPs(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ril.test.block.psredial"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 740
    :cond_2
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSilentRedialFromPs(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ril.test.block.csfb"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return p0
.end method

.method public blacklist isBlockMakeCall()Z
    .locals 1

    .line 814
    const-string p0, "ril.test.block.makecall"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isForceNormalCall()Z
    .locals 1

    .line 672
    const-string p0, "ril.test.forcenormalcall"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isIgnoreEmergencySearch()Z
    .locals 1

    .line 709
    const-string p0, "ril.test.ignore.emergencysearch"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isNbiotSatelliteTestMode()Z
    .locals 1

    .line 925
    const-string p0, "persist.ril.test.nbiot_satellite"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateCallStartFailed()Z
    .locals 1

    .line 898
    const-string p0, "ril.test.callstartfailed"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateMidCallSupport()Z
    .locals 1

    .line 907
    const-string p0, "ril.test.midcallsupport"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateNormalCallRouting()Z
    .locals 1

    .line 916
    const-string p0, "ril.test.normalcallrouting"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateSsCsRetry()Z
    .locals 1

    .line 851
    const-string p0, "ril.test.ss.csretry"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateUtEnabled()Z
    .locals 1

    .line 832
    const-string p0, "ril.test.utenabled"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateVowifiEnabled()Z
    .locals 1

    .line 823
    const-string p0, "ril.test.vowifienabled"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist overrideEmergencySearchResult(IZ)I
    .locals 2

    .line 690
    const-string v0, "ril.test.emergencysearchresult"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_0

    .line 692
    const-string p2, "ril.test.emergencysearchresult.afterfail"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const/4 p2, 0x1

    if-lt v0, p2, :cond_1

    const/4 p2, 0x6

    if-gt v0, p2, :cond_1

    .line 696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override emergencySearchResult("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    return p1
.end method

.method public blacklist overrideImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 5

    .line 643
    const-string v0, "ril.test.imscall.failreason"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideImsReasonInfo - failReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 647
    :try_start_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 648
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    const/4 v2, 0x0

    .line 649
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 650
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 651
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 652
    array-length v2, v0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    .line 653
    aget-object v0, v0, v3

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 656
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideImsReasonInfo - newReasonInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 659
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideImsReasonInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist setSatelliteProvision(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;)V"
        }
    .end annotation

    .line 783
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyTester$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyTester$3;-><init>(Lcom/android/internal/telephony/SemTelephonyTester;)V

    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteManager;

    if-eqz v1, :cond_0

    .line 800
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, p1, v2, v0}, Landroid/telephony/satellite/SatelliteManager;->provisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteProvision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
