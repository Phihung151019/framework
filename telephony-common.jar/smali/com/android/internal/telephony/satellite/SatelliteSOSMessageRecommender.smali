.class public Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;
.super Landroid/os/Handler;
.source "SatelliteSOSMessageRecommender.java"


# static fields
.field protected static final blacklist EVENT_SERVICE_STATE_CHANGED:I = 0x2

.field protected static final blacklist EVENT_TIME_OUT:I = 0x3


# instance fields
.field private blacklist mCheckingAccessRestrictionInProgress:Z

.field private final blacklist mContext:Landroid/content/Context;

.field protected blacklist mCountOfTimerStarted:I

.field private final blacklist mCountryDetector:Lcom/android/internal/telephony/TelephonyCountryDetector;

.field private blacklist mEmergencyConnection:Landroid/telecom/Connection;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

.field private blacklist mIgnoreCellular:Z

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private blacklist mImsRegistrationCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/RegistrationManager$RegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsSatelliteAllowedForCurrentLocation:Z

.field protected final blacklist mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsTimerTimedOut:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOemEnabledTimeoutMillis:J

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field protected final blacklist mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist mTimeoutMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$toKpsHS4Qch5xJf8TS919lktfcg(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/ims/ImsManager;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/ims/ImsManager;)V
    .locals 3

    .line 169
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mImsRegistrationCallbacks:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    const-wide/16 v1, 0x0

    .line 125
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    .line 127
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 133
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    .line 136
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 138
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIgnoreCellular:Z

    .line 170
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    .line 172
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 173
    invoke-virtual {p3}, Lcom/android/internal/telephony/satellite/SatelliteController;->getFeatureFlags()Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 174
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/TelephonyCountryDetector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountryDetector:Lcom/android/internal/telephony/TelephonyCountryDetector;

    .line 175
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mImsManager:Lcom/android/ims/ImsManager;

    .line 177
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getOemEnabledEmergencyCallWaitForConnectionTimeoutMillis(Landroid/content/Context;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mOemEnabledTimeoutMillis:J

    .line 178
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    return-void
.end method

.method private blacklist cleanUpResources(Z)V
    .locals 1

    .line 495
    const-string v0, "cleanUpResources"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->reportESosRecommenderDecision(Z)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 498
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->stopTimer()V

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->unregisterForInterestedStateChangedEvents()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    .line 504
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 505
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 506
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    .line 507
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    .line 509
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIgnoreCellular:Z

    .line 511
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist createExtraBundleForEventDisplayEmergencyMessage(Z)Landroid/os/Bundle;
    .locals 5

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getEmergencyCallToSatelliteHandoverType()I

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    .line 742
    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getOemEnabledSatelliteHandoverAppFromOverlayConfig(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 743
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 744
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 745
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getSatelliteEmergencyHandoverIntentActionFromOverlayConfig(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getDefaultSmsApp()Landroid/content/ComponentName;

    move-result-object v1

    .line 750
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 753
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DISPLAY_EMERGENCY_MESSAGE: handoverType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 756
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 757
    const-string v4, "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 759
    const-string v4, "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_LAUNCH_INTENT"

    .line 760
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->createHandoverAppLaunchPendingIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 759
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v3
.end method

.method private blacklist createHandoverAppLaunchPendingIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 771
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 771
    :cond_0
    const-string p1, "911"

    .line 774
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "emergencyNumber="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 776
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smsto:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 777
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p4, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 779
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x4000000

    .line 780
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object p4, p1

    .line 782
    :goto_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 783
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 785
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 786
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 787
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 p3, 0x44000000    # 512.0f

    invoke-static {p0, p2, p4, p3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private blacklist evaluateSendingConnectionEventDisplayEmergencyMessage()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-nez v1, :cond_0

    .line 335
    const-string v1, "No emergency call is ongoing..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->ploge(Ljava/lang/String;)V

    .line 336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 339
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateAndGetProvisionState()Z

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateSatelliteViaCarrierAvailability()V

    .line 356
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isCellularAvailable()Z

    move-result v1

    .line 358
    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIgnoreCellular:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 359
    const-string v1, "ignore CellularAvailable"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    move v1, v3

    .line 364
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    const/4 v4, -0x1

    if-nez v1, :cond_5

    .line 367
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowedByReasons()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v2, v4, :cond_4

    .line 375
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 376
    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 377
    const-string v3, "handleTimeoutEvent: Sent EVENT_DISPLAY_EMERGENCY_MESSAGE to Dialer"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 378
    iget-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->createExtraBundleForEventDisplayEmergencyMessage(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    const-string v6, "android.telephony.event.DISPLAY_EMERGENCY_MESSAGE"

    invoke-virtual {v5, v6, v3}, Landroid/telecom/Connection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v3, 0x1

    .line 385
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTimeoutEvent: isImsRegistered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isImsRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCellularAvailable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSatelliteAllowed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", shouldTrackCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 388
    invoke-virtual {v6}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    if-nez v3, :cond_e

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleTimeoutEvent - isDialerNotified: false ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 392
    const-string v1, "isCellularAvailable: true, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "isSatelliteAllowed: false, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "isSatelliteEmergencyMessagingViaCarrierAvailable: false, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :try_start_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    if-nez v6, :cond_9

    const-string v6, "mIsSatelliteAllowedForCurrentLocation: false, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 397
    :cond_9
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "misDeviceProvisioned: false, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowedByReasons()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "isSatelliteAllowedByReasons: false, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v1}, Landroid/telecom/Connection;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "shouldTrackCall: false, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-ne v2, v4, :cond_d

    .line 401
    const-string v1, "satelliteSubId: false, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 397
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 407
    :cond_e
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    .line 408
    monitor-exit v0

    return-void

    .line 340
    :cond_f
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsTimerTimedOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCheckingAccessRestrictionInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 343
    monitor-exit v0

    return-void

    .line 408
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private blacklist getBestCellularServiceState()I
    .locals 8

    .line 561
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v0, :cond_2

    aget-object v6, p0, v3

    .line 562
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 564
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 565
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v7, :cond_0

    return v2

    :cond_0
    if-ne v7, v5, :cond_1

    move v4, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    return v1

    :cond_3
    return v5
.end method

.method private static blacklist getOemEnabledEmergencyCallWaitForConnectionTimeoutMillis(Landroid/content/Context;)J
    .locals 2

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00be

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static blacklist getOemEnabledSatelliteHandoverAppFromOverlayConfig(Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104039f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOemEnabledSatelliteHandoverAppFromOverlayConfig: ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 665
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isMockModemAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const-string p0, "getOemEnabledSatelliteHandoverAppFromOverlayConfig: Read config_oem_enabled_satellite_sos_handover_app from device config"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V

    .line 668
    const-string p0, "telephony"

    const-string v0, "config_oem_enabled_satellite_sos_handover_app"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 671
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 673
    :cond_1
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 674
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 675
    new-instance p0, Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 677
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOemEnabledSatelliteHandoverAppFromOverlayConfig: invalid configured app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->loge(Ljava/lang/String;)V

    .line 680
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static blacklist getSatelliteEmergencyHandoverIntentActionFromOverlayConfig(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x10403c7

    goto :goto_0

    :cond_0
    const p1, 0x10403c1

    :goto_0
    const/4 v0, 0x0

    .line 692
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatelliteEmergencyHandoverIntentFilterActionFromOverlayConfig: ex="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->loge(Ljava/lang/String;)V

    move-object p0, v0

    .line 697
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isMockModemAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 698
    const-string p0, "getSatelliteEmergencyHandoverIntentActionFromOverlayConfig: Read config_satellite_emergency_handover_intent_action from device config"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V

    .line 700
    const-string p0, "telephony"

    const-string p1, "config_satellite_emergency_handover_intent_action"

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private blacklist handleCmdSendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)V
    .locals 2

    .line 811
    const-string v0, "Sent EVENT_DISPLAY_EMERGENCY_MESSAGE to Dialer forcefully."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 812
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    const/4 v0, 0x1

    .line 813
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->createExtraBundleForEventDisplayEmergencyMessage(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 815
    const-string v1, "android.telephony.event.DISPLAY_EMERGENCY_MESSAGE"

    invoke-virtual {p1, v1, v0}, Landroid/telecom/Connection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 816
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    return-void
.end method

.method private blacklist handleEmergencyCallConnectionStateChangedEvent(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->setLastEmergencyCallTime()V

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 452
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v1}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEmergencyCallConnectionStateChangedEvent: unexpected state changed event , mEmergencyConnection="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->ploge(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    return-void

    .line 466
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->shouldTrackCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 471
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 472
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteSupportedViaOem()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->requestIsSatelliteAllowedForCurrentLocation()V

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleEmergencyCallStartedEvent(Landroid/telecom/Connection;)V
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEmergencyCallStartedEvent: connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->setLastEmergencyCallTime()V

    .line 301
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->sendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->selectEmergencyCallWaitForConnectionTimeoutDuration()V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->registerForInterestedStateChangedEvents()V

    .line 309
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleStateChangedEventForHysteresisTimer()V

    .line 312
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 313
    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    .line 315
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist handleSatelliteAccessRestrictionCheckingResult(Z)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 623
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->evaluateSendingConnectionEventDisplayEmergencyMessage()V

    .line 624
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist handleSatelliteProvisionStateChangedEvent(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 321
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->cleanUpResources(Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist handleStateChangedEventForHysteresisTimer()V
    .locals 2

    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isIgnoreServiceStateChangeDuringE911()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIgnoreCellular:Z

    .line 588
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->startTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 592
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isCellularAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    if-eqz v0, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->startTimer()V

    goto :goto_0

    .line 595
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStateChangedEventForHysteresisTimer stopTimer, mEmergencyConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mEmergencyConnection:Landroid/telecom/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->stopTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private blacklist handleTimeoutEvent()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 327
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->evaluateSendingConnectionEventDisplayEmergencyMessage()V

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist isIgnoreServiceStateChangeDuringE911()Z
    .locals 1

    .line 916
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 918
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierRoamingNtnConnectType(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isImsRegistered()Z
    .locals 4

    .line 578
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 579
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static blacklist isMockModemAllowed()Z
    .locals 2

    .line 882
    const-string v0, "persist.radio.allow_mock_modem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.boot.radio.allow_mock_modem"

    .line 883
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isMultiSim()Z
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 822
    const-string v0, "isMultiSim: telephonyManager is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 825
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteAllowed()Z
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 414
    :cond_0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteAllowedForCurrentLocation:Z

    monitor-exit v0

    return p0

    .line 415
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist isSatelliteEmergencyMessagingViaCarrierAvailable()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEmergencyMessagingSupportedViaCarrier()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "isSatelliteEmergencyMessagingViaCarrierAvailable: false, device does not support satellite emergency messaging via carrier"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteSupported()Z
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEmergencyMessagingSupportedViaCarrier()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteSupportedViaOem()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteViaOemProvisioned()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSatelliteViaOemProvisioned()Z
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDeviceProvisioned()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 896
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 931
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 935
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .locals 1

    .line 939
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 941
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .locals 1

    .line 946
    const-string v0, "SatelliteSOSMessageRecommender"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 948
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist registerForInterestedStateChangedEvents()V
    .locals 6

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    .line 517
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 518
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist requestIsSatelliteAllowedForCurrentLocation()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    if-eqz v1, :cond_0

    .line 848
    const-string v1, "requestIsSatelliteCommunicationAllowedForCurrentLocation was already sent"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 849
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 851
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCheckingAccessRestrictionInProgress:Z

    .line 852
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V

    .line 870
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->requestIsSatelliteCommunicationAllowedForCurrentLocation(Landroid/os/OutcomeReceiver;)V

    return-void

    .line 852
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist selectEmergencyCallWaitForConnectionTimeoutDuration()V
    .locals 3

    .line 628
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 631
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierEmergencyCallWaitForConnectionTimeoutMillis(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 635
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNtnOnlySubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 637
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierEmergencyCallWaitForConnectionTimeoutMillis(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    goto :goto_0

    .line 640
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mOemEnabledTimeoutMillis:J

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    .line 643
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)Z
    .locals 4

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getEnforcedEmergencyCallToSatelliteHandoverType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getDelayInSendingEventDisplayEmergencyMessage()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    .line 804
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 803
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist shouldTrackCall(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startTimer()V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 603
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mTimeoutMillis:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 607
    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    const/4 v1, 0x0

    .line 608
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTimerTimedOut:Z

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer mCountOfTimerStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 610
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist stopTimer()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 615
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist unregisterForInterestedStateChangedEvents()V
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mISatelliteProvisionStateCallback:Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    .line 537
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 538
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist updateSatelliteConnectedViaCarrierWithinHysteresisTimeState()V
    .locals 3

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 901
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteConnectedViaCarrierWithinHysteresisTime()Landroid/util/Pair;

    move-result-object v0

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatelliteConnectedViaCarrierWithinHysteresisTimeState: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 905
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 907
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 906
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 909
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private blacklist updateSatelliteViaCarrierAvailability()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateSatelliteConnectedViaCarrierWithinHysteresisTimeState()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected blacklist getDefaultSmsApp()Landroid/content/ComponentName;
    .locals 1

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyCallToSatelliteHandoverType()I
    .locals 2

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteEmergencyMessagingViaCarrierAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSubIdOfSatelliteConnectedViaCarrierWithinHysteresisTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 832
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierRoamingNtnEmergencyCallToSatelliteHandoverType(I)I

    move-result p0

    return p0

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 836
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNtnOnlySubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 837
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 838
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getCarrierRoamingNtnEmergencyCallToSatelliteHandoverType(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unexpected message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void

    .line 216
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleSatelliteAccessRestrictionCheckingResult(Z)V

    return-void

    .line 213
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/Connection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleCmdSendEventDisplayEmergencyMessageForcefully(Landroid/telecom/Connection;)V

    return-void

    .line 207
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleEmergencyCallConnectionStateChangedEvent(Landroid/util/Pair;)V

    return-void

    .line 204
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleSatelliteProvisionStateChangedEvent(Z)V

    return-void

    .line 201
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleTimeoutEvent()V

    return-void

    .line 210
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleStateChangedEventForHysteresisTimer()V

    return-void

    .line 198
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/Connection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->handleEmergencyCallStartedEvent(Landroid/telecom/Connection;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isDeviceProvisioned()Z
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDeviceProvisioned()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isSatelliteAllowedByReasons()Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteManager;

    .line 285
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteManager;->getSatelliteDisallowedReasons()[I

    move-result-object v0

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllowedForDefaultMessageApp:false, disallowedReasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onEmergencyCallConnectionStateChanged(Ljava/lang/String;I)V
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string p1, "onEmergencyCallConnectionStateChanged: satellite is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onEmergencyCallStarted(Landroid/telecom/Connection;Z)V
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string p1, "onEmergencyCallStarted: satellite is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->plogd(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mIsTestEmergencyNumber:Z

    const/4 p2, 0x1

    .line 238
    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string p0, "onEmergencyCallStarted: Ignoring due to ongoing event:"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->logd(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->updateSatelliteConnectedViaCarrierWithinHysteresisTimeState()V

    .line 250
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist reportESosRecommenderDecision(Z)V
    .locals 2

    .line 480
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;-><init>()V

    .line 482
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setDisplaySosMessageSent(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountOfTimerStarted:I

    .line 483
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setCountOfTimerStarted(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isImsRegistered()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setImsRegistered(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getBestCellularServiceState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setCellularServiceState(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isMultiSim()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->getEmergencyCallToSatelliteHandoverType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setRecommendingHandoverType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    .line 488
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isSatelliteAllowed()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsSatelliteAllowedInCurrentLocation(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mCountryDetector:Lcom/android/internal/telephony/TelephonyCountryDetector;

    .line 489
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isWifiNetworkConnected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsWifiConnected(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 490
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteCarrierId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isNtnOnlyCarrier()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;

    move-result-object p0

    .line 480
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteSosMessageRecommender(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;)V

    return-void
.end method

.method protected blacklist requestIsSatelliteCommunicationAllowedForCurrentLocation(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteManager;

    .line 877
    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V

    invoke-virtual {v0, v1, p1}, Landroid/telephony/satellite/SatelliteManager;->requestIsCommunicationAllowedForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method protected blacklist updateAndGetProvisionState()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->updateSatelliteProvisionedStatePerSubscriberId()V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method
