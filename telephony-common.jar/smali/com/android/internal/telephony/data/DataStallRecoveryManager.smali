.class public Lcom/android/internal/telephony/data/DataStallRecoveryManager;
.super Landroid/os/Handler;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

.field private static final blacklist CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

.field public static final blacklist RECOVERY_ACTION_CLEANUP:I = 0x1

.field public static final blacklist RECOVERY_ACTION_GET_DATA_CALL_LIST:I = 0x0

.field public static final blacklist RECOVERY_ACTION_RADIO_RESTART:I = 0x3

.field public static final blacklist RECOVERY_ACTION_REREGISTER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist RECOVERY_ACTION_RESET_MODEM:I = 0x4


# instance fields
.field private blacklist mActionValidationCount:I

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private blacklist mDataStallRecoveryDelayMillisArray:[J

.field private final blacklist mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

.field public blacklist mDataStallStartMs:J

.field private blacklist mDataStalled:Z

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsAirPlaneModeEnableDuringDataStall:Z

.field private blacklist mIsAttemptedAllSteps:Z

.field private blacklist mIsInternetNetworkConnected:Z

.field private blacklist mIsValidNetwork:Z

.field private blacklist mLastAction:I

.field private blacklist mLastActionReported:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMobileDataChangedToEnabledDuringDataStall:Z

.field private blacklist mNetworkCheckTimerStarted:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPredictWaitingMillis:J

.field private blacklist mRadioPowerState:I

.field private blacklist mRadioStateChangedDuringDataStall:Z

.field private blacklist mRecoveryAction:I

.field private blacklist mRecoveryTriggered:Z

.field private blacklist mSkipRecoveryActionArray:[Z

.field private final blacklist mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

.field private blacklist mTimeElapsedOfCurrentAction:J

.field private blacklist mTimeLastRecoveryStartMs:J

.field private blacklist mValidationCount:I

.field private final blacklist mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInternetValidationStatusChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onInternetValidationStatusChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMobileDataEnabledChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onMobileDataEnabledChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCONTENT_URL_DSRM_DURATION_MILLIS()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCONTENT_URL_DSRM_ENABLED_ACTIONS()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 260
    const-string v0, "dsrm_enabled_actions"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

    .line 268
    const-string v0, "dsrm_duration_millis"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V
    .locals 2

    .line 319
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    new-instance p5, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p5, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p5, 0x0

    .line 214
    iput-boolean p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    .line 230
    iput-boolean p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    const-wide/16 v0, 0x0

    .line 277
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 444
    new-instance p5, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;

    invoke-direct {p5, p0, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Landroid/os/Handler;)V

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 320
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 321
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSRM-"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    .line 322
    const-string p5, "DataStallRecoveryManager created."

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 323
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 324
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    .line 325
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 326
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 328
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p3

    new-instance p5, Lcom/android/internal/telephony/data/DataStallRecoveryManager$1;

    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {p5, p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$1;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    .line 329
    invoke-virtual {p3, p5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 339
    iput-object p6, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateDataStallRecoveryConfigs()V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->registerAllEvents()V

    .line 345
    new-instance p3, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-direct {p3, p1, p4, p2}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataNetworkController;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    return-void
.end method

.method private blacklist broadcastDataStallDetected(I)V
    .locals 10

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDataStallDetected recoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_STALL_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 743
    const-string v1, "recoveryAction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    xor-int/lit8 v4, v1, 0x1

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 748
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveredReason(Z)I

    move-result v6

    .line 749
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDurationOfCurrentRecoveryMs()J

    move-result-wide v1

    long-to-int v9, v1

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValidationCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mActionValidationCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 754
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    iget v7, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    iget v8, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->getDataStallRecoveryMetricsData(IZIIIII)Landroid/os/Bundle;

    move-result-object p1

    .line 759
    const-string v1, "EXTRA_DSRS_STATS_BUNDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cancelNetworkCheckTimer()V
    .locals 1

    .line 826
    const-string v0, "cancelNetworkCheckTimer()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 827
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 828
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    const/4 v0, 0x1

    .line 829
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private blacklist cleanUpDataNetwork()V
    .locals 1

    .line 777
    const-string v0, "cleanUpDataNetwork: notify clean up data network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    .line 779
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    .line 778
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist doRecovery()V
    .locals 4

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    .line 1067
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result v1

    .line 1070
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1071
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSignalStrengthEvent(II)V

    .line 1072
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataStallEvent(II)V

    .line 1073
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    const/4 v1, 0x0

    .line 1074
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    .line 1075
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeElapsedOfCurrentAction:J

    .line 1079
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isKorOperator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->saveCSDiagnosisData(I)V

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallBigData()V

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    .line 1113
    const-string v0, "doRecovery(): modem reset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->rebootModem()V

    .line 1115
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    .line 1116
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    goto :goto_0

    .line 1119
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecovery: Invalid recoveryAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1108
    :cond_2
    const-string v0, "doRecovery(): restarting radio"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 1110
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->powerOffRadio()V

    goto :goto_0

    .line 1101
    :cond_3
    const-string v0, "doRecovery(): re-register network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->reRegister()V

    .line 1103
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    .line 1104
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    goto :goto_0

    .line 1095
    :cond_4
    const-string v0, "doRecovery(): cleanup all connections"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 1096
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cleanUpDataNetwork()V

    .line 1098
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_0

    .line 1090
    :cond_5
    const-string v0, "doRecovery(): get data call list"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataCallList()V

    .line 1092
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 1124
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->startNetworkCheckTimer(I)V

    return-void
.end method

.method private blacklist getDataCallList()V
    .locals 1

    .line 771
    const-string v0, "getDataCallList: request data call list"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 772
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->requestDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getDataNetworkType()I
    .locals 0

    .line 1359
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1363
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getDataStallBigData()V
    .locals 5

    .line 1336
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1337
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x9

    .line 1339
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x19

    .line 1340
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    .line 1341
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1342
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1343
    const-string v2, "Get DataStall BigData"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataStallBigData: exception occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    .line 1349
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1350
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataStallBigData: close failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private blacklist getDurationOfCurrentRecoveryMs()J
    .locals 4

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeElapsedOfCurrentAction:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getElapsedTimeSinceRecoveryMs()J
    .locals 4

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getRecoveredReason(Z)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1049
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1050
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    if-gt p1, v1, :cond_1

    const/4 v1, 0x2

    .line 1053
    :cond_1
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1

    .line 1056
    :cond_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private blacklist isAnyPhoneNetworkScanStarted()Z
    .locals 7

    .line 945
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkScanStarted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getNetworkScanStarted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " on phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 946
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getNetworkScanStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private blacklist isKorOperator()Z
    .locals 2

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1129
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LGT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 1325
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 1327
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private blacklist isPhoneStateIdle()Z
    .locals 7

    .line 962
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isRecoveryAlreadyStarted()Z
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isRecoveryNeeded(Z)Z
    .locals 7

    .line 842
    const-string v0, "enter: isRecoveryNeeded()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logv(Ljava/lang/String;)V

    .line 845
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 846
    const-string v1, "com.salab.issuetracker"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip data stall recovery on noship binary, isNoship : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isUTDevice : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 853
    :cond_0
    const-string v0, "ril.testmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "labtest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    const-string p1, "skip data stall recovery on lab test"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 858
    :cond_1
    const-string v0, "ril.cpreset"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 859
    const-string p1, "skip data stall recovery on Bad Network while Radio is not available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isTestbedSim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    const-string p1, "skip data stall recovery on 00101 sim case"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 870
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryAlreadyStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 871
    const-string p1, "skip when network still remains invalid and recovery was not started yet"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 876
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    if-eqz v0, :cond_5

    .line 877
    const-string p1, "skip retrying continue recovery action"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 882
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getElapsedTimeSinceRecoveryMs()J

    move-result-wide v3

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    if-eqz p1, :cond_6

    .line 884
    const-string p1, "skip back to back data stall recovery"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 889
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isPhoneStateIdle()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    if-le p1, v1, :cond_7

    .line 890
    const-string p1, "skip data stall recovery as there is an active call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 895
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isAnyPhoneNetworkScanStarted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 896
    const-string p1, "skip data stall recovery as network scan started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 903
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result p1

    if-gt p1, v1, :cond_9

    .line 905
    const-string p1, "skip data stall recovery as in poor signal condition"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 909
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isInternetDataAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_a

    .line 910
    const-string p1, "skip data stall recovery as data not allowed."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 914
    :cond_a
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    if-nez p1, :cond_b

    .line 915
    const-string p1, "skip data stall recovery as data not connected"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 919
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isInternetDataNetworkSuspended()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 920
    const-string p1, "skip data stall recovery as validation connection is suspened state"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    .line 926
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SKT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 927
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isSktSim()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 928
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataNetworkType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataInLegacy3gpp(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 929
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_d

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 931
    const-string p1, "skip data stall recovery as there is 3G active call state with SKT device & SKT SIM"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v2

    :cond_d
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1192
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1210
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 1220
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .locals 0

    .line 570
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateDataStallRecoveryConfigs()V

    return-void
.end method

.method private blacklist onInternetValidationStatusChanged(I)V
    .locals 4

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInternetValidationStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->validationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 614
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    .line 615
    iget v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    .line 616
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setNetworkValidationState(Z)V

    if-eqz p1, :cond_2

    .line 620
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "CHA"

    const-string v1, "SPO"

    const-string v2, "CCT"

    const-string v3, "XMO"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 621
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->broadcastDataStallDetected(I)V

    .line 624
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->reset()V

    return-void

    .line 625
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryNeeded(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 627
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    .line 628
    const-string p1, "trigger data stall recovery"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 630
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private blacklist onMobileDataEnabledChanged(Z)V
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataEnabledChanged: DataEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",DataStalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 582
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 584
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    :cond_0
    return-void
.end method

.method private blacklist powerOffRadio()V
    .locals 1

    .line 784
    const-string v0, "powerOffRadio: Restart radio"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 785
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    return-void
.end method

.method private static blacklist radioPowerStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_0
    const-string p0, "RADIO_POWER_UNAVAILABLE"

    return-object p0

    .line 1160
    :cond_1
    const-string p0, "RADIO_POWER_ON"

    return-object p0

    .line 1159
    :cond_2
    const-string p0, "RADIO_POWER_OFF"

    return-object p0
.end method

.method private blacklist reRegister()V
    .locals 1

    .line 797
    const-string v0, "reRegister: re-registe network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 798
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist rebootModem()V
    .locals 1

    .line 790
    const-string v0, "rebootModem: reboot modem"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 791
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->rebootModem(Landroid/os/Message;)V

    return-void
.end method

.method private static blacklist recoveredReasonToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1145
    :cond_0
    const-string p0, "RECOVERED_REASON_USER"

    return-object p0

    .line 1144
    :cond_1
    const-string p0, "RECOVERED_REASON_MODEM"

    return-object p0

    .line 1143
    :cond_2
    const-string p0, "RECOVERED_REASON_DSRM"

    return-object p0

    .line 1142
    :cond_3
    const-string p0, "RECOVERED_REASON_NONE"

    return-object p0
.end method

.method private static blacklist recoveryActionToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1181
    :cond_0
    const-string p0, "RECOVERY_ACTION_RESET_MODEM"

    return-object p0

    .line 1180
    :cond_1
    const-string p0, "RECOVERY_ACTION_RADIO_RESTART"

    return-object p0

    .line 1177
    :cond_2
    const-string p0, "RECOVERY_ACTION_REREGISTER"

    return-object p0

    .line 1179
    :cond_3
    const-string p0, "RECOVERY_ACTION_CLEANUP"

    return-object p0

    .line 1175
    :cond_4
    const-string p0, "RECOVERY_ACTION_GET_DATA_CALL_LIST"

    return-object p0
.end method

.method private blacklist registerAllEvents()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;

    new-instance v2, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_ENABLED_ACTIONS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->CONTENT_URL_DSRM_DURATION_MILLIS:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist reset()V
    .locals 3

    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    .line 594
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    .line 595
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 596
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    .line 597
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 598
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cancelNetworkCheckTimer()V

    const-wide/16 v1, 0x0

    .line 599
    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 600
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 601
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 602
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mValidationCount:I

    .line 603
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    return-void
.end method

.method private blacklist resetAction()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 638
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    .line 640
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    return-void
.end method

.method private blacklist saveCSDiagnosisData(I)V
    .locals 7

    .line 1269
    const-string v0, "saveCSDiagnosisData : close fail!!!"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCSDiagnosisData() : action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 1274
    const-string v1, "/data/log/err/csdiag_datastall_info.dat"

    .line 1275
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yy-MM-dd_HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1276
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 1278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 1281
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1282
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1284
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveCSDiagnosisData() : data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1287
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_c

    :catch_0
    move-exception p1

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v4

    goto/16 :goto_5

    :catch_2
    move-exception p1

    move-object v2, v4

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/16 p1, 0xa

    .line 1290
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1291
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1292
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1296
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 664 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_4

    .line 1305
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-void

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto/16 :goto_c

    :catch_3
    move-exception p1

    move-object v3, v2

    goto :goto_1

    :catch_4
    move-exception p1

    move-object v3, v2

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v3, v2

    goto/16 :goto_8

    :catchall_2
    move-exception p1

    goto/16 :goto_c

    :catch_6
    move-exception p1

    goto :goto_1

    :catch_7
    move-exception p1

    goto :goto_5

    :catch_8
    move-exception p1

    goto :goto_8

    .line 1302
    :goto_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException occured"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    .line 1309
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_2

    :catch_9
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v3, :cond_4

    .line 1312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_b

    .line 1315
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    goto :goto_b

    .line 1300
    :goto_5
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in processed file"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_2

    .line 1309
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_6

    :catch_a
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v3, :cond_4

    .line 1312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_b

    .line 1315
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    .line 1298
    :goto_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Not Found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_3

    .line 1309
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_9

    :catch_b
    move-exception p1

    goto :goto_a

    :cond_3
    :goto_9
    if-eqz v3, :cond_4

    .line 1312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_b

    .line 1315
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_4
    :goto_b
    return-void

    :goto_c
    if-eqz v2, :cond_5

    .line 1309
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_d

    :catch_c
    move-exception v1

    goto :goto_e

    :cond_5
    :goto_d
    if-eqz v3, :cond_6

    .line 1312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_f

    .line 1315
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    .line 1317
    :cond_6
    :goto_f
    throw p1
.end method

.method private blacklist setNetworkValidationState(Z)V
    .locals 12

    .line 982
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveredReason(Z)I

    move-result v4

    if-eqz p1, :cond_0

    .line 984
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 988
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 991
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    .line 993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data stall: start time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    invoke-static {v5, v6}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    move v3, v1

    move v7, v3

    move v0, v2

    move v5, v0

    goto :goto_0

    .line 995
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    if-nez v0, :cond_2

    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 999
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    move v3, v1

    move v5, v3

    move v7, v2

    goto :goto_0

    :cond_2
    move v0, v2

    move v3, v0

    move v5, v3

    move v7, v5

    :goto_0
    if-eqz p1, :cond_3

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 1007
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    .line 1008
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_9

    .line 1013
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1016
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDurationOfCurrentRecoveryMs()J

    move-result-wide v0

    long-to-int v2, v0

    :cond_6
    move v6, v2

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mStats:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->uploadMetrics(IZIIZI)V

    .line 1021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data stall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_7

    .line 1023
    const-string v0, "start"

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    const-string v0, "in process"

    goto :goto_3

    :cond_8
    const-string v0, "end"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastaction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 1025
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRecovered="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-static {v4}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveredReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isFirstValidationAfterDoRecovery="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", TimeDuration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", TimeDurationForCurrentRecoveryAction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private blacklist startNetworkCheckTimer(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkCheckTimer(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 815
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 819
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v1

    .line 818
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateDataStallRecoveryConfigs()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataStallRecoveryDelayMillis()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataStallRecoveryShouldSkipArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigActions()V

    .line 543
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigDurations()V

    return-void
.end method

.method private blacklist updateGlobalConfigActions()V
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsrm_enabled_actions"

    .line 470
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    array-length v1, v0

    new-array v2, v1, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 478
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    aget-boolean v4, v2, v3

    xor-int/lit8 v4, v4, 0x1

    aput-boolean v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    .line 489
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 490
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    .line 492
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 493
    const-string v0, "Enabled actions is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateGlobalConfigDurations()V
    .locals 9

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 504
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsrm_duration_millis"

    .line 503
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    .line 508
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 509
    array-length v1, v0

    new-array v4, v1, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_0

    .line 512
    :try_start_0
    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v4, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 514
    :catch_0
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 515
    const-string v0, "Parsing duration millis error"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryDelayMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 528
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 529
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    return-void

    .line 531
    :cond_1
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 532
    const-string v0, "Duration millis is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1231
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 1233
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1232
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsValidNetwork="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInternetNetworkConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirPlaneModeEnableDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataStalled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastAction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAttemptedAllSteps="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataStallStartMs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRadioPowerState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->radioPowerStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastActionReported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeLastRecoveryStartMs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 1246
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1245
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecoveryAction()="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRadioStateChangedDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMobileDataChangedToEnabledDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPredictWaitingMillis="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryDelayMillisArray="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 1255
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1253
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipRecoveryActionArray="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1258
    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1262
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1264
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getContentObserver()Landroid/database/ContentObserver;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public blacklist getDataStallRecoveryDelayMillis(I)J
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public blacklist getRecoveryAction()I
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 652
    iget p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logv(Ljava/lang/String;)V

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    return-void

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigDurations()V

    return-void

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateGlobalConfigActions()V

    return-void

    .line 419
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    .line 420
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-eqz p1, :cond_4

    .line 422
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 423
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 424
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    .line 423
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 427
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAirPlaneModeEnableDuringDataStall:Z

    .line 429
    :cond_3
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    :cond_4
    return-void

    .line 416
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->doRecovery()V

    return-void

    .line 402
    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryTriggered:Z

    .line 404
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryNeeded(Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cancelNetworkCheckTimer()V

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->startNetworkCheckTimer(I)V

    return-void

    .line 410
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->broadcastDataStallDetected(I)V

    .line 413
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPredictWaitingMillis:J

    .line 412
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist setRecoveryAction(I)V
    .locals 2

    .line 663
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 664
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mActionValidationCount:I

    .line 666
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 672
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 674
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    .line 687
    :cond_1
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->shouldSkipRecoveryAction(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 688
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 699
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    goto :goto_0

    .line 696
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_0

    .line 693
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_0

    .line 690
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 704
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRecoveryAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecoveryAction:I

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist shouldSkipRecoveryAction(I)Z
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    aget-boolean p0, p0, p1

    return p0
.end method
