.class public Lcom/android/internal/telephony/CallWaitingController;
.super Landroid/os/Handler;
.source "CallWaitingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallWaitingController$Cw;
    }
.end annotation


# static fields
.field public static final blacklist KEY_CS_SYNC:Ljava/lang/String; = "cs_sync"

.field public static final blacklist KEY_STATE:Ljava/lang/String; = "state"

.field public static final blacklist KEY_SUB_ID:Ljava/lang/String; = "subId"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "CallWaitingCtrl"

.field public static final blacklist PREFERENCE_TBCW:Ljava/lang/String; = "terminal_based_call_waiting"

.field public static final blacklist TERMINAL_BASED_ACTIVATED:I = 0x1

.field public static final blacklist TERMINAL_BASED_NOT_ACTIVATED:I = 0x0

.field public static final blacklist TERMINAL_BASED_NOT_SUPPORTED:I = -0x1


# instance fields
.field private blacklist mCallWaitingState:I

.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCsEnabled:Z

.field private blacklist mImsRegistered:Z

.field private blacklist mLastSubId:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private blacklist mRegisteredForNetworkAttach:Z

.field private final blacklist mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private blacklist mSupportedByImsService:Z

.field private blacklist mSyncPreference:I

.field private blacklist mValidSubscription:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$7L2nIzgEJnxFTUXkPCe4STSp-ic(Lcom/android/internal/telephony/CallWaitingController;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallWaitingController;->lambda$new$0(IIII)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/telephony/CallWaitingController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallWaitingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CallWaitingController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSupportedByImsService:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mValidSubscription:Z

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    .line 100
    iput v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    .line 101
    iput v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    .line 103
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mRegisteredForNetworkAttach:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 115
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getSavedState(I)I
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    const-string v1, "terminal_based_call_waiting"

    const/4 v2, 0x0

    .line 557
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedState subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist initialize()V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/android/internal/telephony/CallWaitingController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CallWaitingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/CallWaitingController;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CallWaitingController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    goto :goto_0

    .line 124
    :cond_0
    const-string v0, "CarrierConfigLoader is not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->loge(Ljava/lang/String;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    const-string v3, "terminal_based_call_waiting"

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cs_sync"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastSubId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sync="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", csEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isCircuitSwitchedNetworkAvailable()Z
    .locals 4

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCircuitSwitchedNetworkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 583
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private blacklist isImsRegistered()Z
    .locals 2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImsRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 589
    iget-boolean p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    return p0
.end method

.method private blacklist isSyncImsOnly()Z
    .locals 2

    .line 652
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->onCarrierConfigurationChanged(I)V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CallWaitingCtrl"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CallWaitingCtrl"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized blacklist onCarrierConfigurationChanged(I)V
    .locals 3

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    monitor-exit p0

    return-void

    .line 433
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 434
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierConfigChanged invalid subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 437
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mValidSubscription:Z

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->unregisterForNetworkAttached()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 442
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateCarrierConfig(IZ)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    .line 443
    monitor-exit p0

    return-void

    .line 446
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarrierConfigChanged cs_enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 448
    iget p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 449
    iget-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    if-nez p1, :cond_3

    .line 450
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->registerForNetworkAttached()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :cond_3
    monitor-exit p0

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist onGetCallWaitingDone(Landroid/os/AsyncResult;)V
    .locals 8

    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 320
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 323
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 324
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 325
    aget v0, p1, v1

    if-ne v0, v2, :cond_2

    aget p1, p1, v2

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_2

    .line 334
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallWaitingController;->updateSyncState(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 328
    :cond_0
    const-string p1, "onGetCallWaitingDone unexpected response"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetCallWaitingDone e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->loge(Ljava/lang/String;)V

    .line 336
    :cond_2
    :goto_0
    const-string p1, "onGetCallWaitingDone enabling CW service in CS network"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 338
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 337
    invoke-interface {p1, v2, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 340
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->unregisterForNetworkAttached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 344
    :cond_3
    :try_start_1
    instance-of v3, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .line 347
    monitor-exit p0

    return-void

    .line 351
    :cond_4
    :try_start_2
    check-cast v0, Lcom/android/internal/telephony/CallWaitingController$Cw;

    .line 353
    iget v3, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 355
    iget-object v0, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 359
    :cond_5
    :try_start_3
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x3

    if-nez v4, :cond_c

    .line 360
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    if-eqz v4, :cond_a

    .line 363
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_6

    goto :goto_3

    .line 374
    :cond_6
    aget v6, v4, v1

    if-ne v6, v2, :cond_7

    aget v4, v4, v2

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    if-ne v3, v5, :cond_9

    .line 378
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallWaitingController;->updateSyncState(Z)V

    if-nez v2, :cond_8

    .line 380
    iget-boolean p1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mImsRegistered:Z

    if-nez p1, :cond_8

    .line 382
    const-string p1, "onGetCallWaitingDone CW in CS network is disabled."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateState(I)V

    .line 387
    :cond_8
    iget-object p1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendGetCallWaitingResponse(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 390
    :cond_9
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallWaitingController;->updateState(I)V

    goto :goto_5

    .line 364
    :cond_a
    :goto_3
    const-string v1, "onGetCallWaitingDone unexpected response"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 365
    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    if-ne v1, v5, :cond_b

    .line 367
    iget-object p1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_4

    .line 369
    :cond_b
    iget-object v0, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    :goto_4
    monitor-exit p0

    return-void

    :cond_c
    if-ne v3, v5, :cond_d

    .line 393
    :try_start_5
    iget-boolean v1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mImsRegistered:Z

    if-eqz v1, :cond_d

    .line 396
    const-string p1, "onGetCallWaitingDone get an exception, but IMS is registered"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 397
    iget-object p1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendGetCallWaitingResponse(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 401
    :cond_d
    :goto_5
    :try_start_6
    iget-object v0, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    :goto_6
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist onRegisteredToNetwork()V
    .locals 3

    monitor-enter p0

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 426
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    .line 427
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 426
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized blacklist onSetCallWaitingDone(Landroid/os/AsyncResult;)V
    .locals 5

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateSyncState(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCallWaitingDone e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    instance-of v2, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 284
    monitor-exit p0

    return-void

    .line 288
    :cond_2
    :try_start_2
    check-cast v0, Lcom/android/internal/telephony/CallWaitingController$Cw;

    .line 290
    iget v2, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 292
    iget-object v0, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 296
    :cond_3
    :try_start_3
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v4, 0x3

    if-nez v3, :cond_5

    if-ne v2, v4, :cond_4

    .line 299
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateSyncState(Z)V

    .line 302
    :cond_4
    iget-boolean v1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mEnable:Z

    .line 301
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateState(I)V

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_6

    .line 304
    iget-boolean v2, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mImsRegistered:Z

    if-eqz v2, :cond_6

    .line 307
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateState(I)V

    .line 308
    iget-object p1, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 312
    :cond_6
    :goto_1
    :try_start_4
    iget-object v0, v0, Lcom/android/internal/telephony/CallWaitingController$Cw;->mOnComplete:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private blacklist registerForNetworkAttached()V
    .locals 3

    .line 602
    const-string v0, "registerForNetworkAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 603
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mRegisteredForNetworkAttach:Z

    if-eqz v0, :cond_0

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mRegisteredForNetworkAttach:Z

    return-void
.end method

.method private blacklist sendGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 414
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 417
    :goto_0
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private blacklist sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 406
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 407
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private blacklist unregisterForNetworkAttached()V
    .locals 1

    .line 610
    const-string v0, "unregisterForNetworkAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 611
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mRegisteredForNetworkAttach:Z

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    const/4 v0, 0x3

    .line 614
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 615
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mRegisteredForNetworkAttach:Z

    return-void
.end method

.method private blacklist updateState(I)V
    .locals 2

    .line 517
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/CallWaitingController;->updateState(IIZ)V

    return-void
.end method

.method private blacklist updateState(IIZ)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 523
    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    if-ne v1, p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sync="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ignoreSavedState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 536
    iget-object p3, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    const-string v2, "terminal_based_call_waiting"

    const/4 v3, 0x0

    .line 537
    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 539
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cs_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    iput p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    .line 546
    iput v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    .line 547
    iput p2, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    .line 552
    iget-object p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setTerminalBasedCallWaitingStatus(I)V

    return-void
.end method

.method private blacklist updateSyncState(Z)V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncState phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 570
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 659
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 661
    const-string p1, "CallWaitingController:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportedByImsService="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSupportedByImsService:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mValidSubscription="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mValidSubscription:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallWaitingState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSyncPreference="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastSubId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCsEnabled="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegisteredForNetworkAttach="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mRegisteredForNetworkAttach:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistered="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public declared-synchronized blacklist getCallWaiting(Landroid/os/Message;)Z
    .locals 5

    monitor-enter p0

    .line 167
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    .line 169
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallWaiting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 173
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    if-nez v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isCircuitSwitchedNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 176
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/CallWaitingController$Cw;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isImsRegistered()Z

    move-result v1

    invoke-direct {v0, v2, v1, p1}, Lcom/android/internal/telephony/CallWaitingController$Cw;-><init>(ZZLandroid/os/Message;)V

    .line 177
    invoke-virtual {p0, v3, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return v4

    .line 184
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_6

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isSyncImsOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 190
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v4, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 198
    :cond_4
    monitor-exit p0

    return v2

    .line 192
    :cond_5
    :goto_1
    :try_start_3
    new-instance v0, Lcom/android/internal/telephony/CallWaitingController$Cw;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isImsRegistered()Z

    move-result v1

    invoke-direct {v0, v2, v1, p1}, Lcom/android/internal/telephony/CallWaitingController$Cw;-><init>(ZZLandroid/os/Message;)V

    .line 193
    invoke-virtual {p0, v3, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    monitor-exit p0

    return v4

    .line 188
    :cond_6
    :goto_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendGetCallWaitingResponse(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    monitor-exit p0

    return v4

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public blacklist getSyncState()Z
    .locals 0

    .line 578
    iget-boolean p0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    return p0
.end method

.method public declared-synchronized blacklist getTerminalBasedCallWaitingState(Z)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 154
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 156
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mValidSubscription:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return v0

    .line 157
    :cond_1
    :try_start_2
    iget p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->onRegisteredToNetwork()V

    return-void

    .line 259
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->onGetCallWaitingDone(Landroid/os/AsyncResult;)V

    return-void

    .line 256
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->onSetCallWaitingDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist notifyRegisteredToNetwork()V
    .locals 1

    const/4 v0, 0x3

    .line 648
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized blacklist setCallWaiting(ZILandroid/os/Message;)Z
    .locals 4

    monitor-enter p0

    .line 210
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCallWaitingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 212
    monitor-exit p0

    return v2

    .line 214
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallWaiting enable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 218
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCsEnabled:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 219
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isCircuitSwitchedNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->registerForNetworkAttached()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 220
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/internal/telephony/CallWaitingController$Cw;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isImsRegistered()Z

    move-result v0

    invoke-direct {p1, v1, v0, p3}, Lcom/android/internal/telephony/CallWaitingController$Cw;-><init>(ZZLandroid/os/Message;)V

    .line 221
    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 222
    iget-object p3, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, v1, p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    monitor-exit p0

    return v1

    .line 232
    :cond_4
    :goto_1
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isSyncImsOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 241
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSyncPreference:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 249
    :cond_6
    monitor-exit p0

    return v2

    .line 243
    :cond_7
    :goto_2
    :try_start_3
    new-instance v0, Lcom/android/internal/telephony/CallWaitingController$Cw;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->isImsRegistered()Z

    move-result v3

    invoke-direct {v0, p1, v3, p3}, Lcom/android/internal/telephony/CallWaitingController$Cw;-><init>(ZZLandroid/os/Message;)V

    .line 244
    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    monitor-exit p0

    return v1

    .line 236
    :cond_8
    :goto_3
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->updateState(I)V

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p3, p1, p1}, Lcom/android/internal/telephony/CallWaitingController;->sendToTarget(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    monitor-exit p0

    return v1

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist setImsRegistrationState(Z)V
    .locals 2

    monitor-enter p0

    .line 596
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsRegistrationState prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 598
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mImsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist setTerminalBasedCallWaitingSupported(Z)V
    .locals 2

    monitor-enter p0

    .line 624
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mSupportedByImsService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 626
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTerminalBasedCallWaitingSupported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallWaitingController;->logi(Ljava/lang/String;)V

    .line 628
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mSupportedByImsService:Z

    if-eqz p1, :cond_1

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/CallWaitingController;->initialize()V

    .line 632
    iget-object p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->onCarrierConfigurationChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 634
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    if-eqz v0, :cond_2

    .line 636
    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_2
    const/4 p1, -0x1

    .line 638
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->updateState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public blacklist updateCarrierConfig(IZ)Z
    .locals 10

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallWaitingController;->mValidSubscription:Z

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/CallWaitingController;->mContext:Landroid/content/Context;

    const-string v2, "imsss.ut_terminal_based_services_int_array"

    const-string v3, "imsss.terminal_based_call_waiting_sync_type_int"

    const-string v4, "imsss.terminal_based_call_waiting_default_enabled_bool"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-static {v1, p1, v5}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 473
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 475
    array-length v5, v2

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_3

    aget v9, v2, v7

    if-nez v9, :cond_1

    move v8, v0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v8, v6

    :cond_3
    const/4 v2, 0x3

    .line 481
    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 483
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v8, :cond_4

    if-eqz v1, :cond_5

    move v6, v0

    goto :goto_1

    :cond_4
    move v6, v4

    .line 487
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->getSavedState(I)I

    move-result v1

    if-eqz p2, :cond_6

    goto :goto_2

    .line 500
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/CallWaitingController;->mLastSubId:I

    if-eq v5, p1, :cond_7

    const/4 p1, 0x2

    if-eq v3, p1, :cond_9

    if-ne v3, v2, :cond_7

    goto :goto_2

    :cond_7
    if-ne v6, v4, :cond_8

    goto :goto_3

    :cond_8
    if-ne v1, v4, :cond_a

    :cond_9
    :goto_2
    move v4, v6

    goto :goto_3

    :cond_a
    move v4, v1

    .line 512
    :goto_3
    invoke-direct {p0, v4, v3, p2}, Lcom/android/internal/telephony/CallWaitingController;->updateState(IIZ)V

    return v0
.end method
