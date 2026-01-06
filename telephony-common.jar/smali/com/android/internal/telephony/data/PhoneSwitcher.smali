.class public abstract Lcom/android/internal/telephony/data/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;,
        Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;
    }
.end annotation


# static fields
.field protected static final blacklist DDS_NOT_PROGRESSING:I = 0x0

.field protected static final blacklist DDS_PROGRESSING:I = 0x1

.field public static blacklist DEFAULT_DATA_OVERRIDE_TIMEOUT_MS:I = 0x0

.field protected static final blacklist DEFAULT_EMERGENCY_PHONE_ID:I = 0x0

.field public static blacklist ECBM_DEFAULT_DATA_SWITCH_BASE_TIME_MS:I = 0x0

.field protected static final blacklist EVENT_MODEM_COMMAND_RETRY:I = 0x71

.field protected static final blacklist EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field protected static final blacklist HAL_COMMAND_ALLOW_DATA:I = 0x1

.field protected static final blacklist HAL_COMMAND_PREFERRED_DATA:I = 0x2

.field protected static final blacklist HAL_COMMAND_UNKNOWN:I = 0x0

.field protected static final blacklist MODEM_COMMAND_RETRY_PERIOD_MS:I = 0x1388

.field protected static final blacklist REQUESTS_CHANGED:Z = true

.field protected static final blacklist REQUESTS_UNCHANGED:Z = false

.field protected static final blacklist VDBG:Z

.field protected static blacklist sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;


# instance fields
.field protected blacklist mActiveModemCount:I

.field protected final blacklist mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mAutoDataSwitchCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

.field protected final blacklist mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

.field protected blacklist mAutoSelectedDataSubId:I

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final blacklist mContext:Landroid/content/Context;

.field protected final blacklist mCurrentDdsSwitchFailure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/CommandException$Error;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManagerCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

.field private blacklist mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field protected blacklist mHalCommandToUse:I

.field public blacklist mImsRegTechProvider:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;

.field public blacklist mImsRegisterCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;

.field public final blacklist mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

