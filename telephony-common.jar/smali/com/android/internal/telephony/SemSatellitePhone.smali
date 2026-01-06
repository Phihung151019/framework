.class public Lcom/android/internal/telephony/SemSatellitePhone;
.super Lcom/android/internal/telephony/SemGsmCdmaPhone;
.source "SemSatellitePhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;,
        Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;,
        Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;
    }
.end annotation


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String; = "SemSatellitePhone"

.field private static final blacklist NOTIFICATION_TAG:Ljava/lang/String;

.field public static final blacklist SATELLITE_MODE_ENABLED_FALSE:I = 0x0

.field public static final blacklist SATELLITE_MODE_ENABLED_TRUE:I = 0x1

.field public static final blacklist SEM_SET_SATELLITE_RESULT_NULL:I = -0x1

.field protected static final blacklist WAIT_FOR_CURRENT_LOCATION_TIMEOUT_MILLIS:J

.field private static blacklist mSatelliteImei:Ljava/lang/String;

.field private static final blacklist sThresholdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityManager:Landroid/app/ActivityManager;

.field private blacklist mContentResolver:Landroid/content/ContentResolver;

.field private blacklist mDisableNFCOnSatelliteEnabled:Z

.field private blacklist mDisableUWBOnSatelliteEnabled:Z

.field private blacklist mDisableWifiOnSatelliteEnabled:Z

.field private blacklist mLastNotifiedEligibility:Z

.field private blacklist mListenerForPointingUIRegistered:Z

.field private blacklist mListenerForRadiosRegistered:Z

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field blacklist mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNfcStateEnabled:Z

.field private blacklist mPrevSs:Landroid/telephony/ServiceState;

.field private final blacklist mRadioStateLock:Ljava/lang/Object;

.field private blacklist mResultCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResultDelayToNotify:I

.field public blacklist mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

.field private final blacklist mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSatSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

.field public blacklist mSatSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

.field private final blacklist mSatelliteEnabledRequestLock:Ljava/lang/Object;

.field private blacklist mSatelliteImsi:Ljava/lang/String;

.field public blacklist mSatelliteModeOn:Z

.field private blacklist mSatelliteModemState:I

.field private blacklist mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

.field private blacklist mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

.field private blacklist mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

.field private blacklist mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

.field private blacklist mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

.field public blacklist mUidImportanceListener:Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;

.field private blacklist mUwbAdapterStateCallback:Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;

.field private blacklist mUwbStateEnabled:Z

.field private blacklist mWaitingForRadioDisabled:Z

.field private blacklist mWaitingRadioAvailable:Z

.field private blacklist mWifiNFCSateReceiver:Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;

