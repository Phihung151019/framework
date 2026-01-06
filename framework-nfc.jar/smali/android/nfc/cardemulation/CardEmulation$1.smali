.class Landroid/nfc/cardemulation/CardEmulation$1;
.super Landroid/nfc/INfcEventCallback$Stub;
.source "CardEmulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/CardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/CardEmulation;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/CardEmulation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1429
    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {p0}, Landroid/nfc/INfcEventCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V
    .locals 3
    .param p1, "listenerCall"    # Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

    .line 1500
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1501
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;-><init>(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1505
    monitor-exit v0

    .line 1506
    return-void

    .line 1505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$callListeners$8(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "listenerCall"    # Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1503
    invoke-interface {p0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;->invoke(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$callListeners$9(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p0, "listenerCall"    # Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1503
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;-><init>(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1504
    return-void
.end method

.method static synthetic blacklist lambda$onAidConflictOccurred$3(Ljava/lang/String;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "aid"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1464
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onAidConflictOccurred(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAidNotRouted$4(Ljava/lang/String;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "aid"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1471
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onAidNotRouted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onInternalErrorReported$7(ILandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "errorType"    # I
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1492
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onInternalErrorReported(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onNfcStateChanged$5(ILandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "state"    # I
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1478
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onNfcStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onObserveModeDisabledInFirmware$2(Landroid/nfc/cardemulation/PollingFrame;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1457
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V

    return-void
.end method

.method static synthetic blacklist lambda$onObserveModeStateChanged$1(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "isEnabled"    # Z
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1450
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onObserveModeStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreferredServiceChanged$0(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "isPreferred"    # Z
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1443
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onPreferredServiceChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onRemoteFieldChanged$6(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 0
    .param p0, "isDetected"    # Z
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1485
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onRemoteFieldChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onAidConflictOccurred(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .line 1461
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    return-void

    .line 1464
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1465
    return-void
.end method

.method public blacklist onAidNotRouted(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .line 1468
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    return-void

    .line 1471
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1472
    return-void
.end method

.method public blacklist onInternalErrorReported(I)V
    .locals 1
    .param p1, "errorType"    # I

    .line 1489
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1490
    return-void

    .line 1492
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1493
    return-void
.end method

.method public blacklist onNfcStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1475
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    return-void

    .line 1478
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1479
    return-void
.end method

.method public blacklist onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V
    .locals 1
    .param p1, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;

    .line 1454
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    return-void

    .line 1457
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;-><init>(Landroid/nfc/cardemulation/PollingFrame;)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1458
    return-void
.end method

.method public blacklist onObserveModeStateChanged(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 1447
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    return-void

    .line 1450
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1451
    return-void
.end method

.method public blacklist onPreferredServiceChanged(Landroid/nfc/ComponentNameAndUser;)V
    .locals 2
    .param p1, "componentNameAndUser"    # Landroid/nfc/ComponentNameAndUser;

    .line 1431
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    return-void

    .line 1434
    :cond_0
    if-eqz p1, :cond_1

    .line 1436
    invoke-virtual {p1}, Landroid/nfc/ComponentNameAndUser;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, v1, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1437
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1438
    invoke-virtual {p1}, Landroid/nfc/ComponentNameAndUser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v0, v0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1440
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-virtual {p1}, Landroid/nfc/ComponentNameAndUser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1442
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1439
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1443
    .local v0, "isPreferred":Z
    :goto_0
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-direct {p0, v1}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1444
    return-void
.end method

.method public blacklist onRemoteFieldChanged(Z)V
    .locals 1
    .param p1, "isDetected"    # Z

    .line 1482
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1483
    return-void

    .line 1485
    :cond_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1486
    return-void
.end method