.field private blacklist mImsRegistrationTech:[I

.field private blacklist mIsRegisteredForImsRadioTechChange:[Z

.field protected blacklist mLastSwitchPreferredDataReason:I

.field protected blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mMaxDataAttachModemCount:I

.field protected blacklist mNeedSyncDisconnect:Z

.field protected final blacklist mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field protected blacklist mOldPreferredDataPhoneId:I

.field private blacklist mPendingSwitchNeedValidation:Z

.field private blacklist mPendingSwitchSubId:I

.field protected blacklist mPhoneIdInVoiceCall:I

.field protected blacklist mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

.field protected blacklist mPhoneSubscriptions:[I

.field private final blacklist mPhoneSwitcherCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mPreferredDataPhoneId:I

.field protected blacklist mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field protected blacklist mPrimaryDataSubId:I

.field protected blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private blacklist mRegistrationCallbackForSlot0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mRegistrationCallbackForSlot1:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mRegistrationCallbackForSlot2:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

.field private final blacklist mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public final blacklist mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

.field protected final blacklist mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;


# direct methods
.method public static synthetic blacklist $r8$lambda$DuhzZ6HZovr4T-Tbp1hxU0XUcLo(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->lambda$new$2(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$L4s1oh2sRbiRICNwVBrP1DIJBZ4(Landroid/content/Context;ILandroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 528
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 529
    invoke-virtual {p0, p2, p3}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yx-eke6srjcSRcMajRBbIQoGxQc(ILcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .locals 1

    .line 2214
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cbz-GDGqFzbrlTX_rsKdXDCnlGM(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->lambda$onMultiSimConfigChanged$3(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sXdIfhOBEPi5HsBeztaOjxCxW6U(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;I)V
    .locals 0

    .line 2215
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;->onPreferredDataPhoneIdChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xYrVLGbSjQHlSr-hs3ekud2zTfI(Landroid/content/Context;I)I
    .locals 0

    .line 514
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationTech:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelPendingAutoDataSwitchValidation(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->cancelPendingAutoDataSwitchValidation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateIfImmediateDataSwitchIsNeeded(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDataSwitchEvent(Lcom/android/internal/telephony/data/PhoneSwitcher;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logDataSwitchEvent(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataEnabledChanged(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onDataEnabledChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidate(Lcom/android/internal/telephony/data/PhoneSwitcher;IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->validate(IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 124
    const-string v0, "PhoneSwitcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    const/16 v0, 0x1388

    .line 131
    sput v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->ECBM_DEFAULT_DATA_SWITCH_BASE_TIME_MS:I

    .line 135
    sput v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->DEFAULT_DATA_OVERRIDE_TIMEOUT_MS:I

    const/4 v0, 0x0

    .line 258
    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 10

    .line 663
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 214
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v0, 0x3

    .line 226
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mIsRegisteredForImsRadioTechChange:[Z

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 233
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 235
    new-instance v1, Lcom/android/internal/telephony/data/PhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    .line 263
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    const v1, 0x7fffffff

    .line 270
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 274
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 276
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 286
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 297
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    const/4 v1, 0x0

    .line 342
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    .line 361
    filled-new-array {v0, v0, v0}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationTech:[I

    .line 363
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    .line 369
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNeedSyncDisconnect:Z

    .line 383
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    .line 436
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRegistrationCallbackForSlot0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 457
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRegistrationCallbackForSlot1:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 478
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$4;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRegistrationCallbackForSlot2:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 501
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/telephony/data/PhoneSwitcher-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    .line 512
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda0;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegTechProvider:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;

    .line 526
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda1;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegisterCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;

    .line 798
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$8;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$8;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 806
    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$9;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    new-instance v4, Lcom/android/internal/telephony/data/PhoneSwitcher$10;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$10;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 664
    iput-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 665
    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    move-result-object p4

    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p4

    iput p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    .line 667
    new-array v4, p4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 668
    new-array p4, p4, [Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    .line 669
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    .line 670
    new-instance p1, Lcom/android/internal/telephony/LocalLog;

    const/16 p4, 0x100

    invoke-direct {p1, p4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 672
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 674
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 675
    invoke-static {}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->getInstance()Lcom/android/internal/telephony/data/CellularNetworkValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 677
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    .line 678
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 679
    const-string p4, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {p1, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    move p1, v1

    .line 683
    :goto_0
    iget p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p1, p4, :cond_2

    .line 684
    iget-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v2, p4, p1

    .line 685
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p4

    if-eqz p4, :cond_1

    const/16 v2, 0x69

    .line 687
    invoke-virtual {p4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6d

    .line 690
    invoke-virtual {p4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 692
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 693
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 697
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v4, 0x78

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForImsRegistrationChanges(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register handler to receive IMS registration : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 723
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p4

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 723
    invoke-virtual {p4, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 730
    :cond_1
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 731
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    .line 735
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p4, 0x6c

    invoke-interface {p1, p0, p4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 738
    :cond_3
    const-string p1, "telephony_registry"

    .line 739
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyRegistryManager;

    .line 740
    iget-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-virtual {p1, p4, v0}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 743
    const-string p1, "connectivity"

    .line 744
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 746
    new-instance v9, Lcom/android/internal/telephony/data/PhoneSwitcher$6;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$6;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    iput-object v9, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    .line 773
    new-instance v4, Lcom/android/internal/telephony/data/AutoDataSwitchController;

    iget-object v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v7, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/data/AutoDataSwitchController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;)V

    iput-object v4, v7, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    .line 779
    iget-object p0, v7, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance p2, Lcom/android/internal/telephony/data/PhoneSwitcher$7;

    new-instance p3, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {p3, v7}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-direct {p2, v7, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher$7;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    const/16 p0, 0x75

    .line 789
    invoke-static {v7, p0, v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 792
    iget-object p0, v7, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    invoke-virtual {p1, p0, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 793
    invoke-virtual {v7}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updateHalCommandToUse()V

    .line 795
    const-string p0, "PhoneSwitcher started"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cancelPendingAutoDataSwitchValidation()V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    const/16 v0, 0x6e

    .line 1283
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x76

    .line 1284
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    .line 1285
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    const/4 v0, 0x0

    .line 1286
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    :cond_0
    return-void
.end method

.method private blacklist confirmSwitch(IZ)V
    .locals 3

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmSwitch: subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, " confirmed."

    goto :goto_0

    :cond_0
    const-string v2, " cancelled."

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1934
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer active"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 p1, 0x2

    goto :goto_2

    :cond_1
    if-nez p2, :cond_3

    .line 1940
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 1941
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateRetryOnValidationFailed()V

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    .line 1944
    :cond_3
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    if-ne p1, p2, :cond_4

    const p1, 0x7fffffff

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    goto :goto_1

    .line 1947
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    .line 1950
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->resetFailedCount()V

    const/4 p1, 0x0

    .line 1954
    :goto_2
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    const/4 p1, 0x0

    .line 1955
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    const/4 p1, -0x1

    .line 1956
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    return-void
.end method

.method private blacklist evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 652
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 655
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerDefaultNetworkChangeCallback(II)V

    :cond_0
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;
    .locals 1

    .line 535
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object v0
.end method

.method private blacklist getPhoneBySubId(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getValidationTimeout(IZ)J
    .locals 2

    const-wide/16 v0, 0x7d0

    if-nez p2, :cond_0

    return-wide v0

    .line 1897
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string p2, "carrier_config"

    .line 1898
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_1

    .line 1900
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1902
    const-string p1, "data_switch_validation_timeout_long"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method private blacklist isEimsFixedToSlot1WithSimStates()Z
    .locals 4

    const/4 p0, 0x0

    .line 2349
    const-string v0, "gsm.sim.state"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 2350
    invoke-static {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2351
    const-string v1, "NOT_READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "UNKNOWN"

    .line 2352
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return p0
.end method

.method private blacklist isEimsFixedToSlot1WithoutActiveEnabledSubIds()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 2358
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 2359
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v2

    .line 2360
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 2361
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method private blacklist isImsOrEmergencyNetworkCapability(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

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

.method private blacklist isInEmergencyCallbackMode()Z
    .locals 6

    .line 1229
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 1231
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    return v5

    .line 1232
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1233
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private blacklist isPhoneIdValidForRetry(I)Z
    .locals 4

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 2220
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    .line 2219
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    return v2

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2226
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method private blacklist isShouldApplyForChipsetDependency(ZLcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .locals 8

    .line 2290
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v0

    .line 2291
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v1

    .line 2292
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isImsOrEmergencyNetworkCapability(I)Z

    move-result v2

    if-nez v2, :cond_8

    if-eq p3, v1, :cond_5

    .line 2296
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 2297
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 2298
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->needDdsChange(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    .line 2301
    :goto_3
    const-string v5, "CCT"

    const-string v6, "CHA"

    const-string v7, "XMO"

    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v5

    if-nez v1, :cond_4

    if-eqz v2, :cond_8

    if-nez v5, :cond_8

    .line 2304
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNeedNetworkFor: preferredDataPhoneId isn\'t update. networkCapability : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wait onActivePhoneSwitch, needDdsChange : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->needDdsChange(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2304
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 2309
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_dds_progressing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v4

    .line 2312
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isNeedSyncDisconnect()Z

    move-result v1

    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    .line 2314
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNeedNetworkFor: ddsProgressing : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needSyncDisconnect : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    :goto_5
    move p1, v4

    .line 2323
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isEimsFixedToSlot1WithSimStates()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isEimsFixedToSlot1WithoutActiveEnabledSubIds()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2324
    :cond_9
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p3, :cond_a

    move p1, v3

    goto :goto_6

    :cond_a
    move p1, v4

    .line 2329
    :cond_b
    :goto_6
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v0, :cond_f

    .line 2330
    const-string v0, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v3, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2331
    const-string v2, "ril.simillegal2"

    const-string v5, "NONE"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2332
    const-string v5, "ril.multisim.standby_active"

    const-string v6, "0;0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2333
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "LOADED"

    .line 2334
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2335
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNeedNetworkFor: Sim2State "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Sim2Illegal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Sim2Active "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    if-eqz p3, :cond_e

    if-ne p3, v3, :cond_d

    .line 2337
    const-string p0, "1;1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_7

    :cond_d
    return v4

    :cond_e
    :goto_7
    return v3

    :cond_f
    return p1
.end method

.method private blacklist isSimApplicationReady(I)Z
    .locals 4

    .line 822
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 828
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 827
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 831
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 832
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimApplicationReady: SIM is ready for slotIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method private synthetic blacklist lambda$new$2(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .locals 1

    .line 705
    new-instance p1, Lcom/android/internal/telephony/data/PhoneSwitcher$5;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$5;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method private synthetic blacklist lambda$onMultiSimConfigChanged$3(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .locals 1

    .line 1172
    new-instance p1, Lcom/android/internal/telephony/data/PhoneSwitcher$11;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$11;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 2062
    const-string p0, "PhoneSwitcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logDataSwitchEvent(III)V
    .locals 2

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data switch state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    invoke-static {p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 2118
    new-instance p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    .line 2119
    iput p2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    .line 2120
    iput p3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    .line 2121
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataSwitch(ILcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)V

    return-void
.end method

.method public static blacklist make(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .locals 2

    .line 543
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    if-nez v0, :cond_1

    .line 546
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    goto :goto_0

    .line 549
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 553
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object p0
.end method

.method private blacklist onDataEnabledChanged()V
    .locals 2

    .line 1213
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setMobileDataSetting()V

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    const-string v0, "user changed data settings during call"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void

    .line 1223
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void
.end method

.method private blacklist onDdsSwitchResponse(Landroid/os/AsyncResult;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2196
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2197
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2198
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v2, :cond_1

    .line 2199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency override result sent = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 2200
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 2204
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->ddsChangeFailedOperation(Landroid/os/AsyncResult;)V

    return-void

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 2208
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->ddsChangeSuccessOperation(I)V

    .line 2210
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2212
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2213
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 2214
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda5;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onImsRadioTechChanged(Landroid/os/AsyncResult;)Z
    .locals 7

    .line 1105
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1108
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1109
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId()I

    move-result v1

    .line 1117
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v4

    .line 1118
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech()I

    move-result p1

    .line 1119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImsRadioTechChanged phoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " old tech : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    .line 1120
    invoke-virtual {v6, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " new tech : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1119
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1123
    iget-object v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v0

    .line 1128
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    if-eq v4, v2, :cond_2

    return v3

    :cond_2
    return v0

    .line 1112
    :cond_3
    :goto_0
    const-string p1, "onImsRadioTechChanged : result is not available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v0
.end method

.method private declared-synchronized blacklist onMultiSimConfigChanged(I)V
    .locals 5

    monitor-enter p0

    .line 1137
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 1139
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 1142
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    add-int/lit8 v1, v0, -0x1

    .line 1145
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt v1, v2, :cond_1

    .line 1146
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 1150
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_4

    .line 1151
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    new-instance v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v2, v1, v0

    .line 1152
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x69

    const/4 v3, 0x0

    .line 1155
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6d

    .line 1157
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1158
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1159
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1163
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegistrationRadioTechMap:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v4, 0x78

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForImsRegistrationChanges(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register handler to receive IMS registration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1171
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1192
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDataSettingsManagerCallbacks:Ljava/util/Map;

    .line 1193
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 1192
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1195
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1196
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1203
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onMultiSimConfigChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private blacklist onNetworkAvailable(ILandroid/net/Network;)V
    .locals 1

    .line 1960
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNetworkAvailable: on subId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1963
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ne p2, p1, :cond_1

    iget-boolean p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1967
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->confirmSwitch(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onValidationDone(IZ)V
    .locals 2

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValidationDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "passed"

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1972
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-eq v0, p1, :cond_1

    goto :goto_3

    :cond_1
    if-nez p2, :cond_3

    .line 1976
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->confirmSwitch(IZ)V

    :cond_4
    :goto_3
    return-void
.end method

.method private blacklist phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I
    .locals 6

    .line 1590
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 1591
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1593
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return p0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 1596
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ltz v2, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, v3, :cond_2

    .line 1598
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v3, v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const/16 v3, 0xc

    .line 1606
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    .line 1607
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 1608
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->getSubIdInValidation()I

    move-result p1

    if-eq v0, p1, :cond_3

    const-string p1, "XMO"

    const-string v2, "SPO"

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 1610
    invoke-static {v5, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 1611
    invoke-static {v4, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 1619
    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v4, p1, :cond_5

    .line 1620
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_4

    return v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private blacklist registerDefaultNetworkChangeCallback(II)V
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mDefaultNetworkCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;

    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    .line 1273
    iput p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    return-void
.end method

.method private blacklist sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1911
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1913
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private blacklist setAutoSelectedDataSubIdInternal(I)V
    .locals 1

    .line 1924
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    if-eq v0, p1, :cond_0

    .line 1925
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1926
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private blacklist setOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 1

    const/4 v0, 0x3

    .line 1794
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->validate(IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void
.end method

.method private blacklist switchPhone(IZ)V
    .locals 3

    .line 1526
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-gtz v0, :cond_0

    .line 1527
    const-string p1, "No phones: unable to switch phone"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 1532
    iget-boolean v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    if-ne v1, p2, :cond_1

    return-void

    .line 1533
    :cond_1
    iput-boolean p2, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    const-string p2, "activate "

    goto :goto_0

    :cond_2
    const-string p2, "deactivate "

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 1536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return-void
.end method

.method private static blacklist switchReasonToString(I)Ljava/lang/String;
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

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2087
    :cond_0
    const-string p0, "AUTO"

    return-object p0

    .line 2086
    :cond_1
    const-string p0, "CBRS"

    return-object p0

    .line 2085
    :cond_2
    const-string p0, "IN_CALL"

    return-object p0

    .line 2084
    :cond_3
    const-string p0, "MANUAL"

    return-object p0

    .line 2083
    :cond_4
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static blacklist switchStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2103
    :cond_0
    const-string p0, "END"

    return-object p0

    .line 2102
    :cond_1
    const-string p0, "START"

    return-object p0

    .line 2101
    :cond_2
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private blacklist updatesIfPhoneInVoiceCallChanged()Z
    .locals 7

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isNotUpdatePhoneIdForSpecificOperators()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 561
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v2, -0x1

    .line 565
    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 566
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 567
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 573
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-eq v2, v0, :cond_4

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneInVoiceCallChanged from phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to phoneId "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private blacklist validate(IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 8

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1812
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    .line 1813
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validate subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needValidation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subIdToValidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAutoSelectedDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPreferredDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 1816
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1813
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t switch data to inactive subId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    if-ne p1, v0, :cond_1

    .line 1822
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1823
    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 1825
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 1830
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 1831
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    .line 1832
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    const/4 v1, 0x0

    .line 1833
    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    :cond_3
    const/16 v1, 0x6e

    .line 1838
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x76

    .line 1839
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, -0x1

    .line 1841
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 1843
    iget-object v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v5

    if-ne v3, v5, :cond_5

    if-ne p1, v0, :cond_4

    .line 1845
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1847
    :cond_4
    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 1851
    :cond_5
    iput p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 1852
    invoke-direct {p0, v3, v4, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 1855
    invoke-direct {p0, v3, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerDefaultNetworkChangeCallback(II)V

    .line 1860
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidationFeatureSupported()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq p1, v1, :cond_6

    const-string p3, "XMO"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 1862
    invoke-static {p1, p3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 1885
    :cond_6
    iput v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 1886
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    .line 1887
    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    .line 1888
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getValidationTimeout(IZ)J

    move-result-wide v4

    .line 1889
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget-boolean v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    iget-object v7, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->validate(IJZLcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;)V

    return-void

    .line 1863
    :cond_7
    :goto_1
    const-string p1, "Restrict validation feature for MNO sub even if mNetworkValidationBeforeSwitchSupported is true"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1870
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    if-ne v3, p1, :cond_8

    .line 1871
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    goto :goto_2

    .line 1873
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setAutoSelectedDataSubIdInternal(I)V

    .line 1876
    :goto_2
    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void
.end method


# virtual methods
.method protected abstract blacklist abortIfDdsIsChanging(Z)Z
.end method

.method protected blacklist activate(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1517
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchPhone(IZ)V

    return-void
.end method

.method protected abstract blacklist ddsChangeFailedOperation(Landroid/os/AsyncResult;)V
.end method

.method protected abstract blacklist ddsChangeSuccessOperation(I)V
.end method

.method protected blacklist deactivate(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1521
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchPhone(IZ)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 2149
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2150
    const-string p2, "PhoneSwitcher:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 p2, 0x0

    move v7, p2

    .line 2153
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v7, v2, :cond_1

    .line 2154
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object v2, v2, v7

    .line 2155
    iget-wide v3, v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneId("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") active="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lastRequest="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    iget-wide v2, v2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "never"

    goto :goto_1

    .line 2159
    :cond_0
    const-string v9, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2156
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreferredDataPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreferredDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDataPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 2165
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v3

    .line 2164
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrimaryDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoSelectedDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p2, v1, :cond_2

    .line 2171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRegisteredForImsRadioTechChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mIsRegisteredForImsRadioTechChange:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2174
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingSwitchNeedValidation="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxDataAttachModemCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveModemCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneIdInVoiceCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDdsSwitchFailure="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSwitchPreferredDataReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 2180
    invoke-static {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->switchReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2179
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2183
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2185
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method protected abstract blacklist evaluateDiffDetectedWithRequestOverride(Z)Z
.end method

.method protected blacklist findPhoneById(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 1726
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1729
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getActiveDataSubId()I
    .locals 0

    .line 2138
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p0

    return p0
.end method

.method public blacklist getAutoDataSubId()I
    .locals 0

    .line 2245
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    return p0
.end method

.method public blacklist getAutoSelectedDataSubId()I
    .locals 0

    .line 2145
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    return p0
.end method

.method protected blacklist getFallbackDataPhoneIdForInternetRequests()I
    .locals 3

    .line 1671
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 1674
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isMultiSimPhoneSwitcher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1675
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setFallbackSubIdWithRequestSubId(I)I

    move-result v0

    .line 1678
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1679
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_3

    .line 1680
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getJPNDataEnabled(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getJPNRoamingEnabled(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected abstract blacklist getLastSentPhoneIdForDataCross()I
.end method

.method public blacklist getPreferredDataPhoneId()I
    .locals 0

    .line 2045
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return p0
.end method

.method public blacklist getRequestOverridePhoneId()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method protected blacklist getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I
    .locals 0

    if-nez p1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 1632
    :cond_0
    instance-of p0, p1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz p0, :cond_1

    .line 1633
    check-cast p1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {p1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected blacklist getTm()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1291
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 851
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/16 v4, 0x74

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 902
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 903
    const-string p1, "EVENT_IMS_RADIO_TECH_CHANGED but parameter is not available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 906
    :cond_0
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onImsRadioTechChanged(Landroid/os/AsyncResult;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 913
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatesIfPhoneInVoiceCallChanged()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 914
    :cond_2
    const-string p1, "Ims radio tech changed"

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void

    .line 1078
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1079
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1081
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PROCESS_SIM_STATE_CHANGE: skip processing due to invalid slotId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v1, 0xa

    if-ne v1, p1, :cond_12

    .line 1085
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1087
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isSimApplicationReady(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1088
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    .line 1092
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void

    .line 989
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 990
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 991
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onNetworkAvailable(ILandroid/net/Network;)V

    return-void

    .line 1073
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1074
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onMultiSimConfigChanged(I)V

    return-void

    .line 1067
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Emergency override removed - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1068
    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    .line 1069
    const-string p1, "emer_rm_override_dds"

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 1025
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v0, :cond_6

    .line 1030
    iget v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iget v2, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    if-eq v1, v2, :cond_5

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergency override requested for phone id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when there is already an override in place for phone id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->isCallbackAvailable()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1036
    iget-object p0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 1040
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->isCallbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1047
    :cond_6
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new emergency override - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1052
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1054
    sget v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->DEFAULT_DATA_OVERRIDE_TIMEOUT_MS:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    const-string p1, "emer_override_dds"

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1060
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    return-void

    .line 1000
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1001
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-gt v0, p1, :cond_7

    goto/16 :goto_3

    :cond_7
    move v0, v5

    .line 1006
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v5, v1, :cond_9

    .line 1007
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v1, v1, v5

    if-eq v1, v3, :cond_8

    move v0, v6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1015
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_a

    goto :goto_1

    .line 1019
    :cond_a
    const-string v0, "EVENT_MODEM_COMMAND_RETRY: skip retry as DDS sub changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1020
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    .line 1016
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_MODEM_COMMAND_RETRY: resend modem command on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return-void

    .line 995
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 996
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onDdsSwitchResponse(Landroid/os/AsyncResult;)V

    return-void

    .line 983
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 984
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v6, :cond_c

    move v5, v6

    .line 985
    :cond_c
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onValidationDone(IZ)V

    return-void

    .line 927
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatesIfPhoneInVoiceCallChanged()Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_3

    .line 932
    :cond_d
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-eq p1, v3, :cond_e

    rsub-int/lit8 p1, p1, 0x1

    const-string v0, "XMO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 933
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stop validation as call started in non-CBRS slot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 935
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    .line 936
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    .line 937
    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    const/16 p1, 0x76

    .line 938
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 p1, 0x6e

    .line 939
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iput v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchSubId:I

    .line 941
    iput-boolean v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPendingSwitchNeedValidation:Z

    .line 946
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result p1

    if-nez p1, :cond_10

    move p1, v5

    .line 947
    :goto_2
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p1, v0, :cond_10

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 950
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 958
    :cond_10
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz p1, :cond_11

    iget-boolean p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPendingOriginatingCall:Z

    if-eqz p1, :cond_11

    .line 959
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-ne p1, v3, :cond_11

    .line 962
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    sget v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->ECBM_DEFAULT_DATA_SWITCH_BASE_TIME_MS:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 968
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iput-boolean v5, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPendingOriginatingCall:Z

    .line 973
    :cond_11
    const-string p1, "precise call state changed"

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    .line 975
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result p1

    if-nez p1, :cond_12

    .line 977
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_12
    :goto_3
    return-void

    .line 892
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updateHalCommandToUse()V

    .line 893
    const-string p1, "EVENT_RADIO_ON"

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 884
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 885
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v6, :cond_13

    move v5, v6

    .line 886
    :cond_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    .line 888
    invoke-direct {p0, v0, v5, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void

    .line 879
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return-void

    .line 862
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isInEmergencyCallbackMode()Z

    move-result p1

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v0, :cond_15

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Emergency override - ecbm status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    .line 867
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iput-boolean v6, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mRequiresEcmFinish:Z

    goto :goto_4

    .line 869
    :cond_14
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget-boolean p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mRequiresEcmFinish:Z

    if-eqz p1, :cond_15

    .line 871
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 875
    :cond_15
    :goto_4
    const-string p1, "emergencyToggle"

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 853
    :pswitch_f
    const-string p1, "subscription changed"

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 857
    :pswitch_10
    const-string p1, "primary data sub changed"

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract blacklist handlePreferredDataPhoneIdUpdate()V
.end method

.method protected abstract blacklist handleRilCommands(Landroid/os/Message;I)V
.end method

.method protected blacklist isActiveSubId(I)Z
    .locals 0

    .line 1639
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1640
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isAnyVoiceCallActiveOnDevice()Z
    .locals 3

    .line 2190
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2191
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method blacklist isEmergencyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    const/16 p0, 0xa

    .line 1768
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method protected blacklist isMultiSimPhoneSwitcher()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isNeedSyncDisconnect()Z
    .locals 0

    .line 2250
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNeedSyncDisconnect:Z

    return p0
.end method

.method protected abstract blacklist isNotUpdatePhoneIdForSpecificOperators()Z
.end method

.method protected blacklist isPhoneActive(I)Z
    .locals 1

    .line 1773
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1775
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    return p0
.end method

.method protected blacklist isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2007
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2008
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 2014
    :cond_1
    const-string v2, "KOR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 2016
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2017
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2018
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    return v3

    .line 2022
    :cond_4
    const-string v2, "XMO"

    const-string v4, "SPO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 2023
    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 2035
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_7

    .line 2036
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_8

    :cond_7
    return v3

    :cond_8
    return p0

    .line 2024
    :cond_9
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2025
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2026
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    return p0

    :cond_b
    :goto_2
    return v3

    :cond_c
    :goto_3
    return p0
.end method

.method protected blacklist isSetMobileDataSettingAllowedForDCM()Z
    .locals 1

    .line 2284
    const-string p0, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 2053
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 2054
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist needDdsChange(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist notifyPreferredDataSubIdChanged()V
    .locals 3

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "telephony_registry"

    .line 2129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPreferredDataSubIdChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 2131
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyRegistryManager;->notifyActiveDataSubIdChanged(I)V

    return-void
.end method

.method protected blacklist onEvaluate(ZLjava/lang/String;)Z
    .locals 11

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->abortIfDdsIsChanging(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1313
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v2

    .line 1316
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    .line 1317
    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    const-string v6, "->"

    if-eq v1, v5, :cond_2

    .line 1318
    const-string v5, " mPrimaryDataSubId "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1320
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 1321
    iput v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 1323
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setCommandReasonAndAutoDataSubId()V

    :cond_2
    move v1, v2

    move v5, v1

    move v7, v5

    .line 1333
    :goto_1
    iget v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    const-string v9, " phone["

    if-ge v1, v8, :cond_7

    .line 1334
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v8

    .line 1336
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move v5, v4

    .line 1338
    :cond_3
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1339
    invoke-virtual {v10, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move v7, v4

    .line 1344
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v10, v10, v1

    if-eq v8, v10, :cond_6

    .line 1345
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1347
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    iget-object v9, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v10, v9, v1

    if-ne p1, v10, :cond_5

    const p1, 0x7fffffff

    .line 1348
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 1350
    :cond_5
    aput v8, v9, v1

    .line 1360
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setCommandReason(I)V

    .line 1361
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->notifySubscriptionsMappingChanged()V

    move p1, v4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1365
    :cond_7
    const-string v1, "KOR"

    if-nez v5, :cond_9

    .line 1371
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v8

    .line 1370
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1372
    const-string p2, "skip transitionToEmergencyPhone without sub id"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return p1

    .line 1375
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->transitionToEmergencyPhone()V

    goto :goto_2

    :cond_9
    if-nez v7, :cond_b

    .line 1385
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v8

    .line 1384
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1386
    const-string p2, "skip transitionToEmergencyPhone even with disabled sub id"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    return p1

    .line 1389
    :cond_a
    const-string v1, "Found an active but not enabled subscription."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->transitionToEmergencyPhone()V

    goto :goto_2

    .line 1393
    :cond_b
    const-string v1, "Found an active enabled subscription"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1403
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOldPreferredDataPhoneId:I

    .line 1407
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v1

    if-eqz v5, :cond_c

    if-eqz v7, :cond_c

    .line 1419
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatePreferredDataPhoneId(Ljava/lang/String;)V

    .line 1427
    :cond_c
    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOldPreferredDataPhoneId:I

    iget v7, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v5, v7, :cond_d

    .line 1428
    const-string p1, " preferred data phoneId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOldPreferredDataPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1430
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move p1, v4

    goto :goto_3

    .line 1432
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v5

    if-eq v1, v5, :cond_e

    .line 1433
    const-string v1, "SIM refresh, notify dds change"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 1438
    :cond_e
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateDiffDetectedWithRequestOverride(Z)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1443
    const-string v1, "EVENT_RADIO_ON"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1444
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluating due to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1445
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    if-ne p2, v3, :cond_11

    .line 1449
    :goto_4
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, p2, :cond_10

    .line 1450
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object p2, p2, v2

    iput-boolean v4, p2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1452
    :cond_10
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    return p1

    .line 1454
    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ne v0, v1, :cond_12

    move v0, v2

    .line 1460
    :goto_5
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_18

    .line 1461
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1465
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v3, :cond_17

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1471
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v3

    if-ne v3, v1, :cond_15

    goto :goto_6

    .line 1473
    :cond_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_6

    .line 1474
    :cond_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-lt v3, v4, :cond_14

    .line 1479
    :cond_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1481
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1482
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_18
    sget-boolean v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->VDBG:Z

    if-eqz v0, :cond_1a

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDataSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoSelectedDataSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1489
    :goto_7
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_19

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] using sub["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1492
    :cond_19
    const-string v0, " newActivePhones:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_8
    if-ge v1, v0, :cond_1a

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    move v0, v2

    .line 1496
    :goto_9
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_1c

    .line 1497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1498
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->deactivate(I)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1503
    :cond_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    if-ge v2, v0, :cond_1d

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1504
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->activate(I)V

    goto :goto_a

    :cond_1d
    return p1
.end method

.method public blacklist onRadioCapChanged(I)V
    .locals 1

    .line 1544
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x6a

    .line 1545
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1546
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 1547
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onReleaseNetwork(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1267
    const-string v0, "netReleased"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public blacklist onRequestNetwork(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 1

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    .line 1251
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    .line 1250
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updateDataConfig(Lcom/android/internal/telephony/data/DataConfigManager;)V

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    const/4 p1, 0x1

    .line 1256
    const-string v0, "netRequest"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public blacklist overrideDefaultDataForEmergency(IILjava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1569
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x73

    .line 1570
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1571
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;-><init>()V

    .line 1572
    iput p1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    mul-int/lit16 p2, p2, 0x3e8

    .line 1573
    iput p2, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    .line 1574
    iput-object p3, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 1575
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1576
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist processAutoDataSwitchSettingChanged()V
    .locals 2

    .line 2265
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setMobileDataSetting()V

    :cond_0
    const/4 v0, 0x0

    .line 2271
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2272
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatesIfPhoneInVoiceCallChanged()Z

    .line 2275
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2277
    const-string v0, "user changed auto data switch settings during call"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->evaluateIfImmediateDataSwitchIsNeeded(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist sendRilCommands(I)V
    .locals 2

    .line 1580
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilCommands: skip dds switch due to invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    .line 1585
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1586
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->handleRilCommands(Landroid/os/Message;I)V

    return-void
.end method

.method protected abstract blacklist setCommandReason(I)V
.end method

.method protected abstract blacklist setCommandReasonAndAutoDataSubId()V
.end method

.method protected abstract blacklist setFallbackSubIdWithRequestSubId(I)I
.end method

.method protected abstract blacklist setIsDataEnabled()Z
.end method

.method protected abstract blacklist setMobileDataSetting()V
.end method

.method protected abstract blacklist setPreferredDataReasonEmergency()V
.end method

.method protected abstract blacklist setPreferredDataReasonNoCard()V
.end method

.method public declared-synchronized blacklist shouldApplyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .locals 5

    monitor-enter p0

    .line 1734
    :try_start_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 1736
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 1739
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1740
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isEmergencyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1747
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1748
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isEmergencyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_4

    .line 1757
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-ne p2, v0, :cond_3

    move v1, v4

    :cond_3
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isShouldApplyForChipsetDependency(ZLcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 1760
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v0

    if-ne p2, v0, :cond_5

    move v1, v4

    .line 1764
    :cond_5
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isShouldApplyForChipsetDependency(ZLcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 1744
    :cond_6
    :goto_0
    :try_start_3
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isShouldApplyForChipsetDependency(ZLcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method protected blacklist shouldSwitchDataDueToInCall()Z
    .locals 2

    .line 1695
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1696
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPhoneBySubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1698
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist transitionToEmergencyPhone()V
    .locals 2

    .line 1704
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-gtz v0, :cond_0

    .line 1705
    const-string v0, "No phones: unable to reset preferred phone for emergency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void

    .line 1709
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eqz v0, :cond_1

    .line 1710
    const-string v0, "No active subscriptions: resetting preferred phone to 0 for emergency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1711
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1712
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setPreferredDataReasonNoCard()V

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    .line 1717
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    :cond_2
    return-void
.end method

.method public blacklist trySetOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 2

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try set opportunistic data subscription to subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 1998
    const-string v1, " with "

    goto :goto_0

    :cond_0
    const-string v1, " without "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1997
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    const/16 v0, 0x6b

    .line 1999
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2000
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSwitcherCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist updateHalCommandToUse()V
    .locals 1

    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2041
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    return-void
.end method

.method protected blacklist updatePreferredDataPhoneId(Ljava/lang/String;)V
    .locals 2

    .line 1647
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setIsDataEnabled()Z

    move-result v0

    .line 1648
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePreferredDataPhoneId: preferred data overridden for emergency. phoneId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 1655
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 p1, 0x0

    .line 1656
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    .line 1657
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->setPreferredDataReasonEmergency()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1659
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->updatePreferredDataPhoneIdWithinDataEnable(Ljava/lang/String;)V

    goto :goto_0

    .line 1661
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->handlePreferredDataPhoneIdUpdate()V

    .line 1664
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    return-void
.end method

.method protected abstract blacklist updatePreferredDataPhoneIdWithinDataEnable(Ljava/lang/String;)V
.end method