.field private blacklist mWifiStateEnabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$ssCHTseMu6vXxxGbfL4dnZeevOY(Lcom/android/internal/telephony/SemSatellitePhone;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->onCurrentLocationAvailable(Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioStateLock(Lcom/android/internal/telephony/SemSatellitePhone;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mRadioStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUwbStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUwbStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbackToTheCellularMode(Lcom/android/internal/telephony/SemSatellitePhone;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->backToTheCellularMode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/SemSatellitePhone;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->evaluateToSendSatelliteEnabledSuccess()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnSimAuthDataRequested(Lcom/android/internal/telephony/SemSatellitePhone;Landroid/telephony/satellite/SemSatSimAuthReqData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->handleOnSimAuthDataRequested(Landroid/telephony/satellite/SemSatSimAuthReqData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    .line 98
    const-class v0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/SemSatellitePhone;->WAIT_FOR_CURRENT_LOCATION_TIMEOUT_MILLIS:J

    .line 142
    sput-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->NOTIFICATION_TAG:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, -0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x7e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0x7c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, -0x7a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->sThresholdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 201
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/SemSatellitePhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 0

    .line 209
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/SemGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p2, 0x0

    .line 102
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    const/4 p3, 0x2

    .line 104
    iput p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    .line 113
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLock:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 119
    iput-object p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    .line 147
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLastNotifiedEligibility:Z

    .line 150
    iput-object p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    .line 151
    iput-object p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    .line 161
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mRadioStateLock:Ljava/lang/Object;

    .line 162
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteEnabledRequestLock:Ljava/lang/Object;

    .line 164
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableNFCOnSatelliteEnabled:Z

    .line 165
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableUWBOnSatelliteEnabled:Z

    .line 166
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableWifiOnSatelliteEnabled:Z

    .line 167
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    .line 169
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    .line 171
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    .line 180
    new-instance p4, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;

    invoke-direct {p4, p0, p3}, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;Lcom/android/internal/telephony/SemSatellitePhone-IA;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUidImportanceListener:Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;

    .line 194
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 211
    const-string p4, "SemSatellitePhone created!!"

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lcom/android/internal/telephony/SemPhoneFactory;->getSatelliteCommandsInterface(Landroid/content/Context;)Lcom/android/internal/telephony/SatelliteCommandsInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    .line 213
    new-instance p1, Lcom/android/internal/telephony/SemSatelliteCallTracker;

    iget-object p4, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    iget-object p5, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {p1, p0, p4, p5}, Lcom/android/internal/telephony/SemSatelliteCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 216
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mContentResolver:Landroid/content/ContentResolver;

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p4, Landroid/location/LocationManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationManager:Landroid/location/LocationManager;

    .line 219
    new-instance p1, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;Lcom/android/internal/telephony/SemSatellitePhone-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiNFCSateReceiver:Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;

    .line 220
    new-instance p1, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;Lcom/android/internal/telephony/SemSatellitePhone-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbAdapterStateCallback:Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;

    .line 221
    iput-object p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    .line 222
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingForRadioDisabled:Z

    .line 223
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForPointingUIRegistered:Z

    .line 224
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForRadiosRegistered:Z

    .line 225
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/ActivityManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mActivityManager:Landroid/app/ActivityManager;

    .line 226
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    .line 228
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez p1, :cond_0

    .line 229
    const-string p1, "wifi,nfc,uwb"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->setSettingSatelliteModeRadiosValue(Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id()Ljava/util/Optional;

    move-result-object p1

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_1

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mContentResolver:Landroid/content/ContentResolver;

    const-string p4, "satellite_mode_enabled"

    invoke-static {p1, p4, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemSatellitePhone;->setSettingsKeyForSatelliteMode(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget p2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    .line 242
    :cond_2
    :goto_0
    new-instance p1, Landroid/telephony/ServiceState;

    invoke-direct {p1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mPrevSs:Landroid/telephony/ServiceState;

    .line 243
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 244
    iput p3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultDelayToNotify:I

    return-void
.end method

.method private blacklist areAllRadiosDisabled()Z
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mRadioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableNFCOnSatelliteEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableWifiOnSatelliteEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableUWBOnSatelliteEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    if-eqz v1, :cond_3

    .line 549
    :cond_2
    const-string v1, "All radios are not disabled yet."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 550
    monitor-exit v0

    return p0

    :cond_3
    const/16 v1, 0x43a

    .line 553
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    :cond_4
    const-string v1, "All radios are disabled."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 558
    monitor-exit v0

    return p0

    .line 559
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist backToTheCellularMode(I)V
    .locals 2

    .line 563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatellitePowerEventResult(I)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backToTheCellularMode. errorCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 565
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    .line 566
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOffSatellite()V

    .line 567
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id(Ljava/lang/Integer;)V

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->setSettingsKeyForSatelliteMode(I)V

    .line 571
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastSatelliteModeChanged(Z)V

    return-void
.end method

.method private blacklist broadcastDeviceStateMonitor(Ljava/util/EnumSet;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;",
            ">;Z)V"
        }
    .end annotation

    .line 1621
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Ljava/util/EnumSet;Z)V

    return-void
.end method

.method private blacklist broadcastSatelliteModeChanged(Z)V
    .locals 5

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastSatelliteModeChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1610
    const-string v0, "com.android.bluetooth"

    const-string v1, "com.sec.modem.settings"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1613
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.SATELLITE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    const-string v1, "state"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1616
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist checkAndNotifySatellitePowerEventResult(I)V
    .locals 1

    .line 1698
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-nez v0, :cond_0

    .line 1699
    iput p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultDelayToNotify:I

    return-void

    .line 1701
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatellitePowerEventResult(I)V

    return-void
.end method

.method private blacklist checkForEmergencyNumber(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1147
    iget-boolean v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1148
    const-string p1, "dialSat - isEmergencyNumber"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logi(Ljava/lang/String;)V

    .line 1149
    new-instance p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private blacklist clearTiantongEligibilityNotificaiton()V
    .locals 1

    const/4 v0, 0x0

    .line 995
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->stopEligibilityHysteresisTimer(Z)V

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->updateLastNotifiedEligibilityAndNotify(Z)V

    return-void
.end method

.method private blacklist clearTiantongEligibilityNotificaitonAll()V
    .locals 1

    const/4 v0, 0x1

    .line 999
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->stopEligibilityHysteresisTimer(Z)V

    .line 1000
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->hideLastNotifiedEligibilityAndNotifyAll()V

    return-void
.end method

.method private blacklist evaluateToSendSatelliteEnabledSuccess()V
    .locals 2

    .line 507
    const-string v0, "evaluateToSendSatelliteEnabledSuccess"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteEnabledRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->areAllRadiosDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingForRadioDisabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteModemOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "Sending success to callback that sent enable satellite request"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 512
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatellitePowerEventResult(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 514
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getSatelliteImeiSp()Ljava/lang/String;
    .locals 2

    .line 1443
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1444
    const-string v0, "key_sat_imei"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteNotificationHysteresisTimeMillis()J
    .locals 2

    .line 1688
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p0, :cond_0

    .line 1689
    const-string p0, "ril.test.tiantong"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1690
    const-string v0, "NOTI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method

.method private blacklist handleOnSatelliteModemOn()V
    .locals 4

    .line 1455
    const-string v0, "handleOnSatelliteModemOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setNetworkQueryMode(ILandroid/os/Message;)V

    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/SemSatellitePhone;->sThresholdList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setSignalThresholdReport(ILjava/util/ArrayList;Landroid/os/Message;)V

    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, v3, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setSignalStrengthReport(ZLandroid/os/Message;)V

    .line 1462
    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteImeiSp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    .line 1464
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1465
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setImei(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1467
    :cond_1
    const-string v0, "No satellite IMEI"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 1468
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->sendGetSatelliteImei()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1473
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setImei(Ljava/lang/String;Landroid/os/Message;)V

    .line 1477
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1479
    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImsi:Ljava/lang/String;

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImsi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setImsi(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 1485
    :cond_4
    const-string v0, "No IMSI"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 1488
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->startNetworkSearch(Landroid/os/Message;)V

    .line 1490
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist handleOnSimAuthDataRequested(Landroid/telephony/satellite/SemSatSimAuthReqData;)V
    .locals 6

    .line 1494
    const-string v0, "handleOnSimAuthDataRequested"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1497
    const-string p1, "Sim auth data is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 1501
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1502
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1503
    const-string p1, "Invalid subId, UICC is not ready"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1504
    new-instance p1, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;-><init>()V

    .line 1505
    sget v0, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_NO_SIM:I

    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setResult(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1506
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->build()Landroid/telephony/satellite/SemSatSimAuthResultData;

    move-result-object p1

    .line 1507
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->sendIccSimAuthentication(Landroid/telephony/satellite/SemSatSimAuthResultData;Landroid/os/Message;)V

    return-void

    .line 1511
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthReqData;->getRandLen()I

    move-result v1

    .line 1512
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthReqData;->getRandBytes()[B

    move-result-object v3

    .line 1513
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthReqData;->getAuthLen()I

    move-result v4

    .line 1514
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthReqData;->getAuthBytes()[B

    move-result-object p1

    add-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v4

    .line 1517
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    int-to-byte v1, v1

    .line 1518
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1519
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-byte v1, v4

    .line 1520
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1521
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1523
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 1524
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 1526
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x81

    .line 1527
    invoke-virtual {p1, v1, v3, v0}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1531
    const-string p1, "UICC authentication error"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1532
    new-instance p1, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;-><init>()V

    .line 1533
    sget v0, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_MAC_FAILURE:I

    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setResult(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1534
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->build()Landroid/telephony/satellite/SemSatSimAuthResultData;

    move-result-object p1

    .line 1535
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->sendIccSimAuthentication(Landroid/telephony/satellite/SemSatSimAuthResultData;Landroid/os/Message;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1539
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1540
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1541
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1543
    new-instance v1, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    invoke-direct {v1}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;-><init>()V

    .line 1544
    sget v3, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_SUCCESSFUL:I

    int-to-byte v3, v3

    if-ne v0, v3, :cond_6

    .line 1545
    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setResult(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1547
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 1548
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 1549
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setResLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1550
    new-array v0, v0, [B

    .line 1551
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1552
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setRes([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1555
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_4

    .line 1556
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 1557
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setCkLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1558
    new-array v0, v0, [B

    .line 1559
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1560
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setCk([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1563
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_5

    .line 1564
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 1565
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setIkLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1566
    new-array v0, v0, [B

    .line 1567
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1568
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setIk([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1571
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_7

    .line 1572
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 1573
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setKcLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1574
    new-array v0, v0, [B

    .line 1575
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1576
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setKc([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    goto :goto_0

    .line 1578
    :cond_6
    sget v3, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_SYNC_FAILURE:I

    int-to-byte v3, v3

    if-ne v0, v3, :cond_9

    .line 1579
    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setResult(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1580
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_7

    .line 1581
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 1582
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setAutsLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1583
    new-array v0, v0, [B

    .line 1584
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1585
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->setAuts([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;

    .line 1592
    :cond_7
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->build()Landroid/telephony/satellite/SemSatSimAuthResultData;

    move-result-object p1

    .line 1593
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1594
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->sendIccSimAuthentication(Landroid/telephony/satellite/SemSatSimAuthResultData;Landroid/os/Message;)V

    return-void

    .line 1596
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid SIM auth result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1588
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM auth failed, result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleWaitForCurrentLocationTimedOutEvent()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v1, 0x0

    .line 325
    iput-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    .line 326
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->onCurrentLocationAvailable(Landroid/location/Location;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 328
    :cond_0
    const-string v1, "handleWaitForCurrentLocationTimedOutEvent: mLocationRequestCancellationSignal is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 331
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist hideLastNotifiedEligibilityAndNotifyAll()V
    .locals 4

    .line 943
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 944
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->updateLastNotifiedEligibilityAndNotify(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist initializeSatelliteModeRadios()V
    .locals 7

    .line 335
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForRadiosRegistered:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForRadiosRegistered:Z

    .line 339
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mRadioStateLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 342
    :try_start_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableNFCOnSatelliteEnabled:Z

    .line 343
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableWifiOnSatelliteEnabled:Z

    .line 344
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableUWBOnSatelliteEnabled:Z

    .line 346
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    .line 347
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    .line 348
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    .line 351
    iget-object v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "satellite_mode_radios"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 354
    const-string v0, "initializeSatelliteModeRadios: satelliteModeRadios is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 355
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 357
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radios To be checked when satellite is on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 359
    const-string v4, "nfc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 363
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 366
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableNFCOnSatelliteEnabled:Z

    .line 367
    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    .line 368
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    :cond_3
    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 373
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_4

    .line 375
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableWifiOnSatelliteEnabled:Z

    .line 376
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    .line 377
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiNFCSateReceiver:Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 385
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeSatelliteModeRadios: unregisterReceiver, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 388
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableNFCOnSatelliteEnabled:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableWifiOnSatelliteEnabled:Z

    if-eqz v4, :cond_6

    .line 389
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiNFCSateReceiver:Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    :cond_6
    const-string v1, "uwb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    .line 394
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v3, Landroid/uwb/UwbManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbManager;

    if-eqz v1, :cond_7

    .line 396
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableUWBOnSatelliteEnabled:Z

    .line 397
    invoke-virtual {v1}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbAdapterStateCallback:Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;

    invoke-virtual {v1, v0}, Landroid/uwb/UwbManager;->unregisterAdapterStateCallback(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbAdapterStateCallback:Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;

    invoke-virtual {v1, v0, v5}, Landroid/uwb/UwbManager;->registerAdapterStateCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 405
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 409
    :goto_2
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeSatelliteModeRadios: e= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 413
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisableNFCOnSatelliteEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableNFCOnSatelliteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDisableWifiOnSatelliteEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableWifiOnSatelliteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDisableUWBOnSatelliteEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mDisableUWBOnSatelliteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfcStateEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mNfcStateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWifiStateEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiStateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUwbStateEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbStateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 421
    monitor-exit v2

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_8
    :goto_5
    return-void
.end method

.method private blacklist isCellularAvailable()Z
    .locals 6

    .line 972
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 973
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 974
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v5, :cond_0

    .line 975
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemSatellitePhone;->useTestServiceState(Landroid/telephony/ServiceState;)V

    .line 977
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemSatellitePhone;->isServiceAvailable(Landroid/telephony/ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private blacklist isSatelliteModemOn()Z
    .locals 1

    .line 1602
    iget p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isServiceAvailable(Landroid/telephony/ServiceState;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 960
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 961
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist isTiantongPlmn(Ljava/lang/String;)Z
    .locals 6

    .line 986
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ril.simoperator"

    const-string v1, "ETC"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "46001"

    const-string v2, "46009"

    const-string v3, "46003"

    const-string v4, "46011"

    const-string v5, "46059"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 988
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CTCTT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3

    .line 1635
    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 3

    .line 1643
    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 3

    .line 1639
    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifySatellitePowerEventResult(I)V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySatellitePowerEventResult,errorCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method private blacklist notifySatelliteServiceState()V
    .locals 3

    .line 1626
    new-instance v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    iget v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {v0, v1, v2}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(ILandroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 1627
    invoke-static {}, Lcom/android/internal/telephony/SemPhoneFactory;->getSemPhoneNotifier()Lcom/android/internal/telephony/SemPhoneNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/SemPhoneNotifier;->notifySemSatelliteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/satellite/SemSatelliteServiceState;)V

    return-void
.end method

.method private blacklist notifySatelliteSignalStrength()V
    .locals 2

    .line 1631
    invoke-static {}, Lcom/android/internal/telephony/SemPhoneFactory;->getSemPhoneNotifier()Lcom/android/internal/telephony/SemPhoneNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/SemPhoneNotifier;->notifySemSatelliteSignalStrengthChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-void
.end method

.method private blacklist onCurrentLocationAvailable(Landroid/location/Location;)V
    .locals 9

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentLocationAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->stopWaitForCurrentLocationTimer()V

    const/4 v1, 0x0

    .line 293
    iput-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int p1, v7

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setGpsInfo(IILandroid/os/Message;)V

    .line 296
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCurrentLocationAvailable - GPS INFO success"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 298
    :cond_1
    const-string p1, "onCurrentLocationAvailable - GPS INFO failed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCurrentLocationAvailable - GPS INFO failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 301
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onServiceStateChanged()V
    .locals 4

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mPrevSs:Landroid/telephony/ServiceState;

    .line 1030
    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mPrevSs:Landroid/telephony/ServiceState;

    .line 1033
    iget-boolean v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1040
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemSatellitePhone;->isTiantongPlmn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1041
    const-string v0, "onServiceStateChanged - SIM not available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1042
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->clearTiantongEligibilityNotificaiton()V

    return-void

    .line 1046
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_2

    .line 1047
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->useTestServiceState(Landroid/telephony/ServiceState;)V

    .line 1048
    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mPrevSs:Landroid/telephony/ServiceState;

    .line 1051
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged - prevSs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " emergencyOnly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", currSs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " emergencyOnly:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-ne v2, v0, :cond_3

    .line 1055
    const-string v0, "onServiceStateChanged -currSs same to prevSs"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 1059
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->isServiceAvailable(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1064
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->shouldStartEligibilityHysteresisTimer()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1068
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->startEligibilityHysteresisTimer()V

    return-void

    .line 1060
    :cond_6
    :goto_0
    const-string v0, "onServiceStateChanged -prevSs not available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 1034
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged - SatelliteMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRadioOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCellularAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isCellularAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->clearTiantongEligibilityNotificaitonAll()V

    return-void
.end method

.method private blacklist queryCurrentLocation()V
    .locals 8

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 267
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "Request for current location was already sent to LocationManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 275
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 277
    :cond_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/16 v4, 0x64

    .line 280
    invoke-virtual {v0, v4}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const/4 v4, 0x1

    .line 281
    invoke-virtual {v0, v4}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v6, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;)V

    new-instance v7, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;)V

    .line 278
    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 285
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->startWaitForCurrentLocationTimer()V

    .line 286
    monitor-exit v1

    return-void

    .line 268
    :cond_2
    :goto_0
    const-string v0, "isLocationEnabled or GPS_PROVIDER not available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isLocationEnabled or GPS_PROVIDER not available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 270
    monitor-exit v1

    return-void

    .line 286
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist registerForEvents()V
    .locals 5

    .line 1281
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->registerRegistrantsForSat()V

    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->registerRegistrantsForSatSms()V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x434

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x435

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->registerForRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x436

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x437

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->registerForRequestGpsData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x438

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->registerForRequestSimAuthData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1295
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 1297
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v4, 0x43e

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setCombinedConfigMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 1300
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    goto :goto_0

    .line 1303
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v4, 0x433

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1307
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v4, 0x43b

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1309
    new-instance v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    .line 1310
    new-instance v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 1311
    new-instance v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 1313
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1315
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1316
    invoke-interface {v4, v1, v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerForReason(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1320
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->updateBigdataSettingInfo(Z)V

    return-void
.end method

.method private blacklist registerListenerForPointingUI()V
    .locals 4

    .line 600
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForPointingUIRegistered:Z

    if-nez v0, :cond_0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.satellite.pointing.ui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUidImportanceListener:Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForPointingUIRegistered:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 608
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private blacklist registerRegistrantsForSat()V
    .locals 4

    .line 518
    const-string v0, "registerRegistrantsForSat()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist removeListenerForPointingUI()V
    .locals 2

    .line 614
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForPointingUIRegistered:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUidImportanceListener:Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForPointingUIRegistered:Z

    :cond_0
    return-void
.end method

.method private blacklist sendGetSatelliteImei()V
    .locals 3

    const/4 v0, 0x4

    .line 1438
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v2, 0x43c

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :array_0
    .array-data 1
        0x11t
        -0x52t
        0x0t
        0x4t
    .end array-data
.end method

.method private blacklist setSatelliteImeiSp(Ljava/lang/String;)V
    .locals 1

    .line 1448
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1449
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1450
    const-string v0, "key_sat_imei"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1451
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist setSettingSatelliteModeRadiosValue(Ljava/lang/String;)V
    .locals 2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSettingSatelliteModeRadiosValue val: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 540
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "satellite_mode_radios"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private blacklist setSettingsKeyForSatelliteMode(I)V
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSettingsKeyForSatelliteMode val: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "satellite_mode_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private blacklist shouldStartEligibilityHysteresisTimer()Z
    .locals 6

    .line 905
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/16 v5, 0x43d

    .line 906
    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldStartEligibilityHysteresisTimer: Timer is already running. - phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 912
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLastNotifiedEligibility:Z

    if-eqz v0, :cond_2

    .line 913
    const-string v0, "shouldStartEligibilityHysteresisTimer: message already notified"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist startEligibilityHysteresisTimer()V
    .locals 4

    .line 921
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteNotificationHysteresisTimeMillis()J

    move-result-wide v0

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startEligibilityHysteresisTimer: sendMessageDelayed - timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const/16 v2, 0x43d

    .line 923
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startWaitForCurrentLocationTimer()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x439

    .line 306
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "WaitForCurrentLocationTimer is already started"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 310
    :cond_0
    :goto_0
    sget-wide v2, Lcom/android/internal/telephony/SemSatellitePhone;->WAIT_FOR_CURRENT_LOCATION_TIMEOUT_MILLIS:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist stopEligibilityHysteresisTimer(Z)V
    .locals 6

    const/16 v0, 0x43d

    if-eqz p1, :cond_1

    .line 928
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 929
    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 930
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopEligibilityHysteresisTimer: phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 936
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    const-string p1, "stopEligibilityHysteresisTimer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private blacklist stopWaitForCurrentLocationTimer()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x439

    .line 317
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist turnOffSatellite()V
    .locals 1

    .line 1365
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOffSatelliteMode()V

    .line 1366
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOnCellularMode()V

    :cond_0
    return-void
.end method

.method private blacklist turnOffSatelliteMode()V
    .locals 2

    .line 1372
    const-string v0, "turnOffSatelliteMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->hangupAllSatelliteConnections()V

    .line 1375
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->removeListenerForPointingUI()V

    .line 1378
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    if-eqz v0, :cond_0

    .line 1379
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->unregisterRegistrantsForSatSms()V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->unregisterForRegistrationStateChanged(Landroid/os/Handler;)V

    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->unregisterForRequestGpsData(Landroid/os/Handler;)V

    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->unregisterForRequestSimAuthData(Landroid/os/Handler;)V

    .line 1387
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->unregisterRadiosCallback()V

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x43f

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->cleanupNetworkInfo(Landroid/os/Message;)V

    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist turnOnCellularMode()V
    .locals 5

    .line 1393
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    const-string v0, "Skip turnOnCellularMode, AirplaneMode on"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 1398
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const/4 v4, 0x1

    .line 1399
    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerForReason(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist turnOnSatellite()V
    .locals 4

    .line 1324
    const-string v0, "turnOnSatellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->clearTiantongEligibilityNotificaitonAll()V

    .line 1328
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->initializeSatelliteModeRadios()V

    .line 1329
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->registerListenerForPointingUI()V

    .line 1331
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1332
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingForRadioDisabled:Z

    .line 1333
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 1334
    invoke-interface {v3, v1, v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerForReason(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1337
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->registerForEvents()V

    return-void
.end method

.method private blacklist unregisterRadiosCallback()V
    .locals 4

    const/4 v0, 0x0

    .line 1342
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mListenerForRadiosRegistered:Z

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWifiNFCSateReceiver:Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRadiosCallback-mWifiNFCSateReceiver: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1350
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/uwb/UwbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    if-eqz v0, :cond_0

    .line 1352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1354
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mUwbAdapterStateCallback:Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;

    invoke-virtual {v0, v3}, Landroid/uwb/UwbManager;->unregisterAdapterStateCallback(Landroid/uwb/UwbManager$AdapterStateCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1356
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1357
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1360
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRadiosCallback-mUwbAdapterStateCallback: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method

.method private blacklist updateBigdataSessionStatusInfo(Z)V
    .locals 2

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBigdataSessionStatusInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getInstance(I)Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    if-eqz p1, :cond_0

    .line 1674
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteSimPlmnString(Ljava/lang/String;)V

    .line 1675
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onSessionStart(Lcom/android/internal/telephony/Phone;I)V

    :cond_0
    return-void

    .line 1679
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    if-eqz p1, :cond_2

    .line 1680
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onSessionEnd(Landroid/content/Context;)V

    :cond_2
    const/4 p1, 0x0

    .line 1683
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    return-void
.end method

.method private blacklist updateBigdataSettingInfo(Z)V
    .locals 2

    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    if-nez v0, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->getInstance(I)Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteSettingInfos is created for subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->setSatelliteEnabled(Z)V

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBigdataSettingInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->sendBigDataForSetting(Landroid/content/Context;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1664
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSettingInfo:Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    :cond_1
    return-void
.end method

.method private blacklist updateSatelliteSystemNotification(Z)V
    .locals 6

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1074
    const-string p1, "updateSatelliteSystemNotification: notificationManager is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1077
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatelliteSystemNotification - visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1079
    sget-object p0, Lcom/android/internal/telephony/SemSatellitePhone;->NOTIFICATION_TAG:Ljava/lang/String;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    .line 1083
    :cond_1
    new-instance p1, Landroid/app/NotificationChannel;

    const-string v2, "TiantongSatelliteChannel"

    const/4 v3, 0x3

    const-string v4, "TiantongSatellite"

    invoke-direct {p1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 1088
    invoke-virtual {p1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1089
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1094
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040dd5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1095
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040dd6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1097
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 1099
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040dd8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1100
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1101
    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v2, 0x10803d7

    .line 1102
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1103
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 1104
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1106
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.satellite.pointing.ui"

    const-string v4, "com.samsung.android.satellite.pointing.ui.activity.SatelliteIntroChnActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    .line 1109
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 1110
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4000000

    .line 1111
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1113
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1115
    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 1116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x1040dd7

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v5, p0, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1117
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    .line 1118
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 1121
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1122
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "android.showSmallIcon"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    sget-object p0, Lcom/android/internal/telephony/SemSatellitePhone;->NOTIFICATION_TAG:Ljava/lang/String;

    .line 1125
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1124
    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist useTestServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    const-string v0, "ril.test.tiantong"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    const-string v1, "NOTI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useTestServiceState - test.tiantong : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1011
    const-string p0, "IN-SVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1012
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1013
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    return-void

    .line 1014
    :cond_1
    const-string p0, "LIMITED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    .line 1015
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1016
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    return-void

    .line 1017
    :cond_2
    const-string p0, "NO-SVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1018
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1019
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    return-void

    .line 1020
    :cond_3
    const-string p0, "RADIO-OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    .line 1021
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1022
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    return-void

    .line 1196
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->acceptCall(I)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/telephony/Phone;",
            ">;)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1131
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_0

    .line 1132
    const-string v0, "Trying Sat-CS call"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1133
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemSatellitePhone;->checkForEmergencyNumber(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p2

    .line 1134
    iget-boolean v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkForDialNotAllowed(Z)V

    .line 1136
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1138
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1139
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1141
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1707
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1708
    const-string v0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/SemSatellitePhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extends:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSatelliteModeOn ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSatelliteModemState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSatelliteRegistrationState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSatelliteServiceState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSatelliteSignalStrength ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSatCT ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    if-eqz v1, :cond_0

    .line 1718
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1720
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1723
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1725
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1727
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public bridge synthetic blacklist getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0

    .line 1223
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 1211
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0

    .line 1214
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0

    .line 1232
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    return-object p0
.end method

.method public blacklist getSatelliteImei()Ljava/lang/String;
    .locals 0

    .line 1430
    sget-object p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatelliteModeStatus()Z
    .locals 0

    .line 529
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    return p0
.end method

.method public blacklist getSatelliteState()Landroid/telephony/satellite/SemSatelliteState;
    .locals 2

    .line 1405
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/satellite/SemSatelliteState;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {v0, v1, p0}, Landroid/telephony/satellite/SemSatelliteState;-><init>(Landroid/telephony/satellite/SemSatelliteServiceState;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    return-object p0

    .line 1652
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 623
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/16 v1, 0x2f

    const/16 v3, 0x43e

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x240

    if-eq v0, v1, :cond_f

    const/16 v1, 0x433

    const/16 v8, 0x43a

    packed-switch v0, :pswitch_data_0

    .line 899
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 886
    :pswitch_0
    const-string p1, "EVENT_CLEANUP_NETWORK_INFO_DONE"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    .line 889
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :catch_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 894
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->updateBigdataSettingInfo(Z)V

    .line 895
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastSatelliteModeChanged(Z)V

    goto/16 :goto_6

    .line 868
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_COMBINED_CONFIG_MODE_DONE: mSatelliteModeOn - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 869
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->QET_COMBINED:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastDeviceStateMonitor(Ljava/util/EnumSet;Z)V

    .line 870
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void

    .line 873
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id(Ljava/lang/Integer;)V

    .line 874
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->TIANTONG:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastDeviceStateMonitor(Ljava/util/EnumSet;Z)V

    .line 875
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOnCellularMode()V

    .line 876
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultDelayToNotify:I

    if-eq p1, v5, :cond_13

    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatellitePowerEventResult(I)V

    .line 879
    iput v5, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultDelayToNotify:I

    return-void

    .line 857
    :pswitch_2
    const-string p1, "Event EVENT_NOTIFY_ELIGIBILITY_HYSTERESIS_TIMED_OUT Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 858
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SemSatellitePhone;->stopEligibilityHysteresisTimer(Z)V

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isCellularAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 860
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SemSatellitePhone;->updateLastNotifiedEligibilityAndNotify(Z)V

    return-void

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->hideLastNotifiedEligibilityAndNotifyAll()V

    return-void

    .line 815
    :pswitch_3
    const-string v0, "EVENT_GET_SATELLITE_IMEI_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 816
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 817
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    check-cast v0, [B

    .line 823
    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 825
    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    sput-object p1, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    .line 827
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->setSatelliteImeiSp(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 829
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setImei(Ljava/lang/String;Landroid/os/Message;)V

    .line 833
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "satellite imei:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->givePrintableImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 818
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get satellite IMEI failure:: Exception received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    return-void

    .line 804
    :pswitch_4
    const-string v0, "EVENT_SATELLITE_NEW_SMS_STATUS_REPORT"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 805
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    .line 806
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 807
    const-string p1, "EVENT_SATELLITE_NEW_SMS_STATUS_REPORT failure"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 809
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSatSmsStatusReport(Ljava/lang/Object;)V

    return-void

    .line 790
    :pswitch_5
    const-string p1, "EVENT_SATELLITE_RADIOS_CHANGE_TIMEOUT"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 791
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteEnabledRequestLock:Ljava/lang/Object;

    monitor-enter p1

    .line 792
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingForRadioDisabled:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_6

    .line 794
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteModemOn()Z

    move-result v0

    xor-int/2addr v0, v6

    .line 797
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatellitePowerEventResult(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 799
    :cond_6
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 721
    :pswitch_6
    const-string p1, "EVENT_WAIT_FOR_CURRENT_LOCATION_TIMEOUT"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->handleWaitForCurrentLocationTimedOutEvent()V

    return-void

    .line 778
    :pswitch_7
    const-string v0, "EVENT_SATELLITE_SIM_AUTH_DATA_REQUESTED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 779
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 780
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SemSatellitePhone$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone$1;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;Landroid/os/AsyncResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 785
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 716
    :pswitch_8
    const-string p1, "EVENT_SATELLITE_GPS_DATA_REQUESTED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->queryCurrentLocation()V

    return-void

    .line 700
    :pswitch_9
    const-string v0, "EVENT_SATELLITE_SIGNAL_STRENGTH_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 701
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 702
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_13

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 704
    new-instance v1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {v1, p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 706
    invoke-virtual {v0, v1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 707
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatelliteSignalStrength()V

    .line 708
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSessionStatusInfo:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    if-eqz p1, :cond_13

    .line 709
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {p0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->getSatelliteId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteId(I)V

    return-void

    .line 690
    :pswitch_a
    const-string v0, "EVENT_SATELLITE_REG_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 691
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 692
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_13

    .line 693
    new-instance v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    .line 694
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatelliteServiceState()V

    .line 695
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->isNetworkRegistered()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->updateBigdataSessionStatusInfo(Z)V

    return-void

    .line 659
    :pswitch_b
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SATELLITE_RADIO_STATE_CHANGED, state= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 662
    iget p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    if-ne p1, v4, :cond_7

    .line 663
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 664
    new-instance p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    .line 665
    new-instance p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 666
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatelliteSignalStrength()V

    .line 667
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->handleWaitForCurrentLocationTimedOutEvent()V

    .line 669
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz p1, :cond_9

    .line 670
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOnSatellite()V

    goto :goto_3

    :cond_7
    if-ne p1, v6, :cond_9

    .line 673
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz p1, :cond_8

    .line 674
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->handleOnSatelliteModemOn()V

    .line 675
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->evaluateToSendSatelliteEnabledSuccess()V

    .line 676
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 677
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 681
    :cond_8
    const-string p1, "skip radio on noti when running radio off"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    return-void

    .line 685
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatelliteServiceState()V

    .line 686
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->isNetworkRegistered()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->updateBigdataSessionStatusInfo(Z)V

    return-void

    .line 739
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SET_SATELLITE_POWER_DONE - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 740
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 741
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_b

    .line 742
    const-string p1, "SATELLITE_POWER failure!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 743
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz p1, :cond_a

    .line 744
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 745
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SemSatellitePhone;->checkAndNotifySatellitePowerEventResult(I)V

    goto :goto_4

    .line 750
    :cond_b
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-nez p1, :cond_c

    .line 751
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SemSatellitePhone;->checkAndNotifySatellitePowerEventResult(I)V

    .line 755
    :cond_c
    :goto_4
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-nez p1, :cond_e

    .line 756
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 757
    iput v4, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModemState:I

    .line 758
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 759
    new-instance p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    .line 760
    new-instance p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 761
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatelliteSignalStrength()V

    .line 762
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 763
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-eq p1, v4, :cond_d

    .line 764
    iput-boolean v7, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    .line 765
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setCombinedConfigMode(ILandroid/os/Message;)V

    goto :goto_5

    .line 767
    :cond_d
    iput-boolean v6, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    .line 772
    :cond_e
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->notifySatelliteServiceState()V

    .line 773
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteRegistrationState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->isNetworkRegistered()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->updateBigdataSessionStatusInfo(Z)V

    return-void

    .line 851
    :cond_f
    const-string v0, "Event EVENT_SERVICE_STATE_CHANGED Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 852
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->onServiceStateChanged()V

    .line 853
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 625
    :cond_10
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_11

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    if-ne v0, v6, :cond_11

    .line 627
    const-string v0, "need to set mDesirePowerState false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 628
    invoke-interface {p0, v7, v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerForReason(ZI)V

    .line 630
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 631
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-ne v0, v1, :cond_11

    .line 632
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOnSatellite()V

    .line 637
    :cond_11
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT EVENT_RADIO_STATE_CHANGED + mSatelliteModeOn : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 641
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-eq p1, v4, :cond_12

    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    if-eqz p1, :cond_12

    .line 642
    iput-boolean v7, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingRadioAvailable:Z

    .line 643
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setCombinedConfigMode(ILandroid/os/Message;)V

    return-void

    .line 645
    :cond_12
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-ne p1, v6, :cond_13

    .line 646
    iput-boolean v7, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mWaitingForRadioDisabled:Z

    .line 647
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-eq p1, v6, :cond_13

    .line 648
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOnSatellite()V

    :cond_13
    :goto_6
    return-void

    .line 726
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_15

    .line 727
    const-string v0, "Event EVENT_RADIO_ON Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 730
    :cond_15
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->sendGetSatelliteImei()V

    .line 734
    :cond_16
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 838
    :cond_17
    const-string v0, "EVENT_SIM_RECORDS_LOADED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setImsi(Ljava/lang/String;Landroid/os/Message;)V

    .line 844
    :cond_18
    iput-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteImsi:Ljava/lang/String;

    .line 846
    :cond_19
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x433
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

.method public blacklist isSatelliteInSvc()Z
    .locals 1

    .line 1425
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteModemOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerForSatModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    return-void

    .line 1205
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->rejectCall()V

    return-void
.end method

.method public blacklist sendDtmf(C)V
    .locals 2

    .line 1156
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_2

    .line 1157
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatCT:Lcom/android/internal/telephony/SemSatelliteCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1161
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :cond_1
    return-void

    .line 1165
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendDtmf(C)V

    return-void
.end method

.method public blacklist sendSatelliteBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V
    .locals 2

    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->isSatelliteInSvc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSatelliteBackoffRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1414
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->RCV:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_1

    .line 1418
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->setDsiConfig(ZILandroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public blacklist setSatellitePower(ZLcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 2

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatellitePower() - on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 1239
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    .line 1240
    iget-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eq p2, p1, :cond_7

    .line 1241
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1243
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1244
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id(Ljava/lang/Integer;)V

    .line 1245
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->TIANTONG:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->QET_COMBINED:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {p1, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastDeviceStateMonitor(Ljava/util/EnumSet;Z)V

    .line 1248
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOnSatellite()V

    .line 1249
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1250
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id(Ljava/lang/Integer;)V

    goto :goto_0

    .line 1253
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1254
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->QET_COMBINED:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastDeviceStateMonitor(Ljava/util/EnumSet;Z)V

    .line 1256
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->turnOffSatellite()V

    .line 1257
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportQetCombinedMode()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x1

    .line 1258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tiantong_phone_id(Ljava/lang/Integer;)V

    .line 1262
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->setSettingsKeyForSatelliteMode(I)V

    .line 1263
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz p1, :cond_4

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->broadcastSatelliteModeChanged(Z)V

    :cond_4
    const/16 p1, 0x43a

    .line 1266
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1267
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1270
    :cond_5
    iget-boolean p2, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz p2, :cond_6

    .line 1271
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x28

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    return-void

    .line 1274
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSatellitePower: mSatelliteModeOn is already "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    .line 1275
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mResultCallback:Ljava/util/function/Consumer;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist startDtmf(C)V
    .locals 2

    .line 1171
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_1

    .line 1172
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    return-void

    .line 1178
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->startDtmf(C)V

    return-void
.end method

.method public blacklist stopDtmf()V
    .locals 1

    .line 1184
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatelliteModeOn:Z

    if-eqz v0, :cond_0

    .line 1185
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    return-void

    .line 1187
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->stopDtmf()V

    return-void
.end method

.method public blacklist unregisterForSatModemStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mSatModemStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateLastNotifiedEligibilityAndNotify(Z)V
    .locals 2

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLastNotifiedEligibilityAndNotify - currentEligibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->logd(Ljava/lang/String;)V

    .line 950
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLastNotifiedEligibility:Z

    if-eq v0, p1, :cond_0

    .line 951
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatellitePhone;->mLastNotifiedEligibility:Z

    .line 952
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->updateSatelliteSystemNotification(Z)V

    :cond_0
    return-void
.end method
