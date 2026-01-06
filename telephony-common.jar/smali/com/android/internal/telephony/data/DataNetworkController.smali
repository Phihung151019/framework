.class public Lcom/android/internal/telephony/data/DataNetworkController;
.super Landroid/os/Handler;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;,
        Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;,
        Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;,
        Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;
    }
.end annotation


# static fields
.field private static final blacklist DataLockFeature:Z

.field public static final blacklist EVENT_ENABLE_T3346:I = 0x20

.field public static final blacklist EVENT_KNOX_MMS_CONTROL:I = 0x25

.field public static final blacklist EVENT_NON_DDS_MMS_ENDED:I = 0x1d

.field public static final blacklist EVENT_NON_DDS_MMS_STARTED:I = 0x1c

.field public static final blacklist EVENT_OPPOSITE_SIM_STATE_CHANGED:I = 0x26

.field public static final blacklist EVENT_PLMN_CHANGED:I = 0x1f

.field public static final blacklist EVENT_QOS_STATE_CHANGED:I = 0x23

.field public static final blacklist EVENT_REEVALUATE_EXISTING_DATA_NETWORKS_BEFORE_DDS_CHANGE:I = 0x21

.field public static final blacklist EVENT_UICC_APPS_ENABLEMENT_STATE_CHANGED:I = 0x27

.field private static final blacklist GUARD_TIMER_INTERVAL_TO_QUERY_DATA_USAGE_API_STATS_MILLIS:J

.field private static final blacklist REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_DETACHED_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

.field private static final blacklist SUPPORTED_IMS_FEATURES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_MODEM_COUNT:I

.field private static blacklist mNextRetryTime:J


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mAllDataDisconnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

.field private blacklist mAnyDataNetworkExisting:Z

.field private blacklist mBootStrapSimTotalDataUsageBytes:J

.field private blacklist mBootstrapSimLastDataUsageQueryTime:J

.field private final blacklist mCongestedOverrideNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectedInternetNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataActivity:I

.field protected blacklist mDataAllowList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkControllerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

.field private final blacklist mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

.field private final blacklist mDataServiceBound:Landroid/util/SparseBooleanArray;

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

.field private final blacklist mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mImsDataNetworkState:I

.field private final blacklist mImsFeaturePackageName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/RegistrationManager$RegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsManager:Landroid/telephony/ims/ImsManager;

.field private final blacklist mImsStateCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/ImsStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mInternetDataNetworkState:I

.field private blacklist mIsAllDataDisconnectedRegistered:Z

.field private blacklist mIsHandoverEnabled:I

.field private blacklist mIsNonDdsMmsSending:Z

.field private blacklist mIsSrvccHandoverInProcess:Z

.field private blacklist mJPNDataEnabled:Z

.field private blacklist mJPNRoamingEnabled:Z

.field private blacklist mKnoxMmsControl:Z

.field private blacklist mLastImsOperationIsRelease:Z

