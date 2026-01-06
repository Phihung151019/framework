.class public Lcom/android/internal/telephony/data/AutoDataSwitchController;
.super Landroid/os/Handler;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;,
        Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;,
        Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;,
        Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;
    }
.end annotation


# static fields
.field public static final blacklist EVALUATION_REASON_ADS_SETTINGS_CHANGED:I = 0x9

.field public static final blacklist EVALUATION_REASON_DATA_SETTINGS_CHANGED:I = 0x5

.field public static final blacklist EVALUATION_REASON_DEFAULT_NETWORK_CHANGED:I = 0x4

.field public static final blacklist EVALUATION_REASON_DISPLAY_INFO_CHANGED:I = 0x2

.field public static final blacklist EVALUATION_REASON_REGISTRATION_STATE_CHANGED:I = 0x1

.field public static final blacklist EVALUATION_REASON_RETRY_VALIDATION:I = 0x6

.field public static final blacklist EVALUATION_REASON_SIGNAL_STRENGTH_CHANGED:I = 0x3

.field public static final blacklist EVALUATION_REASON_SIM_LOADED:I = 0x7

.field public static final blacklist EVALUATION_REASON_VOICE_CALL_END:I = 0x8

.field private static final blacklist RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

.field private static final blacklist STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mAutoDataSettingEnabled:Z

.field private blacklist mAutoDataSwitchValidationMaxRetry:I

.field private blacklist mAutoSwitchValidationFailedCount:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultNetworkIsOnNonCellular:Z

.field private blacklist mDisplayedNotification:Z

.field private final blacklist mEventsToAlarmListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private final blacklist mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

.field private blacklist mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

.field private blacklist mRequirePingTestBeforeSwitch:Z

.field private final blacklist mScheduledEventsToExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScoreTolerance:I