.field private blacklist mLastReleasedImsRequestCapabilities:[I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private blacklist mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mNrAdvancedCapableByPco:Z

.field private final blacklist mPendingImsDeregDataNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhysicalLinkStatus:I

.field private final blacklist mPreviousConnectedDataNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPsRestricted:Z

.field private final blacklist mRegisteredImsFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRetryCid:I

.field private blacklist mRetryImmediatelyNeeded:Z

.field private blacklist mServiceState:Landroid/telephony/ServiceState;

.field private blacklist mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mSimState:I

.field private blacklist mSubId:I

.field private final blacklist mSubscriptionPlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTelecomManager:Landroid/telecom/TelecomManager;

.field private blacklist mTetherRequested:Z

.field private final blacklist mUnmeteredOverrideNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-FBZDIfegI8t18d8009BF8ARGRU(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 3632
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3633
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$-JcibJp6kADW7nDIqlVl4NJ5boE(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$35(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$-TBLfPfqZ9SUOqjlufYbkBhPu08(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 3532
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$2TkTTUyB9TjVZJL_kGF03gnGjtI(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 2091
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$2YYnDeyJaw_6BeaXY41Ngawcl8I(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 5276
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5277
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$3F5AShOtSSXlFUXWfGg8Mvt_D3E(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 5219
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onPSAttached()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3QjvCLFtrOSa3lRTml2yKNSlP8Q(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 4954
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$5OtRfHmAxvpRpKZ48URtmqK6fcw(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .locals 0

    .line 4459
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onInternetDataNetworkValidationStatusChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6aQxPjXqJFDwAxhzlOXocyQEn40(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$setupDataNetwork$23(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6cROPC_zqcFEb910PyvuVu_mWzE(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 6123
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6124
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

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

.method public static synthetic blacklist $r8$lambda$93noZkweF9QHq6ap42TrRG2-jOw(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 1802
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1801
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9OGvHWSJXMTVBhx9bcZGlYvKrzk(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .locals 0

    .line 4774
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onDataServiceBound(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BudRlqjlo1al1589MeUABRKrpA0(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetwork$12(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$CsvNjrDh_6bBv8xz33_YV1zmJZI(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$36()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DUhHO6lt4QjlLrwQh7LADjDYOPU(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 5218
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda73;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda73;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DmTscxa9IoH2HzKc1ykLvZsSu1k(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onRrcStateChanged$58(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dw5F6Fs1IPu1YQyeapvS2Ak6iyk(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 4965
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$EtqVm7l6udOnI7aA_fnTUU1Or8c(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 1768
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1767
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GBlHOziCb4uX3GhVDhSa0mUXXOI(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$43(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H7X9CjOf1SLH90s7SDX5xe645KQ(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupRetry$29(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$HEIemWOCUa0b-8yT1Zax0zL0Fss(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4458
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda68;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda68;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IRTlaKdhwp1mYJtqCwT3CZqGGn4(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateNetworkRequest$10(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$JXiw8JRz5l2aqJCPX2KMGkixzrk(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onRrcStateChanged$56(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M3goxEO7khD5KBwx2JtMboeJfdI(Ljava/util/Set;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 5305
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda70;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda70;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/Set;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MHba2YZekmOQwLu8d1q5uqKLI7Y(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$setupDataNetwork$22(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Nb4FpA-U4UrcGkqVwlTpQ2x_VmA(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4202
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda77;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda77;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P0RPbwNd4waRJraZRTB6L-QligQ(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$34(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QX6omzdDiuFTU_qb3Nzla_GaVw0(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onPcoDataChanged$46(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QdR2StUS47VcZxgNKMGVqGwVUyw(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 2197
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 2196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TI5XtFQdOEFuMlDwC3jp2An4_WU(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 1

    const/16 v0, 0x21

    .line 3332
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TvWZW7nHYjA_M2Csu8n0sQNyxRs(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 4957
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4958
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$VZ1IP2uXlJCXVhDl8QAhi1qWgnk(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onRrcStateChanged$55(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W6aMPuYUvw7REWQjE4lKIxjkmxs(Ljava/util/List;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 1

    .line 4254
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda74;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda74;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 4255
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Z08M--XoETB-STSzHI4QyXP1s0M(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onPcoDataChanged$45(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_8imgxjFgX4zHd0FFn_CHIRMdxk(Ljava/util/function/Consumer;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 5655
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetwork;->requestNetworkValidation(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aBbXJD07mIMGl45naueTznlcNwk(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onRrcStateChanged$57(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aKMtDPH2Akoe0IEfcmeMdftIWqA(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$24(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bbWmeiRt-zUlMM05utOL-vxcRso(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4773
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda63;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda63;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dPwxTtcY3MnxAEANV2lXQHz9rhQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 1788
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1787
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dR_f-HZMvfdfaVS7HVLhsmEgRA0(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$registerImsStateCallback$19(ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dfI2tXnu6DdQfm1Bf-YfuBSXecQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 1

    .line 4203
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    .line 4204
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    .line 4203
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onDataNetworkConnected(ILandroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gZtFbm92RDKX8Hi1rgmj2KfDLwg(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$44(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gkTUoSgaW0GioPvdg-c2KP144_M(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 6096
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6097
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

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

.method public static synthetic blacklist $r8$lambda$gmXLmQNdsMWQMfiurf6Jh-3q4kQ(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 3529
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iT4zezmVBzngrAfw10djAZmLek0(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 1

    const/16 v0, 0xc

    .line 4739
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j8EAhkpDIlGKZ_uffpwTOuR1e6E(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 6433
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$jrBqXlKFO4hAfOTx9JQ9WZzrqXY(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 1918
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onCarrierChanged()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k-1DfVu_hb1rkbKovkhW0pomfJc(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 2879
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getPriority()I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$l309S6yI7wR0fcVdfSxOLfJqnxY(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$26(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$oA04FjJibOaJo2RiwARQvFKole0(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 3907
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$oVR8hFLgKMQiFq4zClHS644YPMQ(ILcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 5650
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$pFsdGSsErZ-abTi3W4_gv84X4nw(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/Set;)V
    .locals 0

    .line 5306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pQkbf1h2I5gaVOaSvy4H_pbkBRE(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 3905
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uERd3EZJTZip7QDodCNL3twm7Jg(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$25(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uY8zx6nK5AvuoCpc0YPKmIFwVQk(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 2

    .line 6427
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x4

    .line 6428
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6429
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xa

    .line 6430
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6431
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0xb

    .line 6432
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ucdKOn_xNqzbmf-mYPW9MPkIieA(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 2224
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uwDxrfZEMS6MTkWWMUzLjI5UedQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 1917
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vEwSqqLZKnx1H-P_dATdlZX6Dic(Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 3635
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 3634
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$vY4PYvOOPcXb5h2EqvHXXCmdvxU(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .locals 1

    .line 4257
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->get([I)Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4260
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 4262
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 4263
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 4264
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 4265
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda78;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda78;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wubftjyh4k5U7FiaAXmMk3dN-mQ(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetwork$11(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xWumT9JS447_LVqBKbnsq8xxcGc(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1738
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xsXtn6apMsMKZavtWoqdpu982dw(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 2

    .line 2226
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xb

    .line 2227
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2228
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0x19

    .line 2229
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

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

.method public static synthetic blacklist $r8$lambda$yRMRnVD4VN3TP_Ku_3dZ6ZFI2ms(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 5281
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5282
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

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

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataAllowPopup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkControllerCallbacks(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsFeaturePackageName(Lcom/android/internal/telephony/data/DataNetworkController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredImsFeatures(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataNetworkController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTetherRequested(Lcom/android/internal/telephony/data/DataNetworkController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTetherRequested:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryCid(Lcom/android/internal/telephony/data/DataNetworkController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryCid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluatePendingImsDeregDataNetworks(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluatePendingImsDeregDataNetworks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataRetryPermanent(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRetryPermanent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataStallReestablishInternet(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataStallReestablishInternet()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeviceConfigUpdated(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDeviceConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monEvaluatePreferredTransport(Lcom/android/internal/telephony/data/DataNetworkController;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onEvaluatePreferredTransport(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monScreenDataRetry(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onScreenDataRetry()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onTrackNetworkUnwanted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->registerImsFeatureRegistrationState(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterImsFeatureRegistrationState(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataActivity(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateDataActivity()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateSlotId(Lcom/android/internal/telephony/data/DataNetworkController;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->validateSlotId(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_IMS_FEATURES:Ljava/util/Collection;

    .line 310
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    .line 311
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

    .line 314
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    .line 315
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

    const-wide/16 v3, 0x64

    .line 319
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

    const-wide/16 v2, 0x1

    .line 326
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_DETACHED_DELAY_MILLIS:J

    .line 332
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/data/DataNetworkController;->GUARD_TIMER_INTERVAL_TO_QUERY_DATA_USAGE_API_STATS_MILLIS:J

    const-wide/16 v1, 0x0

    .line 449
    sput-wide v1, Lcom/android/internal/telephony/data/DataNetworkController;->mNextRetryTime:J

    .line 1191
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_MODEM_COUNT:I

    if-le v1, v0, :cond_0

    .line 1193
    const-string v1, "ro.boot.carrierid"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/data/DataNetworkController;->DataLockFeature:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 9

    .line 1249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 337
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    .line 342
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    .line 347
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 367
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 371
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    .line 387
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    .line 395
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    .line 402
    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    const/4 v1, 0x0

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 429
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mConnectedInternetNetworks:Ljava/util/Set;

    .line 435
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 444
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    .line 453
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    .line 458
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    .line 461
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    .line 464
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    .line 470
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    .line 474
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    .line 478
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    .line 484
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    .line 488
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    .line 492
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    .line 499
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    .line 507
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    .line 537
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryImmediatelyNeeded:Z

    .line 538
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryCid:I

    .line 547
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$1;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    .line 1151
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mJPNDataEnabled:Z

    .line 1152
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mJPNRoamingEnabled:Z

    .line 1156
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTetherRequested:Z

    .line 1177
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsNonDdsMmsSending:Z

    const/4 v2, 0x0

    .line 1192
    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowList:Ljava/util/HashSet;

    .line 1198
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsAllDataDisconnectedRegistered:Z

    .line 1214
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mKnoxMmsControl:Z

    .line 1227
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllDataDisconnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1250
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1251
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNC-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    .line 1253
    const-string v2, "DataNetworkController created."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 1256
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 1257
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, v7, p2, v4}, Lcom/android/internal/telephony/data/DataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1261
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/data/DataAllowPopup;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-direct {p1, v2, p0, v3}, Lcom/android/internal/telephony/data/DataAllowPopup;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    .line 1263
    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p1, v2, p2, p3}, Lcom/android/internal/telephony/data/DataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1266
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 1268
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v2, v3, v4}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1269
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1270
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 1271
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v2, v3, v4}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1272
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1273
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 1274
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v2, v3, v4}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1275
    new-instance p3, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1276
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 1277
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {p3, v2, v3, p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1280
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p3, Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1281
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 1280
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v7, Lcom/android/internal/telephony/data/DataNetworkController$2;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v7, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$2;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    move-object v4, p0

    move-object v6, p2

    .line 1282
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1352
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    const-class p1, Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1353
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1352
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 1355
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v7, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v8, Lcom/android/internal/telephony/data/DataNetworkController$3;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v8, v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$3;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    .line 1354
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p0

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1376
    new-instance v2, Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    iget-object v3, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 1377
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/internal/telephony/data/DataServiceManager;

    move-object v7, v6

    iget-object v6, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v8, Lcom/android/internal/telephony/data/DataNetworkController$4;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v8, v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$4;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    move-object v6, v7

    iput-object v2, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 1384
    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager;

    iget-object v3, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    iget-object v7, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v8, Lcom/android/internal/telephony/data/DataNetworkController$5;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v8, v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$5;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    iput-object v2, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 1417
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsManager;

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    .line 1418
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager;

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 1419
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 1423
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/16 p0, 0x13

    .line 1427
    invoke-virtual {v4, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1430
    new-instance p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;

    iget-object p1, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/data/AlwaysOnPdn;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;)V

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    .line 1434
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->clearPreciseDataConnectionStates(I)V

    .line 1437
    sget-boolean p0, Lcom/android/internal/telephony/data/DataNetworkController;->DataLockFeature:Z

    if-eqz p0, :cond_1

    .line 1438
    new-instance p0, Ljava/util/HashSet;

    const-string p1, "52001,52003"

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowList:Ljava/util/HashSet;

    .line 1443
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    iget-object p1, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string p2, "CarrierFeature_Common_SupportDeviceReporting"

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1447
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->enable(Landroid/content/Context;)V

    .line 1452
    :cond_2
    iput v1, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mIsHandoverEnabled:I

    .line 1453
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/16 p1, 0x22

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerForHandoverEnabledChanged(Landroid/os/Handler;I)V

    const/4 p0, 0x2

    .line 1458
    iget-object p1, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isDataAllowedFromKnox(IZLcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mKnoxMmsControl:Z

    .line 1462
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    iput-object p0, v4, Lcom/android/internal/telephony/data/DataNetworkController;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private blacklist allowedInEmergency()Z
    .locals 4

    .line 6182
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6183
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6184
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v1

    const/4 v2, 0x2

    .line 6185
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v2

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    const/16 v3, 0x13

    if-eq v1, v3, :cond_2

    const/16 v3, 0x14

    if-eq v1, v3, :cond_2

    const/16 v1, 0x12

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 6191
    :cond_2
    :goto_0
    const-string v1, "allowedInEmergency: true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist areNetworkAvailableServicesChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z
    .locals 1

    .line 5052
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p0

    .line 5053
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p1

    .line 5055
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 5056
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda71;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda71;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist blockCleanUp(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z
    .locals 4

    .line 6353
    const-string v0, "LUC"

    const-string v1, "KOO"

    const-string v2, "SKC"

    const-string v3, "KTC"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6354
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->blockCleanUpDomesticOtaReg(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "During bip ota regi, don\'t clean up bip profile = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6363
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->keepConnectionForEpdg(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6368
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v0, :cond_3

    .line 6370
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6371
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/16 v0, 0xa

    .line 6372
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6373
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do NOT disconnect IMS PDN when reason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist blockImsPdnByRat()Z
    .locals 7

    const/4 v0, 0x1

    .line 6833
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v1

    .line 6835
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isKorSim()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6836
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockImsPdnByRat: X IMS reject bcz of RAT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    return v3

    .line 6843
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlyLteDataAllowed()Z

    move-result v2

    const/16 v4, 0x12

    if-eqz v2, :cond_2

    .line 6844
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v4, :cond_2

    .line 6845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockImsPdnByRat: X IMS reject RAT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", not LTE or IWLAN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 6850
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isVzwSim()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isGCFMode(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6851
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataInLegacy3gpp(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6852
    const-string v1, "blockImsPdnByRat : Reject IMS Type in 3GPP legacy"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 6854
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->is1xEvdo(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6855
    const-string v1, "blockImsPdnByRat: Reject IMS Type in 1x or EVDO"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 6860
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isVzwSim()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6861
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6862
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSupportVolteRoaming()Z

    move-result v2

    if-nez v2, :cond_6

    .line 6863
    :cond_5
    const-string v1, "blockImsPdnByRat : Reject IMS Type in Roaming while VZW_VOLTE_ROAMING is disabled."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 6870
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isTmoSim()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DSG"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6871
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_8

    if-eq v1, v4, :cond_8

    .line 6873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockImsPdnByRat: X IMS [TMO] reject bcz of RAT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 6879
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v5, "CHN"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isChinaCard()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6880
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_b

    if-eq v1, v4, :cond_b

    .line 6881
    const-string v2, "persist.ril.ims.allowNonLteRegi"

    const-string v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6882
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isGCFMode(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6883
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockImsPdnByRat: X IMS [CHN] reject bcz of RAT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 6888
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v5, "TGY"

    const-string v6, "BRI"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6889
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6890
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 6891
    const-string v5, "45400"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "45402"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "45410"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "45416"

    .line 6892
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "45418"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "45419"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 6893
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6894
    :cond_c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_d

    if-eq v1, v4, :cond_d

    .line 6895
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isGCFMode(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 6896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trySetupData: X [HK, TW] IMS reject bcz of RAT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    :cond_d
    return v3
.end method

.method private blacklist blockImsPdnByVoPS()Z
    .locals 7

    .line 6941
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 6942
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v2

    .line 6946
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6948
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6949
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 6954
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isTmoSim()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DSG"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-nez v3, :cond_2

    const/16 v5, 0x12

    if-eq v2, v5, :cond_2

    .line 6956
    const-string v0, "blockImsPdnByVoPS: X IMS reject bcz of VoPS is Not Support"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6958
    :cond_2
    const-string v5, "ORANGE_EUR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getRegionForPdpRetry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "20801"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6959
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 6960
    const-string v0, "blockImsPdnByVoPS: X [Orange except France] IMS reject bcz of VoPS is Not Support"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6962
    :cond_3
    const-string v5, "HUTCHISON_EUR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getRegionForPdpRetry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    .line 6963
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6964
    const-string v0, "blockImsPdnByVoPS: X [Hutchison] IMS reject bcz of VoPS is Not Support"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6966
    :cond_4
    const-string v5, "TELEFONICA"

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getRegionForPdpRetry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 6967
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6968
    const-string v0, "blockImsPdnByVoPS: X [TELEFONICA] IMS reject bcz of VoPS is Not Support"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6970
    :cond_5
    const-string v5, "26001"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "20404"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "21404"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    if-nez v3, :cond_7

    .line 6971
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6972
    const-string v0, "blockImsPdnByVoPS: X [Others] IMS reject bcz of VoPS is Not Support"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6974
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isKorSim()Z

    move-result v5

    const-string v6, "blockImsPdnByVoPS: IMS reject bcz of VoPS is Not Support"

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6975
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    .line 6976
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    .line 6978
    :cond_8
    const-string v5, "44010"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6979
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isPsOnlyTech(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6980
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6981
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1

    :cond_9
    return v4
.end method

.method private blacklist blockPdn(I)Z
    .locals 1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    .line 6820
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->blockImsPdnByRat()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->blockImsPdnByVoPS()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist blockPdnByReason(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z
    .locals 1

    .line 6281
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result p1

    .line 6280
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p1

    .line 6282
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PLMN_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 6286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blockPdnByReason(): No retry for emergency pdn. reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist canConnectivityTransportSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 3143
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3148
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p2

    .line 3149
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3150
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 3149
    invoke-virtual {p2, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteDataServicePolicyForPlmn(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x25

    .line 3160
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    :cond_2
    return v0

    .line 3172
    :catch_0
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    const/16 v2, 0xa

    if-nez p2, :cond_4

    .line 3173
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    if-nez p2, :cond_4

    return v1

    .line 3179
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3180
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p2

    .line 3179
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3181
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, v4}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    .line 3188
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3189
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p2

    if-nez p2, :cond_8

    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 3190
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    if-nez p0, :cond_7

    .line 3191
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v0

    :cond_8
    :goto_1
    return v1
.end method

.method private blacklist convertByteArrayToQos([BI)Landroid/telephony/data/Qos;
    .locals 8

    add-int/lit8 p0, p2, 0x4

    .line 7182
    invoke-static {p1, p2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 7181
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x6

    .line 7186
    invoke-static {p1, p0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    .line 7185
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    add-int/lit8 v3, p2, 0xa

    .line 7189
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 7188
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    add-int/lit8 v4, p2, 0xe

    .line 7192
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 7191
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    add-int/lit8 v5, p2, 0x12

    .line 7195
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 7194
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    add-int/lit8 v6, p2, 0x16

    .line 7198
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 7197
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    add-int/lit8 v7, p2, 0x17

    .line 7200
    aget-byte v6, p1, v6

    add-int/lit8 p2, p2, 0x19

    .line 7202
    invoke-static {p1, v7, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 7201
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    .line 7204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 7205
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7208
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7209
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7211
    sget-object v1, Landroid/telephony/data/Qos$QosBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/Qos$QosBandwidth;

    .line 7212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7213
    invoke-virtual {p2, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7216
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7217
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7218
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7219
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/Qos$QosBandwidth;

    .line 7220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7221
    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7223
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 7224
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7225
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7227
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7228
    invoke-static {p2}, Landroid/telephony/data/NrQos;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/data/NrQos;

    move-result-object p0

    .line 7229
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_0
    add-int/lit8 v1, p2, 0x6

    .line 7233
    invoke-static {p1, p0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    .line 7232
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    add-int/lit8 v3, p2, 0xa

    .line 7236
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 7235
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    add-int/lit8 v4, p2, 0xe

    .line 7239
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 7238
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    add-int/lit8 v5, p2, 0x12

    .line 7242
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 7241
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    add-int/lit8 p2, p2, 0x16

    .line 7245
    invoke-static {p1, v5, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 7244
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 7247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 7248
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7251
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7252
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7253
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7254
    sget-object v1, Landroid/telephony/data/Qos$QosBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/Qos$QosBandwidth;

    .line 7255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7256
    invoke-virtual {p2, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7259
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7262
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/Qos$QosBandwidth;

    .line 7263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7264
    invoke-virtual {p2, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7266
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7267
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7268
    invoke-static {p2}, Landroid/telephony/data/EpsQos;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/data/EpsQos;

    move-result-object p0

    .line 7269
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private blacklist createLinkAddressFromString(Ljava/lang/String;)Landroid/net/LinkAddress;
    .locals 10

    .line 7275
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 7279
    :try_start_0
    const-string v1, "/"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 7280
    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 7281
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7282
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    goto :goto_0

    .line 7283
    :cond_1
    array-length v3, v1

    if-ne v3, v2, :cond_2

    .line 7284
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    move-object v2, p1

    move v3, v1

    goto :goto_1

    :catch_0
    move-object v2, p1

    move v3, v0

    :goto_1
    if-eqz v2, :cond_3

    if-eq v3, v0, :cond_3

    .line 7296
    new-instance v1, Landroid/net/LinkAddress;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;IIIJJ)V

    return-object v1

    .line 7293
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid link address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist evaluateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;
    .locals 12

    .line 2772
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 2779
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 2780
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2781
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 2782
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    .line 2780
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result v2

    .line 2783
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isDataAllowedFromKnox(Landroid/net/NetworkCapabilities;ZLcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluateDataNetwork: Reject data call as data not allowed from knox on sim slot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2785
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2784
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2786
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_KNOX:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2790
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2792
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2793
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 2799
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isValidForEpdg(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2801
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2803
    const-string p1, "evaluateDataNetwork(): allowed by EPDG"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2804
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->IWLAN_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2805
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 2811
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq v1, v3, :cond_3

    .line 2812
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2816
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInCdmaEcm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2818
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->allowedInEmergency()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2821
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2825
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2826
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    .line 2825
    invoke-virtual {v1, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2827
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v1

    .line 2828
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2827
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2830
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataCrossActiveInNonDataPreferred()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2832
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2839
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2840
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isSatellite()Z

    move-result v3

    if-eq v1, v3, :cond_6

    .line 2843
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2849
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 2850
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 2851
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapMaxDataLimitReached()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2852
    const-string v1, "BootStrap Sim Data Usage limit reached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2853
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_0

    :cond_7
    const/16 v1, 0x10

    .line 2855
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2856
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2858
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataConfigManager;->getReevaluateBootstrapSimDataUsageMillis()J

    move-result-wide v4

    .line 2856
    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2860
    :cond_8
    const-string v1, "skip scheduling evaluating existing data networks since alreadyscheduled"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2868
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlySingleDataNetworkAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2870
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v1

    .line 2869
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2873
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda51;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2874
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda52;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 2877
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda53;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda53;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2879
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2880
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_1

    .line 2883
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateDataNetwork: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has the highest priority. No need to tear down"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_b
    :goto_1
    const/16 v1, 0x21

    .line 2890
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkCapabilityInNetworkRequests(I)Z

    move-result v1

    .line 2895
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v1, :cond_e

    .line 2897
    const-string v4, "Ignored VoPS check due to delay IMS tear down until call ends."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    if-eqz v1, :cond_d

    .line 2904
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v3, :cond_d

    .line 2905
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2909
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 2910
    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 2911
    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2913
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v4

    .line 2912
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldKeepNetworkUpInNonVops(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2914
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2922
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2924
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v5

    .line 2923
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v4

    .line 2925
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v5

    if-eq v4, v5, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 2926
    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2931
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->HANDOVER_RETRY_STOPPED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2936
    :cond_e
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 2938
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 2940
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result v5

    if-nez v5, :cond_f

    .line 2942
    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2949
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v8

    .line 2950
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v5

    .line 2951
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 2953
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 2955
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v6

    .line 2954
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v6

    .line 2953
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v8, :cond_10

    .line 2960
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/telephony/data/ApnSetting;->canSupportLingeringNetworkType(I)Z

    move-result v6

    if-nez v6, :cond_10

    .line 2961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", networkTypeBitmask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v7

    int-to-long v9, v7

    .line 2963
    invoke-static {v9, v10}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", lingeringNetworkTypeBitmask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v9

    .line 2966
    invoke-static {v9, v10}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2961
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2968
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_10
    if-eqz v4, :cond_11

    .line 2974
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2979
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDsgSim()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v6, "DSG"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2980
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2981
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataInLegacy3gpp(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2982
    const-string v4, "evaluateDataNetwork(): disallowed for DSG camped in roaming legacy 3gpp rat"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2984
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISALLOWED_EXTRA:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2989
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "KDI"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2990
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    if-ne v4, v2, :cond_14

    .line 2991
    new-instance v7, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2993
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 2994
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v7, v4, v6, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 2995
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2996
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v9

    .line 2997
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v10

    const/4 v11, 0x1

    .line 2995
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 2998
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    goto :goto_3

    :cond_13
    const/4 v4, 0x0

    .line 2999
    :goto_3
    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3000
    const-string v4, "evaluateDataNetwork(): dun profile needs to be changed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3001
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISALLOWED_EXTRA:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 3008
    :cond_14
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfileCompatible(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_PROFILES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v4, :cond_17

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 3011
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->isValidApnId(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 3015
    :cond_15
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->isBipDataProfile(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3016
    const-string v4, "BIP Data Network should not be disconnected."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 3019
    :cond_16
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_INVALID:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 3024
    :cond_17
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 3025
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 3027
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v5

    .line 3026
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->canPreferredDataProfileSatisfy(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3028
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_NOT_PREFERRED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 3032
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "updateNeedDisconnectByDdsChange set true"

    const-string v7, "phone"

    if-nez v4, :cond_19

    .line 3034
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 3036
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3037
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3038
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v3, :cond_1f

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v2, :cond_1f

    .line 3041
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 3042
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/data/DataNetwork;->updateNeedDisconnectByDdsChange(Z)V

    goto/16 :goto_5

    .line 3047
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsHardDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3051
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3052
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isEmergencySupl()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3054
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_5

    .line 3074
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v2, :cond_1c

    .line 3076
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_5

    .line 3078
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3079
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 3080
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v4

    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v8

    .line 3078
    invoke-virtual {v2, v4, v8}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 3082
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v4, :cond_1d

    move v2, v5

    :cond_1d
    if-eqz v2, :cond_1e

    .line 3088
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_5

    .line 3092
    :cond_1e
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3093
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3094
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v3, :cond_1f

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v2, :cond_1f

    .line 3097
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 3098
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/data/DataNetwork;->updateNeedDisconnectByDdsChange(Z)V

    :cond_1f
    :goto_5
    if-eqz v1, :cond_20

    .line 3110
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    if-eqz p2, :cond_20

    goto :goto_6

    :cond_20
    move v3, v5

    .line 3111
    :goto_6
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 3112
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result p2

    if-nez p2, :cond_21

    if-eqz v3, :cond_22

    .line 3113
    :cond_21
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->IN_VOICE_CALL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 3116
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Evaluated "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist evaluateDataNetworkHandover(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataEvaluation;
    .locals 10

    .line 3309
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 3310
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3311
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    return-object v0

    .line 3316
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isEnhancedIwlanHandoverCheckEnabled()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 3317
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v1

    .line 3318
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3322
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3323
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 3330
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    .line 3331
    invoke-virtual {v3}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda56;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda56;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3333
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3335
    invoke-virtual {v3}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3336
    invoke-virtual {v3}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3338
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v1

    .line 3337
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldKeepNetworkUpInNonVops(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3339
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 3344
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 3350
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isHandoverEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3351
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    return-object v0

    .line 3355
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isIwlanHandoverPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3356
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getHandoverRules()Ljava/util/List;

    move-result-object v1

    .line 3358
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 3365
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLastKnownDataNetworkType()I

    move-result v3

    .line 3367
    :cond_5
    invoke-static {v3}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v3

    .line 3369
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3371
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3375
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v4

    goto :goto_0

    .line 3376
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLastKnownRoamingState()Z

    move-result v4

    .line 3377
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3379
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    .line 3381
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v6

    .line 3380
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v6

    .line 3382
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 3383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "evaluateDataNetworkHandover: source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    invoke-static {v6}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", roaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", incall="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", ServiceState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", capabilities="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3383
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3392
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;

    .line 3394
    iget-boolean v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->isOnlyForRoaming:Z

    if-eqz v8, :cond_9

    if-nez v4, :cond_9

    goto :goto_2

    .line 3399
    :cond_9
    iget-boolean v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->isOnlyForIncall:Z

    if-eqz v8, :cond_a

    if-nez v5, :cond_a

    goto :goto_2

    .line 3405
    :cond_a
    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->sourceAccessNetworks:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->targetAccessNetworks:Ljava/util/Set;

    .line 3406
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3410
    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->networkCapabilities:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->networkCapabilities:Ljava/util/Set;

    .line 3411
    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    .line 3412
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda57;

    invoke-direct {v9, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda57;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3413
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetworkHandover: Matched "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3414
    iget p1, v7, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->type:I

    if-ne p1, v2, :cond_c

    .line 3415
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_3

    .line 3418
    :cond_c
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 3420
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetworkHandover: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 3425
    :cond_d
    const-string p1, "evaluateDataNetworkHandover: Did not find matching rule."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 3427
    :cond_e
    const-string p1, "evaluateDataNetworkHandover: IWLAN handover policy not enabled."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3431
    :goto_4
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    return-object v0
.end method

.method private blacklist evaluatePendingImsDeregDataNetworks()V
    .locals 4

    .line 5478
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    .line 5479
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5480
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5481
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v3, 0x22

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluatePendingImsDeregDataNetworks: Safe to tear down data network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5488
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5491
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5493
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still not safe to tear down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .locals 5

    .line 2087
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2090
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda49;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda49;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2091
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 2093
    invoke-interface {v3}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    .line 2094
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2103
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found a compatible data network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/data/DataNetwork;->attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private blacklist findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 1

    .line 2067
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    return p0
.end method

.method private blacklist findSatisfiableNetworkRequests(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .locals 2

    .line 3904
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda64;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda64;-><init>()V

    .line 3905
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 3907
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3908
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getCdmaRatOrigin()Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;
    .locals 3

    .line 6708
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "VZW"

    const-string v2, "USC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6710
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v0

    .line 6711
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->is1xEvdo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaRatOrigin: Use CDMA APN in networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6713
    sget-object p0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    return-object p0

    .line 6717
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6718
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result v1

    .line 6717
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 6720
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->is1xEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaRatOrigin: Use CDMA APN in mobileNetworkType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6722
    sget-object p0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->MOBILE_RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    return-object p0

    .line 6725
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->NO_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    return-object p0
.end method

.method private blacklist getCountryName()Ljava/lang/String;
    .locals 1

    .line 5896
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDataNetworkType(I)I
    .locals 1

    .line 5393
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5396
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getDataRegistrationState(Landroid/telephony/ServiceState;I)I
    .locals 0

    const/4 p0, 0x2

    .line 5410
    invoke-virtual {p1, p0, p2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5413
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method private blacklist getDataUsage()J
    .locals 7

    .line 2671
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2672
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    if-eqz v1, :cond_0

    .line 2675
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 2677
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 2679
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2680
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 2682
    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 2683
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 2685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    .line 2686
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            ">;"
        }
    .end annotation

    .line 2698
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 2699
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2700
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 2701
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_0

    .line 2704
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSlotCount()I
    .locals 0

    .line 7475
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 7477
    :catch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method private static blacklist getTearDownReason(Lcom/android/internal/telephony/data/DataEvaluation;)I
    .locals 2

    .line 3444
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3445
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController$14;->$SwitchMap$com$android$internal$telephony$data$DataEvaluation$DataDisallowedReason:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataDisallowedReasons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x20

    return p0

    :pswitch_1
    const/16 p0, 0x1f

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0x1d

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0x1c

    return p0

    :pswitch_6
    const/16 p0, 0x1b

    return p0

    :pswitch_7
    const/16 p0, 0x1a

    return p0

    :pswitch_8
    const/16 p0, 0x19

    return p0

    :pswitch_9
    const/16 p0, 0x18

    return p0

    :pswitch_a
    const/16 p0, 0x17

    return p0

    :pswitch_b
    const/16 p0, 0x16

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/16 p0, 0x15

    return p0

    :pswitch_e
    const/16 p0, 0xa

    return p0

    :pswitch_f
    const/16 p0, 0xb

    return p0

    :pswitch_10
    const/16 p0, 0x14

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/16 p0, 0x9

    return p0

    :pswitch_13
    const/16 p0, 0x8

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_15
    const/16 p0, 0x13

    return p0

    :pswitch_16
    const/16 p0, 0x12

    return p0

    :pswitch_17
    const/16 p0, 0x11

    return p0

    :pswitch_18
    const/4 p0, 0x7

    return p0

    :pswitch_19
    const/4 p0, 0x4

    return p0

    :cond_0
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist hasCalling()Z
    .locals 2

    .line 705
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->enforceCallingFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 708
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist hasCapabilityExemptsFromSinglePdnRule([I)Z
    .locals 1

    .line 2160
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2161
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getCapabilitiesExemptFromSingleDataNetwork()Ljava/util/Set;

    move-result-object p0

    .line 2162
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method private blacklist isDataAllowPopupNecessary(ILcom/android/internal/telephony/data/DataEvaluation;)Z
    .locals 0

    .line 5960
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNecessary(ILcom/android/internal/telephony/data/DataEvaluation;)Z

    move-result p0

    return p0
.end method

.method private blacklist isDataAllowedExtra(ILcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z
    .locals 3

    .line 5795
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataAllowList()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/16 p2, 0x40

    if-eq p1, p2, :cond_0

    .line 5796
    const-string p1, "isDataAllowedExtra: X data lock by DataLockFeature"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 5802
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "KOR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 5803
    invoke-virtual {p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p2

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/data/SemDataUtils;->isDomesticOtaReg(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5804
    const-string p1, "isDataAllowedExtra: Reject data call DomesticOtaReg mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 5811
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->blockPdn(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5812
    const-string p1, "isDataAllowedExtra: blockPdn called: true"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 5819
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataAllowedForDualLte(I)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    .line 5825
    :cond_3
    const-string p2, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x11

    if-ne p1, p2, :cond_7

    .line 5827
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 5829
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5830
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getJPNRoamingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mJPNRoamingEnabled:Z

    if-nez p1, :cond_7

    .line 5832
    :cond_4
    const-string p1, "isDataAllowedExtra: JPN roaming not enabled"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    .line 5836
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getJPNDataEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mJPNDataEnabled:Z

    if-nez p1, :cond_7

    .line 5838
    :cond_6
    const-string p1, "isDataAllowedExtra: JPN data not enabled"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isDataAllowedForDualLte(I)Z
    .locals 4

    const/16 v0, 0x40

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6788
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6789
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsNonDdsMmsSending:Z

    if-eqz p1, :cond_5

    .line 6790
    const-string p1, "isDataAllowedForDualLte(): disallowed due to MMS on non-DDS (QC L+L)"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v2

    .line 6794
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 6800
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getRequestOverridePhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 6801
    const-string p1, "isDataAllowedForDualLte(): disallowed due to data cross (LSI L+L)"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v2

    .line 6806
    :cond_3
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 6807
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 6808
    const-string p1, "isDataAllowedForDualLte(): disallowed on non preferred data (LSI L+L)"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method private blacklist isDataDormant()Z
    .locals 4

    .line 3524
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3525
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    if-ne p0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 3528
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda27;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda27;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 3531
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda28;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private blacklist isDocomoSim()Z
    .locals 3

    .line 5908
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 5910
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 5913
    :cond_0
    const-string p0, "44010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 5911
    :cond_1
    :goto_0
    const-string v0, "isDocomoSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEsimBootStrapMaxDataLimitReached()Z
    .locals 8

    .line 2646
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2647
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getEsimBootStrapMaxDataLimitBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    return v5

    .line 2653
    :cond_0
    iget-wide v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    cmp-long v4, v6, v0

    if-gez v4, :cond_2

    iget-wide v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    .line 2655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    sub-long/2addr v2, v6

    sget-wide v6, Lcom/android/internal/telephony/data/DataNetworkController;->GUARD_TIMER_INTERVAL_TO_QUERY_DATA_USAGE_API_STATS_MILLIS:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 2657
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataUsage()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    .line 2658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current bootstrap sim data usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootstrapSimLastDataUsageQueryTime:J

    .line 2661
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v5
.end method

.method private blacklist isImsGracefulTearDownSupported()Z
    .locals 4

    .line 5566
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isImsSupportedOnDevice()Z
    .locals 1

    .line 3813
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.ims"

    .line 3814
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isKorSim()Z
    .locals 4

    .line 6907
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6909
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 6912
    :cond_0
    const-string p0, "450"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 6910
    :cond_1
    :goto_0
    const-string v0, "isKorSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method private blacklist isLatinOperator(Ljava/lang/String;)Z
    .locals 1

    .line 7010
    const-string v0, "TCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7011
    const-string p1, "isLatinOperator() : true"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isLegacyCs(I)Z
    .locals 1

    .line 2138
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private blacklist isOnlySingleDataNetworkAllowed(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkTypesOnlySupportSingleDataNetwork()Ljava/util/List;

    move-result-object v0

    .line 2151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isPsOnlyTech(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13

    if-eq p1, p0, :cond_1

    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)Z
    .locals 7

    const/16 v0, 0xa

    .line 5511
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkCapabilityInNetworkRequests(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5516
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_IMS_FEATURES:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5517
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5519
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v5

    .line 5520
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->hasNetworkRequestsFromPackage(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 5523
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v6, "CHN"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v3, v1, :cond_2

    .line 5527
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5529
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_MMTEL skip check for chn rcs internet network, apnSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5537
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5539
    const-string v2, "skip check for internet network"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5543
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    :cond_4
    const/16 v2, 0x19

    if-ne p2, v2, :cond_1

    .line 5549
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5551
    const-string p1, "Safe down for IMS when sim was removed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v5

    :cond_5
    return v1
.end method

.method private blacklist isSimMatched(Ljava/lang/String;)Z
    .locals 2

    .line 6654
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6657
    const-string p1, "isSimMatched : failed to get SIM operator"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 6661
    :cond_0
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isUsingRrcStateIndicationFromIpc()Z
    .locals 2

    .line 5892
    const-string v0, "JPN"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isVzwSim()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isQcom()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isValidForEpdg(I)Z
    .locals 4

    const/4 v0, 0x2

    .line 6140
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x40

    if-eq p1, v1, :cond_2

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    .line 6146
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6150
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidForEpdg: retValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v3
.end method

.method private blacklist isValidForEpdg(Landroid/net/NetworkCapabilities;)Z
    .locals 4

    const/4 v0, 0x2

    .line 6161
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 6163
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 6164
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6165
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    .line 6168
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6169
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 6172
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidForEpdg: retValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist keepConnectionForEpdg(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z
    .locals 3

    .line 6401
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 6403
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    .line 6405
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6406
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6407
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6408
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6410
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result p1

    invoke-static {p1, p2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 6416
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "keepConnectionForEpdg: retValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private synthetic blacklist lambda$evaluateDataNetwork$11(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 2874
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2876
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result p2

    .line 2875
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$evaluateDataNetwork$12(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 2878
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$evaluateNetworkRequest$10(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 2452
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p1

    .line 2451
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$34(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 4524
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$35(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4523
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$36()V
    .locals 2

    const/4 v0, 0x5

    .line 4559
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$24(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 4109
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$25(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4108
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda76;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda76;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$26(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 4112
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupRetry$29(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 4248
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onLinkStatusChanged$43(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 4981
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onPhysicalLinkStatusChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onLinkStatusChanged$44(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4980
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda72;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda72;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$45(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 5010
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onNrAdvancedCapableByPcoChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$46(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 5009
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda66;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRrcStateChanged$55(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 5868
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onPhysicalLinkStatusChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRrcStateChanged$56(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 5867
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda67;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda67;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRrcStateChanged$57(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 5884
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onPhysicalLinkStatusChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRrcStateChanged$58(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 5883
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda69;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerImsStateCallback$19(ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;
    .locals 1

    .line 3743
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$12;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$setupDataNetwork$22(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 0

    .line 4084
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setupDataNetwork$23(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4083
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda75;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 5669
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 5677
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 5693
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5694
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist notifyAllDataDisconnected()V
    .locals 1

    .line 7151
    const-string v0, "notify all data disconnected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7152
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllDataDisconnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private blacklist notifyNotAllowedData(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation;)V
    .locals 5

    .line 6022
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v0

    .line 6021
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    .line 6024
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    .line 6025
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 6027
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result p1

    .line 6026
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p1

    .line 6029
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x1b

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 6035
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getPreciseDataConnectionState(Landroid/telephony/data/ApnSetting;II)Landroid/telephony/PreciseDataConnectionState;

    move-result-object p1

    goto/16 :goto_1

    .line 6037
    :cond_1
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    const/4 v2, -0x1

    .line 6038
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6039
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6040
    const-string v4, "TempApn"

    invoke-virtual {v0, v4}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6041
    invoke-virtual {v0, v4}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6042
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6043
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    const/4 v4, 0x0

    .line 6044
    invoke-virtual {v0, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6045
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6046
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6047
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6048
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6049
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6050
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6051
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6052
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    const/4 v4, 0x1

    .line 6053
    invoke-virtual {v0, v4}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6054
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6055
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6056
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6057
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6058
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6059
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6060
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6061
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6062
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6063
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6064
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 6065
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 6067
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getPreciseDataConnectionState(Landroid/telephony/data/ApnSetting;II)Landroid/telephony/PreciseDataConnectionState;

    move-result-object p1

    .line 6069
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyNotAllowedData="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6070
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    :cond_2
    return-void
.end method

.method private blacklist onAddNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 2

    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updateDataConfig(Lcom/android/internal/telephony/data/DataConfigManager;)V

    .line 1988
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1989
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastReleasedImsRequestCapabilities:[I

    .line 1991
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v1

    .line 1990
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1992
    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requested with same capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1995
    invoke-virtual {v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ead6f8db-d2f2-4ed3-8da5-1d8560fe7daf"

    .line 1993
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddNetworkRequest: Duplicate network request. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 2003
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddNetworkRequest: added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2005
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method private blacklist onAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .locals 2

    .line 4702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to attach "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .locals 2

    .line 3838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigUpdated: config is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3839
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "not "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier specific. mSimState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    .line 3841
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3838
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3842
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateNetworkRequestsPriority()V

    .line 3843
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void
.end method

.method private blacklist onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 4

    .line 4196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4199
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->setHasFailure(Z)V

    .line 4202
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda60;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda60;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 4206
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4208
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 4209
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isNeedNotifyInternetDataState(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 4218
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS data state changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 4221
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to CONNECTED."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4220
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 4222
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 4225
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    .line 4226
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 4228
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getReevaluateBootstrapSimDataUsageMillis()J

    move-result-wide v2

    .line 4226
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4231
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4232
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->handleAlwaysOnPdn(ZZ)V

    :cond_4
    return-void
.end method

.method private blacklist onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 12

    .line 4497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4498
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), tearDownReason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4499
    invoke-static {p3}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4497
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4500
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4501
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4502
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->cancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 4508
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isNeedNotifyInternetDataState(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 4511
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 4513
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 4515
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS data state changed from "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 4516
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to DISCONNECTED."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4515
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4517
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 4520
    :cond_1
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4521
    const-string p2, "All data networks disconnected now."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4522
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 4523
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p2, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    const/16 p2, 0xe

    const-wide/16 v2, 0x0

    if-ne p3, p2, :cond_3

    move-wide p2, v2

    goto :goto_0

    .line 4529
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataConfigManager;->getRetrySetupAfterDisconnectMillis()J

    move-result-wide p2

    .line 4532
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryImmediatelyNeeded:Z

    if-eqz v4, :cond_5

    .line 4533
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4534
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result v0

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryCid:I

    if-ne v0, v4, :cond_4

    .line 4535
    const-string p2, "ims lost need reconnect immediately for cause UMTS_REACTIVATION_REQ"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    move-wide p2, v2

    .line 4538
    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryImmediatelyNeeded:Z

    const/4 v0, -0x1

    .line 4539
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryCid:I

    .line 4546
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isNeedDisconnectByDdsChange()Z

    move-result v0

    if-nez v0, :cond_7

    cmp-long v0, p2, v2

    if-eqz v0, :cond_6

    .line 4549
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4550
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4551
    const-string v0, "RETRY_AFTER_DISCONNECTED will be triggered exactly after 3s"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v6, v2, p2

    .line 4553
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v9, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;

    invoke-direct {v11, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    .line 4564
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4571
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 4572
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isNeedDisconnectByDdsChange()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->areAllDataDisconnectedForDdsChange(Z)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 4574
    :cond_8
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsAllDataDisconnectedRegistered:Z

    if-eqz p2, :cond_9

    .line 4575
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 4577
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4578
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    add-int/lit16 p3, p3, 0x195

    .line 4577
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4583
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isNeedDisconnectByDdsChange()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 4584
    const-string p2, "updateNeedDisconnectByDdsChange set false"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4585
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->updateNeedDisconnectByDdsChange(Z)V

    .line 4589
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4590
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->notifyAllDataDisconnected()V

    :cond_b
    return-void
.end method

.method private blacklist onDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .locals 7

    .line 4639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, handoverFailureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4641
    invoke-static {p5}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4639
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 4644
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4647
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4648
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDataNetworkHandoverFailed: No network requests attached to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". No need to retry since the network will be torn down soon."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p5, v0, :cond_4

    if-nez p5, :cond_1

    const/16 v0, 0x8cb

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p5, v0, :cond_3

    .line 4673
    iget-object p5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 4675
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v0

    .line 4674
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p5

    .line 4676
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    if-ne v0, p5, :cond_2

    .line 4677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDataNetworkHandoverFailed: Already on preferred transport "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4678
    invoke-static {p5}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". No further actions needed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4677
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4683
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p5

    invoke-static {p5}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v2

    .line 4684
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 4685
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    move v4, p2

    move-wide v5, p3

    .line 4684
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    const/16 p2, 0xd

    .line 4688
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void

    :cond_3
    move v4, p2

    move-wide v5, p3

    .line 4690
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void

    .line 4661
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x15

    .line 4660
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    sget-wide p2, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 5

    .line 4345
    iget-object v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 4346
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "onDataNetworkHandoverRetry: "

    if-nez v1, :cond_0

    .line 4347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " no longer exists."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4348
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 4352
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not in the right state."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 4358
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getIsIpChangeDeactivation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " IP change deactivation in progress."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4364
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 4365
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    .line 4364
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 4366
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 4367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already on the preferred transport "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4368
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4367
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4370
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 4372
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getCancelHandoverPending()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4373
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->sendPendingCancelHandover()V

    :cond_3
    return-void

    .line 4379
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataNetworkHandoverRetry: Start handover "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4379
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4382
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->tryHandoverDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method private blacklist onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 3

    .line 4391
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 4393
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v1

    .line 4392
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 4394
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataNetworkHandoverRetryStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already on the preferred transport "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4397
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4401
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkHandoverRetryStopped: Delay IMS tear down until call ends. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0xd

    .line 4407
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method private blacklist onDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 2

    .line 4603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover successfully. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4604
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4603
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4609
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x15

    .line 4608
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p1, 0x10

    .line 4613
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 7

    .line 4100
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->setHasFailure(Z)V

    .line 4102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkSetupDataFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    invoke-static {p3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4102
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4104
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4105
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->trackSetupDataCallFailure(II)V

    .line 4106
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4107
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 4108
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 4112
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4113
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4114
    const-string p1, "onDataNetworkSetupFailed: All requests have been released. Will not evaluate retry."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4119
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4120
    const-string v1, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "44020"

    .line 4122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4123
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4124
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4125
    const-string p1, "onDataNetworkSetupFailed: Switched preferred APN, Will not evaluate retry."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4133
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 4134
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 4133
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method private blacklist onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .locals 8

    .line 4246
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    .line 4248
    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda37;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4251
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4252
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;

    move-result-object v1

    .line 4253
    iget-object v2, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;-><init>(Ljava/util/List;)V

    .line 4254
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 4267
    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda39;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda39;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4269
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    .line 4270
    const-string v0, "onDataNetworkSetupRetry: Request list is empty. Abort retry."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 4271
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 4274
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataNetworkSetupRetry: Request list:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4275
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 4278
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v3

    .line 4279
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v3

    .line 4281
    iget v4, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-eq v3, v4, :cond_2

    .line 4282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot re-satisfy "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    .line 4283
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". The preferred transport has switched to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4285
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4282
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4290
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    const/4 p1, 0x5

    .line 4291
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 4296
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v2

    .line 4298
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_9

    .line 4299
    iget-object v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_3

    .line 4300
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfileCompatible(Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4301
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    .line 4304
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 4305
    const-string v5, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 4306
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "44020"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    move v3, v1

    .line 4308
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 4310
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v6

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 4314
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z

    move-result v6

    .line 4315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataNetworkSetupRetry: isRequiredRetry = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_7
    if-eqz v6, :cond_8

    .line 4324
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v1

    .line 4323
    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    return-void

    .line 4327
    :cond_8
    const-string v0, "onDataNetworkSetupRetry: Not able to find a suitable data profile to retry."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 4328
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 4331
    :cond_9
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 4333
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->notifyNotAllowedData(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation;)V

    return-void
.end method

.method private blacklist onDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 1

    .line 4475
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isNeedNotifyInternetDataState(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 4478
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 4481
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 4482
    const-string v0, "SUSPENDED"

    goto :goto_0

    :cond_1
    const-string v0, "CONNECTED"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4480
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    .line 4484
    :goto_1
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    :cond_3
    return-void
.end method

.method private blacklist onDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .locals 3

    .line 4423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkValidationStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validation status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4424
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->validationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 4425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4423
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 4427
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4429
    const-string v1, "android.telephony.extra.REDIRECTION_URL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4430
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 4431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify carrier signal receivers with redirectUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p2, p3, :cond_2

    if-eq p2, v0, :cond_2

    .line 4436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid validation status "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " received."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 4440
    :cond_2
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isRecoveryOnBadNetworkEnabled()Z

    move-result p3

    if-nez p3, :cond_3

    .line 4441
    const-string p1, "Ignore data network validation status changed because data stall recovery is disabled."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4448
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p3

    const/16 v1, 0xc

    .line 4449
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xd

    .line 4450
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xe

    .line 4451
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xf

    .line 4452
    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_6

    if-ne p2, v0, :cond_5

    .line 4454
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4455
    :cond_4
    const-string p1, "Ignoring invalid validation status for disconnected DataNetwork"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4458
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda26;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda26;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    return-void
.end method

.method private blacklist onDataRetryPermanent()V
    .locals 2

    .line 3570
    const-string v0, "send onDataRetryPermanent cause of received screen off-on with permanent"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 3571
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY_PERMANENT:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onDataServiceBindingChanged(IZ)V
    .locals 2

    .line 4769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataServiceBindingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4770
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data service is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 4771
    const-string v1, "bound."

    goto :goto_0

    :cond_0
    const-string v1, "unbound."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4769
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 4773
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda36;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 4776
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private blacklist onDataStallReestablishInternet()V
    .locals 1

    .line 4733
    const-string v0, "onDataStallReestablishInternet: Tear down data networks that support internet."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4737
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>()V

    .line 4738
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda25;-><init>()V

    .line 4739
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onDeviceConfigUpdated()V
    .locals 1

    .line 3850
    const-string v0, "onDeviceConfigUpdated: DeviceConfig updated."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3851
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateAnomalySlidingWindowCounters()V

    return-void
.end method

.method private blacklist onEnableT3346(Landroid/os/Message;)V
    .locals 5

    .line 6731
    const-string v0, "T3346 Msg received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6732
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 6733
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 6734
    const-string p1, "T3346 Msg Error notification"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 6737
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 6738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T3346 Msg timer value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timer status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6740
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    .line 6741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T3346 Msg Send to DN NetCapa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6742
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->reqT3346(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist onEvaluatePreferredTransport(IZ)V
    .locals 6

    .line 4831
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 4832
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 4833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluatePreferredTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preferred on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4835
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4833
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4836
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataNetwork;

    .line 4837
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 4840
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 4841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvaluatePreferredTransport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4842
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4841
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4844
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getCancelHandoverPending()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4845
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->sendPendingCancelHandover()V

    goto :goto_0

    .line 4854
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " handover in progress."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4859
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getIsIpChangeDeactivation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IP change deactivation in progress."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/16 v4, 0xe

    .line 4866
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 4869
    invoke-direct {p0, v3, v0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->tryHandoverDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private blacklist onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 2

    .line 4952
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldUseDataActivityForRrcDetection()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 4953
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda32;-><init>()V

    .line 4954
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4957
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 4956
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda33;-><init>()V

    .line 4957
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 4965
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 4964
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda34;-><init>()V

    .line 4965
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 4976
    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    if-eq p1, p2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isUsingRrcStateIndicationFromIpc()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPhysicalLinkStatus changed to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4978
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    .line 4980
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda35;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 4984
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateDataActivity()V

    return-void
.end method

.method private blacklist onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 4

    .line 5023
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 5024
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 5025
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 5026
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5027
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_0

    .line 5032
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found more network requests that can be satisfied. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    .line 5037
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5039
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    :cond_3
    return-void
.end method

.method private blacklist onNonDdsMmsEnded()V
    .locals 2

    .line 6109
    const-string v0, "onNonDdsMmsEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6110
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsNonDdsMmsSending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6111
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsNonDdsMmsSending:Z

    .line 6112
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 6113
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6114
    const-string v0, "onNonDdsMmsEnded: Reevaluate"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 6116
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DDS_MMS_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>()V

    .line 6122
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda59;-><init>()V

    .line 6123
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 6125
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 6128
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionStateForExternal()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    .line 6129
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilitiesForExternal()V

    :cond_1
    return-void
.end method

.method private blacklist onNonDdsMmsStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 6090
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsNonDdsMmsSending:Z

    .line 6091
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz v0, :cond_0

    .line 6092
    const-string v0, "onNonDdsMmsStarted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 6094
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>()V

    .line 6095
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda29;-><init>()V

    .line 6096
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 6098
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 6101
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionStateForExternal()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    :cond_0
    return-void
.end method

.method private blacklist onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 4

    .line 4994
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getNrAdvancedCapablePcoId()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4997
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 4998
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getPcoData()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PcoData;

    if-eqz v1, :cond_0

    .line 4999
    iget-object v1, v1, Landroid/telephony/PcoData;->contents:[B

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 5006
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    if-eq v3, p1, :cond_2

    .line 5007
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPcoDataChanged: mNrAdvancedCapableByPco = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5008
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    .line 5009
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda58;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method private blacklist onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .locals 6

    .line 3225
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3226
    const-string p1, "onReevaluateExistingDataNetworks: No existing data networks to re-evaluate."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 3229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Re-evaluating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " existing data networks due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3231
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3232
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v2

    const-string v3, "phone"

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3284
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3285
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3286
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3287
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p1, v2, :cond_1

    .line 3290
    const-string v2, "updateNeedDisconnectByDdsChange set true even disconnecting"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/data/DataNetwork;->updateNeedDisconnectByDdsChange(Z)V

    goto :goto_0

    .line 3234
    :cond_3
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->blockCleanUp(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 3238
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v2

    .line 3239
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3240
    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getTearDownReason(Lcom/android/internal/telephony/data/DataEvaluation;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_0

    .line 3244
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3245
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3246
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p1, v2, :cond_1

    .line 3248
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3249
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 3250
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    .line 3248
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tear down metered DataNetwork NetworkCapability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3252
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3251
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/16 v2, 0x1e

    .line 3253
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private blacklist onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .locals 6

    .line 2714
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;

    move-result-object v0

    .line 2715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-evaluating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda23;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsatisfied network requests in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " groups, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda24;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ", "

    .line 2719
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2715
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2722
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v2, 0x0

    .line 2725
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v3

    .line 2724
    invoke-static {v3}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v3

    .line 2726
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->isMeteredRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isDataAllowedFromKnox(IZLcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject data call as data not allowed from knox on sim slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2728
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2727
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2732
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2736
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->blockPdnByReason(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 2743
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v3

    .line 2744
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2745
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2748
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v3

    .line 2747
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_0

    .line 2753
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->notifyNotAllowedData(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private blacklist onRegisterAllEvents()V
    .locals 6

    .line 1469
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1470
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LUC"

    const-string v1, "KOO"

    const-string v3, "SKC"

    const-string v4, "KTC"

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    const-string v0, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1487
    const-string v0, "android.intent.action.retrySetupData"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1490
    const-string v0, "android.intent.action.ACTION_DATA_CALL_SETUP_RETRY"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1493
    const-string v0, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1494
    const-string v0, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1495
    const-string v0, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1498
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1501
    const-string v0, "XEC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1502
    const-string v0, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1506
    :cond_1
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    const-string v0, "com.samsung.knox.action.KNOX_MMS_CONTROL"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1512
    const-string v0, "com.samsung.action.RETRY_LOST_CONN_IMT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$6;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$7;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$8;

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController$8;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v3, 0x19

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x14

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    const/16 v4, 0x8

    .line 1576
    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;I)V

    .line 1578
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 1581
    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;I)V

    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$9;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 1584
    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 1591
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1604
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1606
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    const/16 v3, 0x28

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1607
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1608
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1614
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSlicingConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1615
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$10;

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController$10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    .line 1632
    const-string v0, "JPN"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v0, :cond_5

    .line 1633
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x1a

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForRRCStateChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1637
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1b

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPlmnChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x20

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->registerT3346Timer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x23

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->registerQosStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x27

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerUiccApplicationEnablementChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist onRemoveNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 2

    .line 3589
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveNetworkRequest: Network request does not exist. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3594
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3595
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    .line 3596
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastReleasedImsRequestCapabilities:[I

    const/4 v0, 0x1

    .line 3597
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    .line 3600
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3601
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    .line 3605
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v0, 0x0

    .line 3606
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 3608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveNetworkRequest: Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 2

    .line 4712
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x29

    .line 4715
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4719
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->UNSATISFIED_REQUEST_DETACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_DETACHED_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onRrcStateChanged(Landroid/os/Message;)V
    .locals 6

    .line 5851
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 5853
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 5854
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    const/4 v1, 0x2

    const-string v2, ", mDataNetworkList = "

    const-string v3, ", state = "

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 5855
    check-cast p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    .line 5858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRrcStateChanged: hal2_0 - RRC Status: rat = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->rat:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->state:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5860
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5861
    iget p1, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->state:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 5864
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    if-eq p1, v1, :cond_4

    .line 5865
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    .line 5866
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda54;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 5871
    :cond_1
    instance-of v0, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;

    if-eqz v0, :cond_4

    .line 5872
    check-cast p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;

    .line 5874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRrcStateChanged: AIDL - RRC Status: rat = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->rat:B

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->state:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5876
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isUsingRrcStateIndicationFromIpc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5877
    :cond_2
    iget p1, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->state:I

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 5880
    :goto_1
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    if-eq p1, v1, :cond_4

    .line 5881
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhysicalLinkStatus:I

    .line 5882
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method private blacklist onSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 2

    .line 2017
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already satisfied. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    return-void

    .line 2024
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2031
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v0

    .line 2033
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2034
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 2037
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v0

    .line 2036
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    :cond_2
    :goto_0
    return-void

    .line 2039
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p1, 0x10

    .line 2043
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SINGLE_DATA_NETWORK_ARBITRATION:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2048
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->notifyNotAllowedData(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation;)V

    return-void
.end method

.method private blacklist onScreenDataRetry()V
    .locals 2

    .line 3564
    const-string v0, "call onScreenDataRetry cause of received screen off-on"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 3565
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SCREEN_OFF_ON:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onServiceStateChanged()V
    .locals 15

    .line 5167
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 5168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5172
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b

    .line 5173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged: changed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5174
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v3, v4, :cond_a

    aget v7, v2, v3

    .line 5175
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v8

    .line 5177
    invoke-virtual {v0, v9, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v10

    .line 5179
    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5180
    invoke-static {v7}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v11

    .line 5179
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    .line 5180
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    .line 5182
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v12

    .line 5181
    invoke-static {v12}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_0
    move-object v12, v11

    :goto_1
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5183
    const-string v12, "->"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_1

    .line 5185
    invoke-virtual {v10}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v13

    .line 5184
    invoke-static {v13}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_1
    move-object v13, v11

    .line 5183
    :goto_2
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5185
    const-string v13, ", "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    .line 5188
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v14

    .line 5187
    invoke-static {v14}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_2
    move-object v14, v11

    .line 5186
    :goto_3
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_3

    .line 5191
    invoke-virtual {v10}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v14

    .line 5190
    invoke-static {v14}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_3
    move-object v14, v11

    .line 5189
    :goto_4
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5191
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_4

    .line 5193
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v13

    invoke-static {v13}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_4
    move-object v13, v11

    .line 5192
    :goto_5
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_5

    .line 5195
    invoke-virtual {v10}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v11

    invoke-static {v11}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object v11

    .line 5194
    :cond_5
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] "

    .line 5196
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    iget-object v11, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v11, v0}, Lcom/android/internal/telephony/data/SemDataUtils;->isSameGroupRat(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_6

    .line 5206
    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldReevaluateDataNetworks(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x10

    .line 5207
    invoke-virtual {p0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_6

    .line 5208
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v6, v12

    .line 5216
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v11, v0, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldReevaluateNetworkRequests(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5218
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v7, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda61;

    invoke-direct {v7}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda61;-><init>()V

    invoke-interface {v5, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const/4 v5, 0x5

    .line 5229
    invoke-virtual {p0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5236
    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v12

    :cond_7
    if-eqz v8, :cond_9

    if-eqz v10, :cond_9

    .line 5243
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v7

    invoke-virtual {v10}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v8

    if-eq v7, v8, :cond_9

    .line 5244
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/data/DataNetwork;

    .line 5245
    invoke-virtual {v8}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 5246
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/data/DataRetryManager;->retryHandoverRatChanged()V

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 5252
    :cond_a
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move v3, v5

    goto :goto_7

    .line 5254
    :cond_b
    const-string v0, "not changed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    .line 5256
    :goto_7
    const-string v0, ". Evaluating network requests is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5257
    const-string v0, "not "

    const-string v2, ""

    if-eqz v3, :cond_c

    move-object v4, v2

    goto :goto_8

    :cond_c
    move-object v4, v0

    .line 5256
    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "needed, evaluating existing data networks is "

    .line 5257
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_d

    move-object v0, v2

    .line 5258
    :cond_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "needed."

    .line 5259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_e

    .line 5263
    const-string v0, "Invoke onReevaluateUnsatisfiedNetworkRequests due to DATA_SERVICE_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5264
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    :cond_e
    return-void
.end method

.method private blacklist onSimAbsent()V
    .locals 2

    .line 4783
    const-string v0, "onSimAbsent"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 4784
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_REMOVAL:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onSimStateChanged(I)V
    .locals 4

    .line 4794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4795
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq v0, p1, :cond_4

    const/4 v0, 0x5

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 4802
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimAbsent()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 4804
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_LOADED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4809
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-ne v3, v1, :cond_3

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 4813
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    const-string v3, "DataNetworkController"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    .line 4816
    :cond_3
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    :cond_4
    return-void
.end method

.method private blacklist onSrvccStateChanged([I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4750
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 4751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSrvccStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->srvccStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4752
    aget p1, p1, v1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    if-nez v1, :cond_1

    const/16 p1, 0x10

    .line 4755
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4756
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SRVCC_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private blacklist onSubscriptionChanged()V
    .locals 2

    .line 3819
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: mSubId changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3821
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3820
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3822
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsGracefulTearDownSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3823
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3824
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerImsStateCallback(I)V

    goto :goto_0

    .line 3826
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterImsStateCallbacks(I)V

    .line 3829
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    .line 3830
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateSubscriptionPlans()V

    :cond_2
    return-void
.end method

.method private blacklist onTearDownAllDataNetworks(I)V
    .locals 3

    .line 5461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTearDownAllDataNetworks: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5462
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5463
    const-string p1, "tearDownAllDataNetworks: No pending networks. All disconnected now."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 5467
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 5468
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5469
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist onTrackNetworkUnwanted()V
    .locals 2

    .line 3889
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Unwanted called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 3891
    invoke-virtual {v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9f3bc55b-bfa6-4e26-afaa-5031426a66d3"

    .line 3890
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist registerImsFeatureRegistrationState(II)V
    .locals 3

    .line 3668
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$11;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$11;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 3695
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsRcsManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 3691
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 3701
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registration state. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3705
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsFeatureRegistrationStateListening: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", imsFeature="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3705
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerImsStateCallback(I)V
    .locals 5

    .line 3741
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3742
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda50;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    const/4 v1, 0x1

    .line 3766
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStateCallback;

    .line 3767
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v3, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V

    .line 3769
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully register MMTEL state on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 3772
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    .line 3773
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v2, v3, v0}, Landroid/telephony/ims/ImsRcsManager;->registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V

    .line 3774
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully register RCS state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when registering IMS state callback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3780
    :cond_0
    const-string p1, "IMS is not supported on this device, skipping registerImsStateCallback"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4187
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist requestDataAllowPopup(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;Lcom/android/internal/telephony/data/DataEvaluation;)Z
    .locals 0

    .line 5964
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->requestDataAllowPopup(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;Lcom/android/internal/telephony/data/DataEvaluation;)Z

    move-result p0

    return p0
.end method

.method private blacklist serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z
    .locals 2

    .line 2122
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRegistrationState(Landroid/telephony/ServiceState;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 2128
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2129
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 2130
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isLegacyCs(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V
    .locals 14

    move-object/from16 v0, p2

    .line 3922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupDataNetwork: dataProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retryEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", allowed reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", service state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3925
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v13, 0x4

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3926
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    .line 3927
    invoke-virtual {p1, v3}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 3928
    invoke-virtual {v4, p1, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3930
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupDataNetwork: Found existing data network "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " using the same or a similar data profile."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 3933
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3939
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilitiesForExternal()V

    return-void

    .line 3945
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/data/DataNetworkController;->findSatisfiableNetworkRequests(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v9

    .line 3947
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3948
    const-string p1, "Can\'t find any unsatisfied network requests that can be satisfied by this data profile."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    .line 3951
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 3957
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 v2, 0x0

    .line 3958
    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v3

    .line 3957
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v10

    .line 3959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating data network on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3960
    invoke-static {v10}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", and attaching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3961
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network requests to it."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3959
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 3964
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    new-instance v12, Lcom/android/internal/telephony/data/DataNetworkController$13;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v12, p0, v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$13;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    move-object v8, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/telephony/data/DataNetwork;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V

    .line 4070
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4071
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p1, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4075
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 4077
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4081
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 4082
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 4083
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda46;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    return-void
.end method

.method private blacklist shouldIgnoreDataRoamingSettingForSatellite()Z
    .locals 1

    .line 2628
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2629
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isIgnoringDataRoamingSettingForSatellite()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldReevaluateDataNetworks(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_1

    .line 5069
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 5075
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->areNetworkAvailableServicesChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    return v1

    .line 5079
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    if-ne p0, v2, :cond_8

    .line 5081
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v2

    if-eq p0, v2, :cond_3

    goto :goto_0

    .line 5085
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v2

    if-eq p0, v2, :cond_4

    return v1

    .line 5089
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    .line 5090
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    if-eqz p0, :cond_6

    .line 5096
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 5097
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 5098
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    .line 5099
    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1

    :cond_9
    :goto_1
    return v0
.end method

.method private blacklist shouldReevaluateNetworkRequests(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Z
    .locals 6

    const/4 v0, 0x2

    .line 5112
    invoke-virtual {p1, v0, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 5114
    invoke-virtual {p2, v0, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 5118
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_a

    .line 5125
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 5126
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-nez v4, :cond_a

    .line 5128
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 5132
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->areNetworkAvailableServicesChanged(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    .line 5137
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 5138
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    .line 5142
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    if-eq p0, p1, :cond_6

    return v3

    .line 5146
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    .line 5147
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p1

    if-nez p0, :cond_7

    return v2

    :cond_7
    if-eqz p1, :cond_8

    .line 5153
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 5154
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 5155
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    .line 5156
    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-nez p0, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    :goto_0
    return v3
.end method

.method private blacklist tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 7

    .line 5575
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    .line 5576
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsGracefulTearDownSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearDownGracefully: Not safe to tear down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at this point. Wait for IMS de-registration or timeout. MMTEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5583
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "not registered"

    const-string v5, "registered"

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5584
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RCS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5586
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v4, v5

    .line 5587
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5581
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5589
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownWhenConditionMet(IJ)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5591
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5593
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is being torn down already."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 5597
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownGracefully: Safe to tear down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5598
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method private blacklist trackSetupDataCallFailure(II)V
    .locals 3

    const/high16 v0, 0x10000

    const v1, 0xffff

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 4175
    const-string p1, "trackSetupDataCallFailure: INVALID transport."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_2

    .line 4165
    :cond_1
    const-string p1, "IWLAN set up data call fails: unknown/unspecified error"

    const-string p2, "a16fc15c-815b-4908-b8e6-5f3bc7cbc20b"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 4168
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IWLAN data service fails setup data call request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 4170
    invoke-virtual {p2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "e2248d8b-d55f-42bd-871c-0cfd80c3ddd1"

    .line 4169
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4149
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    if-gt p1, v2, :cond_4

    goto :goto_0

    :cond_4
    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_6

    .line 4154
    :cond_5
    const-string p1, "RIL set up data call fails: unknown/unspecified error"

    const-string p2, "ce7d1465-d8e4-404a-b76f-de2c60bee843"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 4157
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RIL fails setup data call request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 4159
    invoke-virtual {p2}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "e6a98b97-9e34-4977-9a92-01d52a6691f6"

    .line 4158
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private blacklist tryHandoverDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 3

    if-nez p3, :cond_0

    .line 4888
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 4889
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->isAnyHandoverRetryScheduled(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tryHandoverDataNetwork: retry scheduled for"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ignore this attempt"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 4894
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateDataNetworkHandover(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v0

    .line 4895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryHandoverDataNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 4896
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start handover "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4898
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4897
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 4899
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z

    return-void

    .line 4900
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDownDueToInCall()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 4901
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {v1, v2}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object v1

    .line 4902
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->isSubsetOf([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    const/4 p2, 0x2

    .line 4906
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 4908
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    const p3, 0x10006

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    .line 4911
    const-string p1, "tryHandoverDataNetwork: Scheduled retry due to in voice call and target OOS"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void

    .line 4912
    :cond_4
    sget-object p3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {p3, v1, v2}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/data/DataEvaluation;->containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 4915
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryHandoverDataNetwork: Handover not allowed. Tear down"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " so a new network can be setup on "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4917
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4915
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/16 p2, 0xe

    .line 4918
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void

    .line 4920
    :cond_5
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object p3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {p2, p3}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4922
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tryHandoverDataNetwork: Handover not allowed. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " will remain on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4924
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p1

    .line 4923
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4922
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void

    .line 4926
    :cond_6
    const-string p1, "tryHandoverDataNetwork: Unexpected handover evaluation result."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unregisterImsFeatureRegistrationState(II)V
    .locals 2

    .line 3719
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    .line 3720
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 3723
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 3724
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 3726
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    .line 3727
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 3729
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully unregistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registration state. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3731
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method private blacklist unregisterImsStateCallbacks(I)V
    .locals 3

    .line 3790
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3791
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-eqz v0, :cond_0

    .line 3793
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V

    .line 3794
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister MMTEL state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3798
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-eqz v0, :cond_1

    .line 3800
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V

    .line 3801
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister RCS state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 3805
    :cond_2
    const-string p1, "IMS is not supported on this device, skipping unregisterImsStateCallbacks"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateAnomalySlidingWindowCounters()V
    .locals 4

    .line 3867
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3868
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3869
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 3870
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3871
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3872
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 3873
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3874
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3875
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 3876
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3877
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3878
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    return-void
.end method

.method private blacklist updateDataActivity()V
    .locals 3

    .line 3544
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataDormant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 3546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3547
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataActivity()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3550
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    if-eq v1, v0, :cond_2

    .line 3551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: dataActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->dataActivityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3551
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    .line 3553
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    .line 3554
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    :cond_2
    return-void
.end method

.method private blacklist updateNetworkRequestsPriority()V
    .locals 1

    .line 3858
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3859
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updatePriority()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist updateOverallInternetDataState()V
    .locals 7

    .line 5275
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;-><init>()V

    .line 5276
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 5279
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>()V

    .line 5280
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda41;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda41;-><init>()V

    .line 5281
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 5283
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 5284
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 5285
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda42;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda42;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 5286
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSuspended="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", anyInternetConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mDataNetworkList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    .line 5296
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-eq v2, v0, :cond_3

    .line 5297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internet data state changed from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 5298
    invoke-static {v6}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5299
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5297
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 5300
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 5303
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mConnectedInternetNetworks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5304
    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mConnectedInternetNetworks:Ljava/util/Set;

    .line 5305
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda43;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 5309
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-ne v1, v5, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->setInternetNetworkConnected(Z)V

    .line 5312
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-nez v0, :cond_5

    .line 5314
    const-string v0, "XMO"

    const-string v1, "SPO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5315
    invoke-static {v3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5316
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-virtual {p0, v4, v4}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->handleAlwaysOnPdn(ZZ)V

    :cond_5
    return-void
.end method

.method private blacklist updateQosState(Ljava/lang/String;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7301
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    move v5, v4

    .line 7302
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 7303
    div-int/lit8 v6, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v9, v5, 0x1

    .line 7304
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 7308
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7309
    invoke-direct {v0, v2, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->convertByteArrayToQos([BI)Landroid/telephony/data/Qos;

    move-result-object v5

    .line 7310
    invoke-virtual {v5}, Landroid/telephony/data/Qos;->getType()I

    move-result v5

    if-ne v5, v3, :cond_1

    const/16 v5, 0x19

    goto :goto_1

    :cond_1
    const/16 v5, 0x16

    :goto_1
    add-int/lit8 v6, v5, 0x4

    .line 7317
    invoke-static {v2, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 7316
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x8

    .line 7320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QOS session nos :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_b

    add-int/lit8 v8, v5, 0x4

    .line 7324
    invoke-static {v2, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 7323
    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    .line 7326
    invoke-direct {v0, v2, v8}, Lcom/android/internal/telephony/data/DataNetworkController;->convertByteArrayToQos([BI)Landroid/telephony/data/Qos;

    move-result-object v8

    .line 7327
    invoke-virtual {v8}, Landroid/telephony/data/Qos;->getType()I

    move-result v10

    if-ne v10, v3, :cond_2

    add-int/lit8 v5, v5, 0x1d

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1a

    :goto_3
    add-int/lit8 v10, v5, 0x4

    .line 7333
    invoke-static {v2, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 7332
    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    add-int/lit8 v5, v5, 0x8

    .line 7335
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "QOS sessions ID#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " no of filter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7336
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v4

    :goto_4
    if-ge v12, v10, :cond_a

    add-int/lit8 v13, v5, 0x4

    .line 7339
    invoke-static {v2, v5, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 7338
    invoke-static {v13}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v13

    add-int/lit8 v5, v5, 0x8

    .line 7341
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v14, v4

    .line 7342
    :goto_5
    const-string v3, "UTF_8"

    if-ge v14, v13, :cond_3

    add-int/lit8 v4, v5, 0x4

    .line 7344
    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 7343
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    move/from16 p1, v5

    .line 7347
    :try_start_0
    new-instance v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v27, v6

    add-int v6, v4, p1

    move/from16 p1, v7

    .line 7348
    :try_start_1
    invoke-static {v2, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v5, v7, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 7350
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/data/DataNetworkController;->createLinkAddressFromString(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    goto :goto_6

    :catch_0
    move/from16 v27, v6

    move/from16 p1, v7

    :catch_1
    move v5, v4

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, p1

    move/from16 v6, v27

    const/4 v4, 0x0

    goto :goto_5

    :cond_3
    move/from16 v27, v6

    move/from16 p1, v7

    add-int/lit8 v4, v5, 0x4

    .line 7357
    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 7356
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x8

    .line 7359
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_4

    add-int/lit8 v13, v5, 0x4

    .line 7362
    invoke-static {v2, v5, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 7361
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 7365
    :try_start_2
    new-instance v14, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v5, v13

    move/from16 v16, v4

    .line 7366
    :try_start_3
    invoke-static {v2, v13, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v14, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 7368
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/data/DataNetworkController;->createLinkAddressFromString(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_2
    move/from16 v16, v4

    :catch_3
    move v5, v13

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    goto :goto_7

    :cond_4
    add-int/lit8 v3, v5, 0x1

    .line 7375
    aget-byte v4, v2, v5

    const/4 v7, -0x1

    if-eqz v4, :cond_5

    add-int/lit8 v4, v5, 0x5

    .line 7377
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 7376
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    add-int/lit8 v5, v5, 0x9

    .line 7380
    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 7379
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    goto :goto_9

    :cond_5
    move v5, v3

    move v3, v7

    move v4, v3

    .line 7383
    :goto_9
    new-instance v13, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-direct {v13, v3, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    add-int/lit8 v3, v5, 0x1

    .line 7386
    aget-byte v4, v2, v5

    if-eqz v4, :cond_6

    add-int/lit8 v4, v5, 0x5

    .line 7388
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 7387
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    add-int/lit8 v3, v5, 0x9

    .line 7391
    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 7390
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    goto :goto_a

    :cond_6
    move v4, v7

    .line 7394
    :goto_a
    new-instance v5, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-direct {v5, v7, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    add-int/lit8 v4, v3, 0x4

    .line 7398
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 7397
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v19

    add-int/lit8 v7, v3, 0x5

    .line 7402
    aget-byte v4, v2, v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x6

    .line 7403
    aget-byte v4, v2, v7

    move v7, v3

    move/from16 v20, v4

    goto :goto_b

    :cond_7
    const/16 v20, 0x0

    :goto_b
    add-int/lit8 v3, v7, 0x1

    .line 7407
    aget-byte v4, v2, v7

    if-eqz v4, :cond_8

    add-int/lit8 v7, v7, 0x5

    .line 7409
    invoke-static {v2, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 7408
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    move v4, v3

    move v3, v7

    goto :goto_c

    :cond_8
    const/4 v4, 0x0

    :goto_c
    add-int/lit8 v7, v3, 0x1

    .line 7414
    aget-byte v14, v2, v3

    if-eqz v14, :cond_9

    add-int/lit8 v3, v3, 0x5

    .line 7416
    invoke-static {v2, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 7415
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    move/from16 v29, v7

    move v7, v3

    move/from16 v3, v29

    goto :goto_d

    :cond_9
    const/4 v3, 0x0

    :goto_d
    add-int/lit8 v14, v7, 0x4

    .line 7421
    invoke-static {v2, v7, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 7420
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v25

    add-int/lit8 v7, v7, 0x8

    .line 7425
    invoke-static {v2, v14, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 7424
    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v26

    .line 7428
    new-instance v14, Landroid/telephony/data/QosBearerFilter;

    move-object/from16 v18, v5

    int-to-long v4, v4

    move-object/from16 v28, v2

    int-to-long v2, v3

    move-wide/from16 v23, v2

    move-wide/from16 v21, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v13

    invoke-direct/range {v14 .. v26}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move v5, v7

    move/from16 v6, v27

    move-object/from16 v2, v28

    const/4 v3, 0x2

    const/4 v4, 0x0

    move/from16 v7, p1

    goto/16 :goto_4

    :cond_a
    move-object/from16 v28, v2

    move/from16 v27, v6

    move/from16 p1, v7

    .line 7432
    new-instance v2, Landroid/telephony/data/QosBearerSession;

    invoke-direct {v2, v9, v8, v11}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, p1, 0x1

    move-object/from16 v2, v28

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 7434
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7435
    iget-object v0, v0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    .line 7436
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v3

    move/from16 v4, p2

    if-ne v3, v4, :cond_c

    .line 7437
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetwork;->updateQosParameters(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method private blacklist updateSubscriptionPlans()V
    .locals 3

    .line 4934
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4935
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4934
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 4936
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4937
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4938
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4939
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription plans initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist validateSlotId(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 7467
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getSlotCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 1

    const/4 v0, 0x2

    .line 1971
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist areAllDataDisconnected()Z
    .locals 3

    .line 2236
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "areAllDataDisconnected false due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda3;-><init>()V

    .line 2238
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2237
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2240
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public blacklist areAllDataDisconnectedForDdsChange(Z)Z
    .locals 4

    .line 6424
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 6425
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 6426
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;-><init>()V

    .line 6427
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda18;-><init>()V

    .line 6433
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 6434
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 6436
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 6439
    :cond_0
    const-string v0, "persist.radio.multisim.config"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6440
    const-string v3, "dsda"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6441
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 6443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 6449
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 6450
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6451
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v3, 0x9

    .line 6452
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    .line 6453
    :cond_2
    :goto_1
    const-string v0, "areAllDataDisconnectedForDdsChange, no need to check mms/xcap capain dsda mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public blacklist blockCleanUpDomesticOtaReg(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z
    .locals 3

    .line 6382
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "ril.simtype"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6385
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KOO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "18"

    .line 6386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6387
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SKT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ril.domesticOtaStart"

    .line 6388
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/16 p0, 0x1f

    .line 6389
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_PROFILES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 5705
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5707
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5708
    const-string p2, "Current data networks:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5709
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5710
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 5711
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 5713
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5715
    const-string p2, "Pending tear down data networks:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5716
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5717
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 5718
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 5720
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5722
    const-string p2, "Previously connected data networks: (up to 10)"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5724
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5725
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 5727
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5728
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 5731
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5733
    const-string p2, "All telephony network requests:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5734
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5735
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 5736
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 5738
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5740
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS features registration state: MMTEL="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5741
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "not registered"

    const-string v3, "registered"

    if-eqz v1, :cond_5

    move-object v1, v3

    goto :goto_4

    :cond_5
    move-object v1, v2

    .line 5742
    :goto_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RCS="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5744
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v2, v3

    .line 5745
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5740
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5746
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPsRestricted="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5748
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnyDataNetworkExisting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInternetDataNetworkState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 5750
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5749
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsDataNetworkState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 5752
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5751
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataServiceBound="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSrvccHandoverInProcess="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsSrvccHandoverInProcess:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5756
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataNetworkControllerCallbacks="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5757
    const-string p2, "Subscription plans:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5758
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5759
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5760
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5761
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmetered override network types="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 5762
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5761
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Congested override network types="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 5764
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5763
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsThrottleCounter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5766
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkUnwantedCounter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5767
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBootStrapSimTotalDataUsageBytes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mBootStrapSimTotalDataUsageBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5768
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5769
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5770
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5771
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5773
    const-string p2, "-------------------------------------"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5774
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5775
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5776
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataRetryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5777
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5778
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5779
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5780
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5781
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5782
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5783
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5784
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/data/DataAllowPopup;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5786
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;
    .locals 11

    .line 2270
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 2271
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2272
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v2

    .line 2271
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 2275
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v2

    .line 2274
    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v2

    .line 2276
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isMeteredRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isDataAllowedFromKnox(IZLcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateNetworkRequest: Reject data call as data not allowed from knox on sim slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2278
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2277
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2279
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_KNOX:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2284
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->canConnectivityTransportSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2285
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_1
    const/16 v3, 0xa

    .line 2290
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2291
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 2292
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v7

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2293
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, p1

    .line 2291
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object p1

    move-object v4, v6

    .line 2297
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldHonorRetryTimerForEmergencyNetworkRequest()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 2299
    invoke-virtual {p2, p1, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2300
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2301
    const-string p2, "Emergency network request is throttled by the previous setup data call response."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2305
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2306
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    if-eqz p1, :cond_3

    .line 2308
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 2311
    :cond_3
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 2312
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    :cond_4
    move-object v4, p1

    .line 2317
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isValidForEpdg(I)Z

    move-result p1

    const/4 v5, 0x2

    if-eqz p1, :cond_5

    if-ne v1, v5, :cond_5

    .line 2318
    const-string p1, "evaluateNetworkRequest(): allowed by EPDG"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2319
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->IWLAN_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2320
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    move-object v3, v4

    .line 2321
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v4

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2322
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    .line 2323
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v6

    const/4 v7, 0x1

    .line 2320
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object p1

    move-object v4, v3

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 2324
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 2325
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 2330
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2331
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2335
    :cond_6
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq p1, v3, :cond_7

    .line 2336
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2340
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2341
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_CONFIG_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2345
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v5, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2347
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object p1

    .line 2348
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2347
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 2350
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataCrossActiveInNonDataPreferred()Z

    move-result p1

    if-nez p1, :cond_9

    .line 2352
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2358
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCalling()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v3, :cond_a

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2359
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2360
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_a
    const/4 p1, 0x1

    if-ne v1, p1, :cond_b

    const/16 v3, 0x21

    .line 2366
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2367
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2370
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 2371
    invoke-virtual {v6}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 2372
    invoke-virtual {v6}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2374
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v3

    .line 2373
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->allowBringUpNetworkInNonVops(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2375
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2382
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 2381
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v3, 0x40

    if-eq v2, v3, :cond_c

    .line 2387
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2402
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2404
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldIgnoreDataRoamingSettingForSatellite()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2405
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2409
    :cond_d
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    if-eqz v3, :cond_e

    if-ne v1, p1, :cond_e

    .line 2410
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2414
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isPendingRadioPowerOffAfterDataOff()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2415
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->PENDING_TEAR_DOWN_ALL:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_f
    if-ne v1, p1, :cond_11

    .line 2421
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2422
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2423
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-eq v3, p1, :cond_11

    .line 2424
    :cond_10
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_POWER_OFF:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2428
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2429
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2433
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2434
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SERVICE_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2438
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInCdmaEcm()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2440
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->allowedInEmergency()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2443
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2447
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlySingleDataNetworkAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2448
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->hasCapabilityExemptsFromSinglePdnRule([I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2450
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda16;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 2451
    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2453
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2458
    :cond_15
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataInitialized()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2459
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 2460
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v6

    .line 2459
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2462
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->ignoreDataEnabledOnRoaming()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 2463
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isNetworkScanEnabled()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2466
    :cond_16
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_0

    .line 2469
    :cond_17
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SETTINGS_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2474
    :cond_18
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataAllowedExtra(ILcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 2475
    const-string v3, "evaluateNetworkRequest(): disallowed by Extra reasons"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2476
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISALLOWED_EXTRA:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2482
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDsgSim()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v6, "DSG"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2483
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2484
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataInLegacy3gpp(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2485
    const-string v3, "evaluateNetworkRequest(): disallowed for DSG camped in roaming legacy 3gpp rat"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2487
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISALLOWED_EXTRA:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2492
    :cond_1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_1b

    .line 2493
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2495
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2496
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 2497
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2502
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1

    .line 2504
    :cond_1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsHardDisallowedReasons()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2505
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2506
    :cond_1c
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2508
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1

    :cond_1d
    if-ne v1, v5, :cond_1e

    .line 2528
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1

    :cond_1e
    if-ne v1, p1, :cond_1f

    .line 2536
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->isMeteredRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2537
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 2543
    :cond_1f
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    if-nez v3, :cond_20

    if-ne v1, p1, :cond_20

    .line 2548
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    :cond_20
    move v5, v3

    .line 2551
    sget-object v10, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v10, :cond_21

    .line 2552
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2554
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v6

    .line 2555
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v7

    const/4 v8, 0x1

    .line 2553
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 2557
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 2558
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v6

    const/16 v7, 0x11

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_21

    .line 2560
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 2564
    :cond_21
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2566
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v6

    .line 2567
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v7

    .line 2570
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->isConditionBased()Z

    move-result v8

    .line 2565
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v3

    if-nez v3, :cond_22

    .line 2572
    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_2

    :cond_22
    if-ne p2, v10, :cond_23

    .line 2573
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 2576
    invoke-virtual {v5, v4, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2578
    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2588
    :cond_23
    :goto_2
    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-eq p2, v5, :cond_24

    .line 2589
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataAllowPopupNecessary(ILcom/android/internal/telephony/data/DataEvaluation;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2590
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->requestDataAllowPopup(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;Lcom/android/internal/telephony/data/DataEvaluation;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2591
    const-string v2, "DataAllowPopup, not allowed by popup"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2592
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISALLOWED_BY_POPUP:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 2596
    :cond_24
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v2

    if-nez v2, :cond_26

    if-ne v1, p1, :cond_25

    .line 2598
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2599
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapMaxDataLimitReached()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2600
    const-string p1, "BootStrap Sim Data Usage limit reached"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2601
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_3

    .line 2603
    :cond_25
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 2607
    :cond_26
    :goto_3
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    if-eq p2, v5, :cond_27

    .line 2610
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", network type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p2

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", reg state="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2614
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRegistrationState(Landroid/telephony/ServiceState;I)I

    move-result p2

    .line 2613
    invoke-static {p2}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2610
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_27
    return-object v0
.end method

.method protected blacklist getAirplaneMode()Z
    .locals 2

    .line 6004
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public blacklist getAllDataNetworks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation

    .line 7176
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getAlwaysOnPdn()Lcom/android/internal/telephony/data/AlwaysOnPdn;
    .locals 0

    .line 6679
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    return-object p0
.end method

.method public blacklist getAnyDataNetworkExisting()Z
    .locals 0

    .line 6014
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    return p0
.end method

.method public blacklist getCongestedOverrideNetworkTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5382
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getDataActivity()I
    .locals 0

    .line 5423
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    return p0
.end method

.method public blacklist getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;
    .locals 0

    .line 5952
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    return-object p0
.end method

.method public blacklist getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;
    .locals 0

    .line 5329
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method public blacklist getDataNetworkByInterface(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetwork;
    .locals 1

    .line 3631
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda0;-><init>()V

    .line 3632
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 3634
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3636
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 3637
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataNetwork;

    return-object p0
.end method

.method public blacklist getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;
    .locals 0

    .line 5337
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    return-object p0
.end method

.method public blacklist getDataRetryManager()Lcom/android/internal/telephony/data/DataRetryManager;
    .locals 0

    .line 5353
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    return-object p0
.end method

.method public blacklist getDataServicePackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5621
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5622
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;
    .locals 0

    .line 5345
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    return-object p0
.end method

.method public blacklist getInternetDataDisallowedReasons()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;",
            ">;"
        }
    .end annotation

    .line 2249
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 2251
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 2252
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 2253
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    .line 2255
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataDisallowedReasons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInternetDataNetworkState()I
    .locals 0

    .line 5612
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    return p0
.end method

.method public blacklist getInternetEvaluation(Z)Lcom/android/internal/telephony/data/DataEvaluation;
    .locals 4

    .line 2189
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 2191
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 2192
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    if-nez p1, :cond_0

    .line 2195
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2198
    new-instance p0, Lcom/android/internal/telephony/data/DataEvaluation;

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-object p0

    .line 2204
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p1

    .line 2206
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2207
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda14;-><init>()V

    .line 2208
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda15;-><init>()V

    .line 2209
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v1, 0x0

    .line 2210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le v0, p0, :cond_1

    .line 2213
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    :cond_1
    return-object p1
.end method

.method public blacklist getKnoxMmsControl()Z
    .locals 0

    .line 7451
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mKnoxMmsControl:Z

    return p0
.end method

.method public blacklist getNextRetryTime()J
    .locals 2

    .line 7461
    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->mNextRetryTime:J

    return-wide v0
.end method

.method public blacklist getPreciseDataConnectionState(Landroid/telephony/data/ApnSetting;II)Landroid/telephony/PreciseDataConnectionState;
    .locals 2

    .line 6076
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    .line 6077
    invoke-virtual {v0, p3}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 6078
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 6079
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 6080
    invoke-virtual {v0, p1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 6081
    invoke-virtual {p1, v0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p1

    .line 6082
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 6083
    invoke-virtual {p0, p2}, Landroid/telephony/PreciseDataConnectionState$Builder;->setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 6084
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegionForPdpRetry()Ljava/lang/String;
    .locals 2

    .line 7020
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 7024
    const-string v1, "26003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23105"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "21403"

    .line 7025
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "22610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23430"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23431"

    .line 7026
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23432"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23433"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23486"

    .line 7027
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "20801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "34001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "64700"

    .line 7028
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "23471"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 7034
    :cond_0
    const-string v1, "52501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "52502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "52503"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "52505"

    .line 7035
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "52802"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "52811"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 7042
    :cond_1
    const-string v1, "20201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "20416"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "20420"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "21630"

    .line 7043
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "21901"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "22603"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "23001"

    .line 7044
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "23102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "26002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "26201"

    .line 7045
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "26206"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "27601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 7052
    :cond_2
    const-string v1, "21401"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "22210"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "22801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "23415"

    .line 7053
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "26202"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "26801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "26889"

    .line 7054
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "29501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 7061
    :cond_3
    const-string v1, "24007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "24201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "23802"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "23877"

    .line 7062
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "24008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 7068
    :cond_4
    const-string v1, "20402"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7069
    const-string v0, "getRegionForPdpRetry() : TELE2_Netherland"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7070
    const-string p0, "TELE2_Netherland"

    return-object p0

    .line 7075
    :cond_5
    const-string v1, "50501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "50503"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 7081
    :cond_6
    const-string v1, "22201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7082
    const-string v0, "getRegionForPdpRetry() : TIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7083
    const-string p0, "TIM"

    return-object p0

    .line 7087
    :cond_7
    const-string v1, "23420"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "23594"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 7093
    :cond_8
    const-string v1, "21405"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "21407"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 7098
    :cond_9
    const-string p0, "UNKNOWN"

    return-object p0

    .line 7094
    :cond_a
    :goto_0
    const-string v0, "getRegionForPdpRetry() : Telefonica"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7095
    const-string p0, "TELEFONICA"

    return-object p0

    .line 7088
    :cond_b
    :goto_1
    const-string v0, "getRegionForPdpRetry() : HUTCHISON_EUR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7089
    const-string p0, "HUTCHISON_EUR"

    return-object p0

    .line 7076
    :cond_c
    :goto_2
    const-string v0, "getRegionForPdpRetry() : TEL"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7077
    const-string p0, "TEL"

    return-object p0

    .line 7063
    :cond_d
    :goto_3
    const-string v0, "getRegionForPdpRetry() : TELE2"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7064
    const-string p0, "TELE2"

    return-object p0

    .line 7055
    :cond_e
    :goto_4
    const-string v0, "getRegionForPdpRetry() : VODAFONE_EUR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7056
    const-string p0, "VODAFONE_EUR"

    return-object p0

    .line 7046
    :cond_f
    :goto_5
    const-string v0, "getRegionForPdpRetry() : TMOBILE_EUR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7047
    const-string p0, "TMOBILE_EUR"

    return-object p0

    .line 7036
    :cond_10
    :goto_6
    const-string v0, "getRegionForPdpRetry() : SINGAPORE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7037
    const-string p0, "SINGAPORE"

    return-object p0

    .line 7029
    :cond_11
    :goto_7
    const-string v0, "getRegionForPdpRetry() : ORANGE_EUR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7030
    const-string p0, "ORANGE_EUR"

    return-object p0
.end method

.method public blacklist getSubscriptionPlans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 5362
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getUnmeteredOverrideNetworkTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5372
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1656
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    packed-switch v0, :pswitch_data_0

    const/16 v4, 0x10

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 1954
    :pswitch_0
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->WIFI_INVALIDATED_DURING_SUP:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1870
    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->onCheckBootCompleted()V

    return-void

    .line 1876
    :pswitch_2
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1883
    :pswitch_3
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->AIRPLANE_MODE_CANCELED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1866
    :pswitch_4
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->onDataAllowPopupSendible()V

    return-void

    .line 1860
    :pswitch_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowPopup:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->onDeferDataAllowPopup()V

    return-void

    .line 1940
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1942
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received exception on event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 1946
    :cond_1
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 1947
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1948
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->handleAlwaysOnPdn(ZZ)V

    return-void

    .line 1928
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_e

    .line 1929
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 1930
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1931
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->wrapRegisterListenerForNonDds()V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x21

    .line 1923
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownAllDataNetworks(I)V

    return-void

    .line 1916
    :pswitch_9
    const-string p1, "EVENT_CARRIER_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1917
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1903
    :pswitch_a
    const-string v0, "EVENT_QOS_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1904
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_e

    .line 1906
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 1907
    array-length v0, p1

    if-ne v0, v5, :cond_e

    .line 1908
    aget-object v0, p1, v1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->updateQosState(Ljava/lang/String;I)V

    return-void

    .line 1896
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1897
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->setHandoverEnabled(I)V

    return-void

    .line 1890
    :pswitch_c
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DISCONNECT_PDP_BEFORE_DDS_CHANGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void

    .line 1854
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onEnableT3346(Landroid/os/Message;)V

    return-void

    .line 1842
    :pswitch_e
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1843
    const-string p1, "Reset DataSetupEntries due to PLMN_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->resetDataSetupRetry(Z)V

    .line 1847
    :cond_3
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PLMN_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1834
    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onNonDdsMmsEnded()V

    return-void

    .line 1830
    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onNonDdsMmsStarted()V

    return-void

    .line 1815
    :pswitch_11
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    .line 1816
    const-string v0, "ATT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KTT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1817
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v0

    .line 1820
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result p0

    const/4 v1, 0x0

    .line 1817
    invoke-interface {p1, v0, p0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    return-void

    .line 1809
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onRrcStateChanged(Landroid/os/Message;)V

    return-void

    .line 1715
    :pswitch_13
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->TAC_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1695
    :pswitch_14
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SLICE_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1771
    :pswitch_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1772
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v1

    .line 1773
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1775
    const-string v4, ","

    const-string v6, ", networkTypes="

    if-ne v0, v2, :cond_8

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmetered subscription override: override="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>()V

    .line 1778
    invoke-interface {v2, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1779
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1780
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_7

    aget v2, p1, v1

    if-eqz v3, :cond_6

    .line 1782
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1784
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1787
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_8
    if-ne v0, v5, :cond_b

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Congested subscription override: override="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>()V

    .line 1792
    invoke-interface {v2, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1793
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1790
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1794
    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_a

    aget v2, p1, v1

    if-eqz v3, :cond_9

    .line 1796
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1798
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1801
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1804
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown override mask: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 1763
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/SubscriptionPlan;

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription plans changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1767
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1760
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->onEvaluatePreferredTransport(IZ)V

    return-void

    .line 1751
    :pswitch_18
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1752
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1755
    :cond_d
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1658
    :pswitch_19
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V

    return-void

    .line 1681
    :pswitch_1a
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1690
    :pswitch_1b
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1748
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onServiceStateChanged()V

    return-void

    .line 1672
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1673
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void

    .line 1745
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSubscriptionChanged()V

    return-void

    .line 1742
    :pswitch_1f
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 1733
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1736
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 1737
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 1730
    :pswitch_21
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onTearDownAllDataNetworks(I)V

    return-void

    .line 1726
    :pswitch_22
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1727
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimStateChanged(I)V

    return-void

    .line 1720
    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1721
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1722
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1723
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataServiceBindingChanged(IZ)V

    return-void

    .line 1708
    :pswitch_24
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    .line 1709
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RESTRICTED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1705
    :pswitch_25
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    return-void

    .line 1668
    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1669
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    return-void

    .line 1699
    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1700
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_e

    .line 1701
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSrvccStateChanged([I)V

    :cond_e
    :goto_6
    return-void

    .line 1676
    :pswitch_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onRemoveNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void

    .line 1661
    :pswitch_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onAddNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1b
        :pswitch_26
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4207c
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x42080
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist ignoreDataEnabledOnRoaming()Z
    .locals 2

    .line 6202
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 6203
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist ignoreForCDMA()Z
    .locals 2

    .line 6685
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6686
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6687
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6688
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6689
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getCdmaRatOrigin()Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->NO_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    if-eq v0, v1, :cond_0

    .line 6690
    const-string v0, "Cdma Rat dosen\'t need preferred apn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist is1xEvdo(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isAnyMeteredConnected()Z
    .locals 5

    .line 7104
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 7105
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7107
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7113
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 7118
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 7120
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 7121
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    .line 7119
    invoke-virtual {v2, v1, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAttSim()Z
    .locals 20

    move-object/from16 v0, p0

    .line 6604
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 6606
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6607
    const-string v1, "isAttSim: failed to get SIM operator"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v3

    .line 6610
    :cond_0
    const-string v18, "313120"

    const-string v19, "313150"

    const-string v4, "310170"

    const-string v5, "310380"

    const-string v6, "310410"

    const-string v7, "310560"

    const-string v8, "311180"

    const-string v9, "310950"

    const-string v10, "310030"

    const-string v11, "310280"

    const-string v12, "310410"

    const-string v13, "313100"

    const-string v14, "312670"

    const-string v15, "313130"

    const-string v16, "313140"

    const-string v17, "313110"

    filled-new-array/range {v4 .. v19}, [Ljava/lang/String;

    move-result-object v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/16 v6, 0x10

    if-ge v4, v6, :cond_2

    .line 6628
    aget-object v6, v2, v4

    .line 6629
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6634
    :cond_2
    iget-object v0, v0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6636
    const-string v0, "99999"

    const-string v2, "00101"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move v2, v3

    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    .line 6640
    aget-object v4, v0, v2

    .line 6641
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public blacklist isCellcomSim()Z
    .locals 3

    .line 6475
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6478
    const-string v0, "isCellcomSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v2

    .line 6481
    :cond_0
    const-string p0, "311840"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 6483
    aget-object p0, p0, v2

    .line 6484
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public blacklist isChinaCard()Z
    .locals 3

    .line 6920
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6921
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 6923
    :goto_0
    const-string v1, "460"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist isDataAllowList()Z
    .locals 2

    .line 6771
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6772
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 6773
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataAllowList:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isDataCrossActiveInNonDataPreferred()Z
    .locals 6

    .line 7518
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    .line 7519
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getLastSentPhoneIdForDataCross()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7520
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 7521
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataCrossActiveInNonDataPreferred, isDataCrossActive : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNonPreferredDataPhone : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    return v4

    :cond_2
    return v3
.end method

.method public blacklist isDataInLegacy3gpp(I)Z
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public blacklist isDsgSim()Z
    .locals 6

    .line 6236
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6239
    const-string v0, "isDsgSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return v2

    .line 6243
    :cond_0
    const-string v1, "313340"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 6246
    aget-object v1, v1, v2

    .line 6247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    .line 6252
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DSG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6254
    const-string p0, "20809"

    const-string v1, "302220"

    const-string v4, "00101"

    const-string v5, "99999"

    filled-new-array {v4, v5, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    move v1, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_3

    .line 6260
    aget-object v4, p0, v1

    .line 6261
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public blacklist isEsimBootStrapProvisioningActivated()Z
    .locals 1

    .line 3653
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3654
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3656
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isHandoverEnabled(I)Z
    .locals 2

    .line 7158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHandoverEnabled: (mIsHandoverEnabled & apnType)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsHandoverEnabled:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 7159
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsHandoverEnabled:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 7160
    const-string p1, "isHandoverEnabled: return true"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 7163
    :cond_0
    const-string p1, "isHandoverEnabled: return false"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetDataAllowed(Z)Z
    .locals 0

    .line 2176
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getInternetEvaluation(Z)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isInternetDataNetworkSuspended()Z
    .locals 2

    .line 6749
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 6750
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6751
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionStateForExternal()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetNetwork(I)Z
    .locals 2

    .line 3509
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3510
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3511
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3512
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetUnmetered()Z
    .locals 1

    .line 2223
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;-><init>()V

    .line 2224
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>()V

    .line 2225
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda21;-><init>()V

    .line 2226
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isKttSim()Z
    .locals 1

    .line 6673
    const-string v0, "45008"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isSimMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isLguSim()Z
    .locals 1

    .line 6669
    const-string v0, "45006"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isSimMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isMeteredRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 1

    .line 7493
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 7494
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    .line 7493
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist isNeedNotifyInternetDataState(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 7484
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->checkAndInitInternetCapaChanged()Z

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

.method public blacklist isNetworkRequestExisting(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 3620
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isOnlyLteDataAllowed()Z
    .locals 6

    .line 6988
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6989
    const-string v1, "persist.ims.gcfmode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 6992
    const-string v2, "20820"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "22201"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    .line 6993
    :cond_1
    :goto_0
    const-string v0, "support IMS on 2G,3G"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    move v0, v3

    .line 6997
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "EUR"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6999
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isLatinOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7000
    :cond_3
    const-string v0, "isOnlyLteDataAllowed() : true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v4

    .line 7004
    :cond_4
    const-string v0, "isOnlyLteDataAllowed() : false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v3
.end method

.method public blacklist isQcom()Z
    .locals 0

    .line 5900
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    return p0
.end method

.method public blacklist isSktSim()Z
    .locals 1

    .line 6665
    const-string v0, "45005"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isSimMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTestbedSim()Z
    .locals 1

    .line 6762
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 6763
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 6765
    const-string v0, "00101"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isTmoSim()Z
    .locals 17

    move-object/from16 v0, p0

    .line 6554
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 6556
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6557
    const-string v1, "isTmoSim: failed to get SIM operator"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v3

    .line 6561
    :cond_0
    const-string v15, "310660"

    const-string v16, "310800"

    const-string v4, "310160"

    const-string v5, "310260"

    const-string v6, "310200"

    const-string v7, "310210"

    const-string v8, "310220"

    const-string v9, "310230"

    const-string v10, "310240"

    const-string v11, "310250"

    const-string v12, "310270"

    const-string v13, "310310"

    const-string v14, "310490"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/16 v6, 0xd

    if-ge v4, v6, :cond_2

    .line 6576
    aget-object v6, v2, v4

    .line 6577
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6582
    :cond_2
    iget-object v0, v0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TMO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6584
    const-string v0, "00101"

    const-string v2, "001010"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move v2, v3

    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    .line 6588
    aget-object v4, v0, v2

    .line 6589
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public blacklist isVzwSim()Z
    .locals 11

    .line 6498
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6501
    const-string v0, "isVzwSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return v2

    .line 6505
    :cond_0
    const-string v9, "24681"

    const-string v10, "246081"

    const-string v3, "311480"

    const-string v4, "311270"

    const-string v5, "312770"

    const-string v6, "311390"

    const-string v7, "310028"

    const-string v8, "310004"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    const/16 v5, 0x8

    if-ge v3, v5, :cond_2

    .line 6515
    aget-object v5, v1, v3

    .line 6516
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6522
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "VZW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 6533
    const-string p0, "00101"

    const-string v1, "001010"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    move v1, v2

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    .line 6539
    aget-object v3, p0, v1

    .line 6540
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method protected blacklist onTetherStateChanged(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 5971
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTetherRequested:Z

    goto :goto_0

    .line 5973
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTetherRequested:Z

    .line 5976
    :goto_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5977
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x9

    .line 5979
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0x14

    .line 5980
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v1, 0x5

    .line 5981
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5982
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTetherRequested:Z

    .line 5983
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5984
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set tether state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mTetherRequested:Z

    if-eqz v2, :cond_1

    const-string v2, "On"

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    const-string v2, "Off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5989
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTetherStateChanged: exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5993
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 5994
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 5996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTetherStateChanged: close failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public blacklist registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    const/16 v0, 0xd

    .line 5433
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist registerForAllDataDisconnected(Landroid/os/Handler;I)V
    .locals 2

    .line 7139
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllDataDisconnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 7141
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->areAllDataDisconnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7142
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->notifyAllDataDisconnected()V

    :cond_0
    return-void
.end method

.method public blacklist registerForAllDataDisconnectedForDDS()V
    .locals 1

    const/4 v0, 0x1

    .line 7131
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsAllDataDisconnectedRegistered:Z

    return-void
.end method

.method public blacklist removeEventForCancelRetry()V
    .locals 2

    const/4 v0, 0x5

    .line 4619
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 1

    const/4 v0, 0x3

    .line 3585
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist requestNetworkValidation(ILjava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5638
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v0

    const/4 v1, 0x2

    .line 5643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    .line 5640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetworkValidation: the capability is not an apn type based. capability:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 5642
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    .line 5643
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5648
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;-><init>(I)V

    .line 5649
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 5651
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 5653
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5655
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda12;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 5658
    :cond_1
    const-string p1, "requestNetworkValidation: No matching DataNetwork was found"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 5659
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    .line 5660
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist resetDataSetupRetry(Z)V
    .locals 0

    .line 3560
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->removeLastRetryEntry(Z)V

    return-void
.end method

.method blacklist retryLostConnImmediately()V
    .locals 3

    .line 7500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryLostConnImmediately, mImsDataNetworkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRetryImmediatelyNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryImmediatelyNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7501
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 7502
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRetryImmediatelyNeeded:Z

    return-void

    .line 7505
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7507
    const-string v2, "send the retry msg immediately"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 7508
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7510
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public blacklist setHandoverEnabled(I)V
    .locals 2

    .line 7168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHandoverEnabled: mIsHandoverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsHandoverEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 7170
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsHandoverEnabled:I

    return-void
.end method

.method public blacklist setKnoxMmsControl(Z)V
    .locals 0

    .line 7446
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mKnoxMmsControl:Z

    const/16 p1, 0x25

    .line 7447
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist setMobileDataSetting(ZZ)V
    .locals 4

    .line 5924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataSetting: enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roamingEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 5926
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5927
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDocomoSim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5928
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 5929
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v0, :cond_0

    .line 5930
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mJPNDataEnabled:Z

    .line 5931
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mJPNRoamingEnabled:Z

    .line 5934
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAlwaysOnPdn:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 5935
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    goto :goto_1

    .line 5938
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    .line 5943
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5944
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    :cond_4
    return-void
.end method

.method public blacklist setNextRetryTime(J)V
    .locals 0

    .line 7457
    sput-wide p1, Lcom/android/internal/telephony/data/DataNetworkController;->mNextRetryTime:J

    return-void
.end method

.method public blacklist tearDownAllDataNetworks(I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 5452
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist unregisterDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    const/16 v0, 0xe

    .line 5443
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 0

    .line 7147
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllDataDisconnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForAllDataDisconnectedForDDS()V
    .locals 1

    const/4 v0, 0x0

    .line 7135
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIsAllDataDisconnectedRegistered:Z

    return-void
.end method