.field private blacklist mSelectedTargetPhoneId:I

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$N7MAQCv7FXZal5NWBMy_pBIvCeA(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->switchTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZK7kHF8vUj4xB3UFIedEbuAMfuI(Lcom/android/internal/telephony/data/AutoDataSwitchController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->lambda$scheduleEventWithTimer$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisInService(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isInService(II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    .line 193
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 194
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    .line 201
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;)V
    .locals 2

    .line 410
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p2, 0x0

    .line 241
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    .line 243
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDisplayedNotification:Z

    const/4 v0, -0x1

    .line 249
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    const/4 v1, 0x1

    .line 254
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    .line 256
    iput p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    .line 268
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    .line 412
    sput-object p4, Lcom/android/internal/telephony/data/AutoDataSwitchController;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 413
    iput-object p5, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    .line 414
    const-class p4, Landroid/app/AlarmManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 415
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    .line 416
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 418
    iput-object p3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 419
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->readDeviceResourceConfig()V

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length p1, p1

    .line 421
    new-array p3, p1, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    iput-object p3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    :goto_0
    if-ge p2, p1, :cond_0

    .line 425
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->registerAllEventsForPhone(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isAutoDataSettingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSettingEnabled:Z

    .line 430
    new-instance p1, Lcom/android/internal/telephony/SettingsObserver;

    iget-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 431
    const-string p0, "data_preferred_mode_during_calling"

    .line 432
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x7

    .line 431
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    return-void
.end method

.method private blacklist autoDataSwitchSettingChanged()V
    .locals 2

    .line 1322
    const-string v0, "user changed auto data switch settings"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isAutoDataSettingEnabled()Z

    move-result v0

    .line 1324
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSettingEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1325
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSettingEnabled:Z

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->processAutoDataSwitchSettingChanged()V

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    .line 1330
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_1
    return-void
.end method

.method private blacklist cancelAnyPendingSwitch()V
    .locals 4

    const/4 v0, -0x1

    .line 1156
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 1157
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->resetFailedCount()V

    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 1162
    :cond_0
    const-string v0, "cancelAnyPendingSwitch: EVENT_STABILITY_CHECK_PASSED listener is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    .line 1164
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireCancelAnyPendingAutoSwitchValidation()V

    return-void
.end method

.method private blacklist evaluateAnyCandidateToUse(ILjava/lang/StringBuilder;)Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;
    .locals 10

    .line 930
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 932
    new-instance v1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    if-nez v0, :cond_0

    .line 936
    const-string p0, ", no candidate as no sim loaded"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 940
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    const-string p0, ", no candidate as user disabled mobile data"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 945
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    if-eqz v0, :cond_2

    .line 946
    const-string p0, ", no candidate as default network is active"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on non-cellular transport"

    .line 947
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 952
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isRatSignalStrengthBasedSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v0

    .line 953
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isHomeService(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 954
    const-string p0, ", no candidate as default phone is in HOME service"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v0, p1

    move v2, v4

    .line 959
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v6, v3

    if-ge v4, v6, :cond_a

    if-ne v4, p1, :cond_4

    goto/16 :goto_2

    .line 963
    :cond_4
    aget-object v6, v3, v4

    .line 964
    aget-object v3, v3, p1

    .line 965
    invoke-static {v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v3

    .line 966
    iget-object v7, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v7, v7, v4

    .line 967
    invoke-static {v7}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v7

    .line 968
    const-string v8, ", found phone "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", default is "

    .line 970
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 971
    iget v8, v7, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    iget v9, v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    if-le v8, v9, :cond_5

    .line 972
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto :goto_1

    .line 973
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isRatSignalStrengthBasedSwitchEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    if-ne v3, v8, :cond_7

    if-ne v7, v8, :cond_7

    .line 978
    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)I

    move-result v3

    .line 979
    invoke-static {v6, v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)I

    move-result v6

    sub-int v7, v6, v3

    .line 980
    iget v8, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    if-le v7, v8, :cond_6

    .line 981
    const-string v2, " with "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versus candidate higher score "

    .line 982
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_1

    .line 986
    :cond_6
    const-string v7, ", candidate\'s score "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t justify the switch given the current "

    .line 987
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_9

    .line 993
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getInternetEvaluation(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v3

    .line 995
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v6

    if-nez v6, :cond_8

    .line 996
    new-instance p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    invoke-direct {p1, v4, v2, p0, v5}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    return-object p1

    .line 999
    :cond_8
    const-string v6, ", but candidate\'s data is not allowed "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1004
    :cond_a
    const-string p0, ", found no qualified candidate."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public static blacklist evaluationReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 1118
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

    .line 1116
    :pswitch_0
    const-string p0, "ADS_SETTINGS_CHANGED"

    return-object p0

    .line 1114
    :pswitch_1
    const-string p0, "VOICE_CALL_END"

    return-object p0

    .line 1113
    :pswitch_2
    const-string p0, "SIM_LOADED"

    return-object p0

    .line 1112
    :pswitch_3
    const-string p0, "RETRY_VALIDATION"

    return-object p0

    .line 1111
    :pswitch_4
    const-string p0, "DATA_SETTINGS_CHANGED"

    return-object p0

    .line 1110
    :pswitch_5
    const-string p0, "DEFAULT_NETWORK_CHANGED"

    return-object p0

    .line 1109
    :pswitch_6
    const-string p0, "SIGNAL_STRENGTH_CHANGED"

    return-object p0

    .line 1108
    :pswitch_7
    const-string p0, "DISPLAY_INFO_CHANGED"

    return-object p0

    .line 1107
    :pswitch_8
    const-string p0, "REGISTRATION_STATE_CHANGED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private blacklist getHigherScoreCandidatePhoneId()I
    .locals 7

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 713
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v2

    .line 712
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 714
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v2, v2, v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)I

    move-result v2

    const/4 v3, 0x0

    .line 716
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 718
    :cond_0
    aget-object v4, v4, v3

    .line 720
    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 723
    :cond_1
    invoke-static {v4, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)I

    move-result v4

    sub-int v5, v4, v2

    .line 724
    iget v6, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    if-gt v5, v6, :cond_3

    if-lt v4, v2, :cond_2

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v3

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getInternetEvaluation(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/DataEvaluation;
    .locals 3

    .line 1015
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 1016
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 1018
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    .line 1020
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1023
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1024
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    sget-object v2, Lcom/android/internal/telephony/data/AutoDataSwitchController;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1023
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isActiveModemPhone(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 1253
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length p0, p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isActiveSubId(I)Z
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isAnyDialingVoiceCall()Z
    .locals 6

    .line 1342
    const-string v0, "HKG"

    const-string v1, "TPE"

    const-string v2, "CHN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1346
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1347
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isPhoneInDialingVoiceCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isPhoneInDialingVoiceCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static blacklist isHomeService(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isInService(II)Z
    .locals 5

    .line 635
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 638
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DSG"

    .line 639
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DSH"

    .line 640
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 642
    :goto_1
    const-string v4, "USC"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 643
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 644
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz v3, :cond_3

    .line 647
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    return v2

    :cond_3
    if-eq p0, v2, :cond_5

    const/4 p1, 0x5

    if-ne p0, p1, :cond_4

    goto :goto_3

    :cond_4
    return v1

    :cond_5
    :goto_3
    return v2
.end method

.method private blacklist isPhoneInDialingVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1358
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1359
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 1363
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_3

    .line 1364
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :cond_4
    :goto_1
    return p0
.end method

.method private blacklist isRatSignalStrengthBasedSwitchEnabled()Z
    .locals 5

    .line 1032
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    if-ltz p0, :cond_0

    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v0, 0x1

    .line 1033
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$scheduleEventWithTimer$0(I)V
    .locals 0

    .line 1078
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1272
    const-string p0, "ADSC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1280
    const-string p0, "ADSC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 1289
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDisplayInfoChanged(I)V
    .locals 3

    .line 669
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v1, v1, p1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmDisplayInfo(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Landroid/telephony/TelephonyDisplayInfo;)V

    .line 674
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getHigherScoreCandidatePhoneId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    if-eq v1, v2, :cond_0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChanged: phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_0
    return-void

    .line 679
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " upon its display info changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onEvaluateAutoDataSwitch(I)V
    .locals 14

    .line 763
    sget-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    .line 766
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v2

    .line 769
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-eqz v5, :cond_16

    const v6, 0x7fffffff

    if-ne v2, v6, :cond_2

    goto/16 :goto_6

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    .line 780
    iget-boolean v7, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSettingEnabled:Z

    if-nez v7, :cond_5

    const/16 v1, 0x9

    if-ne p1, v1, :cond_4

    if-eq v0, v2, :cond_3

    .line 783
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p1, v6, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireImmediatelySwitchToPhone(II)V

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Immediate auto data switch recovery to defaultDataPhoneId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " due to EVALUATION_REASON_ADS_SETTINGS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 788
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    return-void

    .line 790
    :cond_4
    const-string p1, "auto data switch setting disabled. so do nothing"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void

    .line 797
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v7}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v7

    if-nez v7, :cond_15

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isAnyDialingVoiceCall()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_5

    .line 803
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onEvaluateAutoDataSwitch:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 804
    const-string v8, " defaultPhoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " preferredPhoneId: "

    .line 805
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", reason: "

    .line 806
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluationReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    if-ne v0, v2, :cond_8

    .line 809
    invoke-direct {p0, v2, v7}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAnyCandidateToUse(ILjava/lang/StringBuilder;)Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    move-result-object v0

    .line 810
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 811
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v1

    if-eq v1, p1, :cond_7

    .line 812
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 813
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result p1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetswitchType(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->startStabilityCheck(IIZ)V

    return-void

    .line 815
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    return-void

    .line 819
    :cond_8
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 820
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_4

    .line 827
    :cond_9
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v5

    const/4 v9, 0x5

    if-nez v5, :cond_a

    .line 828
    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 829
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p1, v6, v9}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireImmediatelySwitchToPhone(II)V

    .line 831
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    .line 832
    const-string p1, ", immediately back to default as user turns off default"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void

    .line 835
    :cond_a
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getInternetEvaluation(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {v8}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object v8

    .line 836
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/data/DataEvaluation;->isSubsetOf([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 837
    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 838
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p1, v6, v9}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireImmediatelySwitchToPhone(II)V

    .line 840
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    .line 841
    const-string p1, ", immediately back to default because backup "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 841
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void

    .line 851
    :cond_b
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    if-eqz p1, :cond_c

    .line 852
    const-string p1, ", back to default as default network"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is active on nonCellular transport"

    .line 853
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    move v1, v3

    move v3, p1

    goto/16 :goto_3

    .line 857
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p1, p1, v2

    .line 858
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object p1

    .line 859
    iget-object v5, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v5, v5, v0

    .line 860
    invoke-static {v5}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v5

    .line 862
    iget v8, v5, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    sget-object v9, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    iget v9, v9, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    if-le v8, v9, :cond_d

    move v9, v3

    goto :goto_1

    :cond_d
    move v9, v1

    .line 865
    :goto_1
    iget v10, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    const-string v11, " , backup phone: "

    const-string v12, " : "

    if-ge v8, v10, :cond_f

    .line 866
    const-string v4, ", back to default phone "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_e

    .line 872
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    if-eqz p1, :cond_e

    move p1, v3

    goto :goto_2

    :cond_e
    move p1, v1

    :goto_2
    move v13, v3

    move v3, v1

    move v1, v13

    goto :goto_3

    :cond_f
    if-ne v10, v8, :cond_12

    .line 874
    const-string v8, ", default phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_11

    .line 880
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isRatSignalStrengthBasedSwitchEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    if-ne v5, v4, :cond_10

    if-ne p1, v4, :cond_10

    .line 883
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p1, p1, v2

    .line 884
    invoke-static {p1, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)I

    move-result p1

    .line 885
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v4, v4, v0

    .line 886
    invoke-static {v4, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)I

    move-result v0

    if-lt p1, v0, :cond_12

    .line 888
    const-string v1, ", back to default for higher or equal score "

    .line 889
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " versus current "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    move v1, v3

    goto :goto_3

    .line 898
    :cond_10
    const-string p1, ", back to default as it\'s usable. "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    goto :goto_2

    .line 903
    :cond_11
    const-string p1, ", back to default as both phones are unusable."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    move v1, v3

    move v3, v4

    goto :goto_3

    :cond_12
    move p1, v3

    move v3, v1

    :goto_3
    if-eqz v1, :cond_13

    .line 912
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 913
    iput v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 914
    invoke-direct {p0, v6, v3, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->startStabilityCheck(IIZ)V

    return-void

    .line 917
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    return-void

    .line 821
    :cond_14
    :goto_4
    const-string p1, " Unexpected null phone "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as the current active data phone"

    .line 822
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void

    .line 798
    :cond_15
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there is active voice call, skip for reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluationReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void

    .line 772
    :cond_16
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvaluateAutoDataSwitch: cannot find proper value associated with default data subscription "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onServiceStateChanged(I)V
    .locals 5

    .line 604
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 605
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v1

    .line 607
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 608
    invoke-virtual {v0, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v2, v2, p1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)V

    .line 614
    invoke-static {v1, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isInService(II)Z

    move-result v2

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isInService(II)Z

    move-result v4

    if-ne v2, v4, :cond_0

    .line 615
    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isHomeService(I)Z

    move-result v2

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isHomeService(I)Z

    move-result v4

    if-eq v2, v4, :cond_1

    .line 616
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged: phone "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {v0}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_1
    return-void

    .line 624
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " upon its registration state changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSignalStrengthChanged(I)V
    .locals 4

    .line 688
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 689
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmSignalStrength(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 693
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v2, v2, p1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmSignalStrength(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Landroid/telephony/SignalStrength;)V

    .line 694
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getHigherScoreCandidatePhoneId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    if-eq v2, v3, :cond_0

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthChanged: phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_0
    return-void

    .line 701
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " upon its signal strength changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSubscriptionsChanged()V
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v1, 0x1

    .line 467
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 466
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 468
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 469
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 470
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 472
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 474
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 475
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 477
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->registerAllEventsForPhone(I)V

    :goto_1
    move v3, v1

    goto :goto_2

    .line 479
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 481
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->unregisterAllEventsForPhone(I)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscriptionChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private blacklist readDeviceResourceConfig()V
    .locals 7

    .line 537
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchScoreTolerance()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    .line 540
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isPingTestBeforeAutoDataSwitchRequired()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    .line 541
    sget-object v1, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilityStabilityTimeThreshold()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 541
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 543
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 544
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchPerformanceStabilityTimeThreshold()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 543
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 545
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 546
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilitySwitchbackStabilityTimeThreshold()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilitySwitchbackStabilityTimeThreshold()J

    move-result-wide v3

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilityStabilityTimeThreshold()J

    move-result-wide v3

    .line 546
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 545
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchValidationMaxRetry()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    return-void
.end method

.method private blacklist registerAllEventsForPhone(I)V
    .locals 4

    .line 493
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    new-instance v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    aput-object v2, v1, p1

    .line 504
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 504
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p0, p0, p1

    invoke-static {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Z)V

    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when register all events"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist scheduleEventWithTimer(ILjava/lang/Object;J)V
    .locals 8

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/AutoDataSwitchController;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AlarmManager$OnAlarmListener;

    .line 1082
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-wide v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    cmp-long p2, p3, v0

    if-gtz p2, :cond_0

    .line 1089
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long v3, p1, p3

    const-string v5, "ADSC"

    const/4 v2, 0x3

    move-object v7, p0

    .line 1096
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist startStabilityCheck(IIZ)V
    .locals 7

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v1, 0x5

    .line 1048
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v4, v5, v6}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    .line 1053
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v2

    const-wide/16 v3, -0x1

    if-ne v2, p1, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z

    move-result v2

    if-ne v2, p3, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetswitchType(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v2

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v3

    goto :goto_1

    .line 1056
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    invoke-direct {v0, p1, p2, p3, v6}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    .line 1060
    sget-object p1, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1061
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->scheduleEventWithTimer(ILjava/lang/Object;J)V

    .line 1063
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStabilityCheck: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, p1, v3

    if-eqz p1, :cond_2

    .line 1064
    const-string p1, "scheduling "

    goto :goto_2

    :cond_2
    const-string p1, "already scheduled "

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist switchTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1263
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

    .line 1262
    :cond_0
    const-string p0, "AVAILABILITY_SWITCH_BACK"

    return-object p0

    .line 1261
    :cond_1
    const-string p0, "PERFORMANCE_SWITCH"

    return-object p0

    .line 1260
    :cond_2
    const-string p0, "AVAILABILITY_SWITCH"

    return-object p0
.end method

.method private blacklist unregisterAllEventsForPhone(I)V
    .locals 2

    .line 517
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 526
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p0, p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Z)V

    return-void

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected out of bound phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when unregister all events"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist displayAutoDataSwitchNotification(IZ)V
    .locals 6

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1179
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDisplayedNotification:Z

    const/4 v2, 0x1

    const-string v3, "auto_data_switch"

    if-eqz v1, :cond_1

    .line 1181
    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 1189
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1190
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1191
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 1196
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayAutoDataSwitchNotification: display for subId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    .line 1199
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1202
    const-string v5, ":settings:fragment_args_key"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v5, "android.provider.extra.SUB_ID"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1205
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4000000

    invoke-static {v4, p1, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1208
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    .line 1209
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const v4, 0x1040212

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1211
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const v4, 0x1040211

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1214
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1215
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1216
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const v4, 0x108008a

    .line 1217
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    .line 1218
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string v4, "mobileDataAlertNew"

    .line 1220
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1221
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1222
    invoke-virtual {p2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1223
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 1224
    invoke-virtual {v0, v3, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1226
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDisplayedNotification:Z

    return-void

    .line 1192
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayAutoDataSwitchNotification: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " unexpected subInfo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1300
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1301
    const-string p2, "AutoDataSwitchController:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScoreTolerance="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoDataSwitchValidationMaxRetry="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAutoSwitchValidationFailedCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequirePingTestBeforeDataSwitch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    const-string p2, "STABILITY_CHECK_TIMER_MAP:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    sget-object p2, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSelectedTargetPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1312
    iget-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 1313
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1316
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateAutoDataSwitch(I)V
    .locals 5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 741
    sget-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    .line 740
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    shl-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 747
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 750
    :cond_2
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;-><init>(ILcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->scheduleEventWithTimer(ILjava/lang/Object;J)V

    return-void
.end method

.method public blacklist evaluateRetryOnValidationFailed()V
    .locals 2

    .line 1238
    iget v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x6

    .line 1239
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    .line 1240
    iget v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    return-void

    .line 1242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateRetryOnValidationFailed: reached max auto switch retry count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1244
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void

    .line 594
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->autoDataSwitchSettingChanged()V

    return-void

    .line 592
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onSubscriptionsChanged()V

    return-void

    .line 582
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 583
    instance-of v1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    .line 584
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v1

    .line 585
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z

    move-result p1

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "require validation on phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 587
    const-string v3, ""

    goto :goto_0

    :cond_0
    const-string v3, " no"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " need to pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireValidation(IZ)V

    return-void

    .line 570
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 571
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onSignalStrengthChanged(I)V

    return-void

    .line 575
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 576
    instance-of v1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->-$$Nest$fgetevaluateReason(Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onEvaluateAutoDataSwitch(I)V

    :cond_1
    return-void

    .line 565
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 566
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 567
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onDisplayInfoChanged(I)V

    return-void

    .line 560
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 561
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onServiceStateChanged(I)V

    return-void

    nop

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

.method protected blacklist isAutoDataSettingEnabled()Z
    .locals 2

    .line 1335
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_preferred_mode_during_calling"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public blacklist notifySubscriptionsMappingChanged()V
    .locals 1

    const/4 v0, 0x6

    .line 458
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized blacklist onMultiSimConfigChanged(I)V
    .locals 2

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 443
    monitor-exit p0

    return-void

    :cond_0
    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 446
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->unregisterAllEventsForPhone(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    iput-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    :goto_1
    if-ge v0, p1, :cond_2

    .line 451
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->registerAllEventsForPhone(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMultiSimConfigChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public blacklist resetFailedCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1231
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    return-void
.end method

.method public blacklist updateDefaultNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1139
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    if-nez p1, :cond_0

    .line 1140
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 1141
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getAutoSelectedDataSubId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveSubId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1142
    const-string p1, "default network is active on non cellular, switch back to default"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_0
    return-void

    .line 1146
    :cond_1
    const-string p1, "default network is lost, try to find another active sub to switch to"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 1147
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    .line 1148
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void
.end method
