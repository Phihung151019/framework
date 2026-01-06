.class public Lcom/android/internal/telephony/SatelliteServiceCommandHandler;
.super Landroid/os/Handler;
.source "SatelliteServiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SatelliteServiceCommandHandler$AzElConverter;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_ABORT_SENDING_SATELLITE_DATAGRAMS_DONE:I = 0xa

.field public static final blacklist EVENT_ENABLE_TERRESTRIAL_NETWORK_SCAN_WHILE_SATELLITE_MODE_IS_ON_DONE:I = 0xb

.field public static final blacklist EVENT_IS_SATELLITE_ENABLED_DONE:I = 0x2

.field public static final blacklist EVENT_IS_SATELLITE_SUPPORTED_DONE:I = 0x3

.field public static final blacklist EVENT_NTN_SIGNAL_STRENGTH_DONE:I = 0x7

.field public static final blacklist EVENT_OEM_NTN_SIGNAL_STRENGTH_CHANGED:I = 0x67

.field public static final blacklist EVENT_OEM_SATELLITE_CAPABILITIES_CHANGED:I = 0x69

.field public static final blacklist EVENT_OEM_SATELLITE_DATAGRAM_RECEIVED:I = 0x65

.field public static final blacklist EVENT_OEM_SATELLITE_ECEF_POSITION_RECEIVED:I = 0x68

.field public static final blacklist EVENT_OEM_SATELLITE_MODEM_STATE_CHANGED:I = 0x66

.field public static final blacklist EVENT_OEM_SATELLITE_REGISTRATION_FAILURE:I = 0x6b

.field public static final blacklist EVENT_OEM_SATELLITE_SUPPORTED_STATE_CHANGED:I = 0x6a

.field public static final blacklist EVENT_OEM_TERRESTRIAL_NETWORK_AVAILABLE_CHANGED:I = 0x6c

.field public static final blacklist EVENT_SATELLITE_CAPABILITIES_DONE:I = 0x4

.field public static final blacklist EVENT_SATELLITE_ENABLED_DONE:I = 0x1

.field public static final blacklist EVENT_SATELLITE_MODEM_STATE_DONE:I = 0x6

.field public static final blacklist EVENT_SEND_SATELLITE_DATAGRAM_DONE:I = 0x5

.field public static final blacklist EVENT_START_SENDING_SATELLITE_POINTING_INFO_DONE:I = 0x8

.field public static final blacklist EVENT_STOP_SENDING_SATELLITE_POINTING_INFO_DONE:I = 0x9

.field private static final blacklist TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J


# instance fields
.field private blacklist mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEnableSatellite:Z

.field private blacklist mEnableSendingSatellitePositionInfo:Z

.field private blacklist mEnableSignalStrengthChanged:Z

.field private blacklist mIsLocationProviderEnabled:Z

.field private blacklist mIsLocationSettingsEnabled:Z

.field private blacklist mLastFineLocation:Landroid/location/Location;

.field private blacklist mLastSatelliteEcefPosition:[I

.field private blacklist mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

.field private blacklist mLocationManager:Landroid/location/LocationManager;

.field private blacklist mLocationManagerStateChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

.field private final blacklist mLocationRequestLock:Ljava/lang/Object;

.field private blacklist mModemState:Ljava/lang/Integer;

.field private final blacklist mModemStateLock:Ljava/lang/Object;

.field private blacklist mNtnSignalStrength:Landroid/telephony/satellite/stub/NtnSignalStrength;

.field private final blacklist mPassiveLocationListener:Landroid/location/LocationListener;

.field private blacklist mPhoneId:I

.field private final blacklist mPhoneIdLock:Ljava/lang/Object;

.field private final blacklist mSC:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private blacklist mSatelliteSubscriptionCallback:Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnableSendingSatellitePositionInfo(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLocationProviderEnabled(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationProviderEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLocationSettingsEnabled(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationSettingsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationRequestLock(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModemState(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Ljava/lang/Integer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemState:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneIdLock(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFineLocation(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhoneId(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelRequestCurrentLocation(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->cancelRequestCurrentLocation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mqueryCurrentLocation(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->queryCurrentLocation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterUnsolMgs(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->registerUnsolMgs(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSatellitePosition(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->updateSatellitePosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SamsungSatelliteService;)V
    .locals 5

    .line 143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    .line 67
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mContext:Landroid/content/Context;

    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationSettingsEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationProviderEnabled:Z

    .line 76
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastSatelliteEcefPosition:[I

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSatelliteSubscriptionCallback:Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    .line 78
    new-instance v2, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;-><init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPassiveLocationListener:Landroid/location/LocationListener;

    .line 93
    new-instance v2, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;-><init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManagerStateChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, -0x1

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemState:Ljava/lang/Integer;

    .line 109
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemStateLock:Ljava/lang/Object;

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSatellite:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSignalStrengthChanged:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    .line 113
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mNtnSignalStrength:Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 115
    iput v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/telephony/SamsungSatelliteService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/telephony/SamsungSatelliteService;->getCommandsInterface()[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    .line 146
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSC:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/SamsungSatelliteService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v4, Landroid/location/LocationManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 149
    monitor-enter v0

    .line 150
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 154
    :cond_0
    const-string p1, "SatelliteServiceCommandHandler"

    const-string v1, "mSC.getSatellitePhone() is null"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 158
    :cond_1
    :goto_2
    monitor-enter v3

    .line 159
    :try_start_1
    iput-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemState:Ljava/lang/Integer;

    .line 160
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManagerStateChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->registerPassiveLocationListener()V

    return-void

    :catchall_1
    move-exception p0

    .line 160
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private blacklist cancelRequestCurrentLocation()V
    .locals 2

    .line 392
    const-string v0, "cancelRequestCurrentLocation"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v1, 0x0

    .line 396
    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 398
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

.method private blacklist convertErrorToSatelliteResult(Lcom/android/internal/telephony/CommandException;)I
    .locals 1

    .line 509
    sget-object p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0xe

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method private blacklist getSatelliteEcefPosition()[I
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastSatelliteEcefPosition:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, -0x1e3ff2a

    const v1, -0x231b28

    const v2, -0x60a0ee

    .line 441
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastSatelliteEcefPosition:[I

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_satellite_ecef_position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 447
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 450
    :try_start_1
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastSatelliteEcefPosition:[I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    const-string v0, "getSatelliteEcefPosition - NumberFormatException"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_1
    const-string v0, "getSatelliteEcefPosition - preference empty or wrong length"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    .line 457
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastSatelliteEcefPosition:[I

    return-object p0

    :catchall_0
    move-exception p0

    .line 447
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 809
    const-string v0, "SatelliteServiceCommandHandler"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 813
    const-string v0, "SatelliteServiceCommandHandler"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processRequestCallback(Landroid/telephony/IBooleanConsumer;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 802
    :try_start_0
    invoke-interface {p1, p2}, Landroid/telephony/IBooleanConsumer;->accept(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 804
    :catch_0
    const-string p0, "SatelliteServiceCommandHandler"

    const-string p1, "callback not available."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 794
    :try_start_0
    invoke-interface {p1, p2}, Landroid/telephony/IIntegerConsumer;->accept(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 796
    :catch_0
    const-string p0, "SatelliteServiceCommandHandler"

    const-string p1, "callback not available."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist queryCurrentLocation()V
    .locals 9

    .line 348
    const-string v0, "queryCurrentLocation"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 351
    const-string p0, "Request for current location was already sent to LocationManager"

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    .line 352
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 355
    const-string p0, "LocationManager is null"

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    .line 356
    monitor-exit v1

    return-void

    .line 358
    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationSettingsEnabled:Z

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "fused"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationProviderEnabled:Z

    .line 360
    iget-boolean v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationSettingsEnabled:Z

    if-eqz v2, :cond_7

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    iget-object v4, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 369
    iget-object v4, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    if-eqz v4, :cond_4

    .line 370
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 371
    :cond_4
    iput-object v3, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 375
    :cond_5
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    .line 376
    iget-object v3, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "fused"

    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v5, v6}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/16 v5, 0x64

    .line 378
    invoke-virtual {v0, v5}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v7, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    new-instance v8, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    .line 376
    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 383
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCurrentLocation ex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    .line 385
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    iget-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    if-eqz v0, :cond_6

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->updateSatellitePosition()V

    :cond_6
    return-void

    .line 361
    :cond_7
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationSetting or LocationProvider not available, mIsLocationSettingsEnabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationSettingsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsLocationProviderEnabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mIsLocationProviderEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    .line 364
    monitor-exit v1

    return-void

    .line 385
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private blacklist registerCallbackSatelliteSubscriptionChanged()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSC:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string v1, "SatelliteServiceCommandHandler"

    if-nez v0, :cond_0

    .line 476
    const-string p0, "onSelectedNbIotSatelliteSubscriptionChanged - mSC is null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;-><init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSatelliteSubscriptionCallback:Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSC:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSatelliteSubscriptionCallback:Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    .line 504
    const-string p0, "registerForSelectedNbIotSatelliteSubscriptionChanged FAILED"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist registerPassiveLocationListener()V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 184
    const-string p0, "LocationManager is null"

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    :try_start_0
    const-string v1, "passive"

    sget-wide v2, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

    iget-object v5, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPassiveLocationListener:Landroid/location/LocationListener;

    const/high16 v4, 0x44fa0000    # 2000.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPassiveLocationListener ex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerUnsolMgs(I)V
    .locals 3

    .line 211
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterForSatelliteDatagramReceived(Landroid/os/Handler;)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterForSatelliteModemStateChanged(Landroid/os/Handler;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterForNtnSignalStrengthChanged(Landroid/os/Handler;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterForSatelliteCapabilitiesChanged(Landroid/os/Handler;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterFormSatelliteSupportedStateChanged(Landroid/os/Handler;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterFormSatelliteRegistrationFailure(Landroid/os/Handler;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v1, v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->unregisterForSatelliteEcefPositionReceived(Landroid/os/Handler;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerForSatelliteDatagramReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerForSatelliteModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerForNtnSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerForSatelliteCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x6a

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerFormSatelliteSupportedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x6b

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerFormSatelliteRegistrationFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object v0, v0, p1

    const/16 v1, 0x6c

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    aget-object p1, v0, p1

    const/16 v0, 0x68

    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->registerForSatelliteEcefPositionReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist updateSatelliteEcefPosition([I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 461
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastSatelliteEcefPosition:[I

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_satellite_ecef_position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_0
    move-exception p0

    .line 470
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 462
    :cond_1
    :goto_0
    const-string p0, "updateSatelliteEcefPosition - null or wrong length"

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateSatellitePosition()V
    .locals 6

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 418
    const-string p0, "updateSatellitePosition - last location is not updated yet"

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    .line 419
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->getSatelliteEcefPosition()[I

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$AzElConverter;->calculateAzEl(DD[I)[F

    move-result-object v1

    .line 423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 426
    new-instance v0, Landroid/telephony/satellite/stub/PointingInfo;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/PointingInfo;-><init>()V

    const/4 v2, 0x0

    .line 427
    aget v2, v1, v2

    iput v2, v0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteAzimuth:F

    const/4 v2, 0x1

    .line 428
    aget v1, v1, v2

    iput v1, v0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteElevation:F

    .line 430
    :try_start_1
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, v0}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 432
    const-string v0, "SatelliteServiceCommandHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatellitePosition RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 423
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v1, v1, v2

    const/16 v2, 0xa

    .line 338
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 337
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->abortSendingSatelliteDatagrams(Landroid/os/Message;)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v1, v1, v2

    const/16 v2, 0xb

    .line 236
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 235
    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/os/Message;)V

    .line 237
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    const-string v0, "SatelliteServiceCommandHandler finalized"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPassiveLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize ex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 764
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 766
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 767
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 768
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-interface {p0, v1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onTerrestrialNetworkAvailableChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 771
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTerrestrialNetworkAvailableChanged RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 752
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 754
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 755
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 756
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onRegistrationFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 759
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationFailure RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 740
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 742
    :try_start_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 743
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-interface {p0, v1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteSupportedStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 747
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSatelliteSupportedStateChanged RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 728
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 730
    :try_start_3
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 731
    check-cast p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p0

    .line 735
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSatelliteCapabilitiesChanged RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 776
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 777
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 778
    check-cast p1, [I

    .line 779
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->updateSatelliteEcefPosition([I)V

    .line 780
    iget-boolean p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    if-eqz p1, :cond_b

    .line 781
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->updateSatellitePosition()V

    return-void

    .line 713
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 715
    :try_start_4
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 716
    check-cast p1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 717
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mNtnSignalStrength:Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 718
    iget-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSignalStrengthChanged:Z

    if-eqz v0, :cond_b

    .line 719
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 723
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNtnSignalStrengthChanged RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 693
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 695
    :try_start_5
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 696
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    goto/16 :goto_2

    .line 701
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 702
    :try_start_6
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemState:Ljava/lang/Integer;

    .line 703
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, v0}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteModemStateChanged(I)V

    .line 704
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    move-exception p0

    .line 707
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSatelliteModemStateChanged RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 681
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 683
    :try_start_8
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 684
    check-cast p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 685
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1, v3}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 688
    const-string p1, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSatelliteDatagramReceived RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 669
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 670
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 671
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_3

    .line 672
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 674
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 659
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 660
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 661
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    .line 662
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 664
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 649
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 650
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 651
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_5

    .line 652
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 654
    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 639
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 640
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 641
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_6

    .line 642
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 644
    :cond_6
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 619
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 620
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 622
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/IIntegerConsumer;

    .line 623
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;

    .line 625
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 626
    check-cast p1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 627
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mNtnSignalStrength:Landroid/telephony/satellite/stub/NtnSignalStrength;

    if-eqz v0, :cond_b

    .line 629
    :try_start_9
    invoke-interface {v0, p1}, Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;->accept(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_2

    .line 631
    :catch_7
    const-string p0, "SatelliteServiceCommandHandler"

    const-string p1, "modemStateCallback not available."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 634
    :cond_7
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    goto :goto_2

    .line 606
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 607
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 609
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/IIntegerConsumer;

    .line 610
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 611
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 612
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 614
    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 596
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 597
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 598
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_9

    .line 599
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 601
    :cond_9
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->convertErrorToSatelliteResult(Lcom/android/internal/telephony/CommandException;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 577
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 578
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 580
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/IIntegerConsumer;

    .line 581
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    .line 583
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_a

    .line 584
    check-cast p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    if-eqz v0, :cond_b

    .line 586
    :try_start_a
    invoke-interface {v0, p1}, Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;->accept(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_2

    .line 588
    :catch_8
    const-string p0, "SatelliteServiceCommandHandler"

    const-string p1, "modemStateCallback not available."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 591
    :cond_a
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    :cond_b
    :goto_2
    return-void

    .line 563
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 564
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 566
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/IIntegerConsumer;

    .line 567
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IBooleanConsumer;

    .line 569
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_d

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_d

    .line 570
    check-cast p1, [I

    aget p1, p1, v3

    if-ne p1, v1, :cond_c

    goto :goto_3

    :cond_c
    move v1, v3

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IBooleanConsumer;Z)V

    return-void

    .line 572
    :cond_d
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 549
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 550
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 552
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/IIntegerConsumer;

    .line 553
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IBooleanConsumer;

    .line 555
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_f

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_f

    .line 556
    check-cast p1, [I

    aget p1, p1, v3

    if-ne p1, v1, :cond_e

    goto :goto_4

    :cond_e
    move v1, v3

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IBooleanConsumer;Z)V

    return-void

    .line 558
    :cond_f
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 527
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 528
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 530
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    .line 531
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IIntegerConsumer;

    .line 532
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_11

    .line 533
    iget-boolean p1, v1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSatellite:Z

    if-eqz p1, :cond_10

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->queryCurrentLocation()V

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    .line 537
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mNtnSignalStrength:Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 538
    iput-boolean v3, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSignalStrengthChanged:Z

    .line 539
    iput-boolean v3, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->cancelRequestCurrentLocation()V

    .line 542
    :goto_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    .line 544
    :cond_11
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
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

.method public blacklist onCurrentLocationAvailable(Landroid/location/Location;)V
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentLocationAvailable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enablePositionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 405
    :try_start_0
    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLocationRequestCancellationSignal:Landroid/os/CancellationSignal;

    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mLastFineLocation:Landroid/location/Location;

    .line 407
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    iget-boolean p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    if-eqz p1, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->updateSatellitePosition()V

    return-void

    :catchall_0
    move-exception p0

    .line 407
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 2

    .line 252
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter p2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->requestIsSatelliteEnabled(Landroid/os/Message;)V

    .line 255
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 2

    .line 260
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 261
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter p2

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->requestIsSatelliteSupported(Landroid/os/Message;)V

    .line 263
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist requestNtnSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    .locals 2

    .line 298
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 299
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter p2

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v0, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->requestNtnSignalStrength(Landroid/os/Message;)V

    .line 301
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mSatelliteSubscriptionCallback:Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->registerCallbackSatelliteSubscriptionChanged()V

    .line 274
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 275
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter p2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->requestSatelliteCapabilities(Landroid/os/Message;)V

    .line 277
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    .locals 3

    .line 243
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    .line 246
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 245
    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/os/Message;)V

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 2

    .line 290
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 291
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter p2

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v0, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->requestSatelliteModemState(Landroid/os/Message;)V

    .line 293
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mCi:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    .line 284
    invoke-virtual {p0, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 283
    invoke-interface {v1, p1, p2, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/os/Message;)V

    .line 285
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneIdLock:Ljava/lang/Object;

    monitor-enter p1

    .line 199
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->registerUnsolMgs(I)V

    .line 200
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mModemState:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteModemStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 207
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 200
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .locals 2

    .line 318
    const-string v0, "startSendingNtnSignalStrength"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSignalStrengthChanged:Z

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mNtnSignalStrength:Landroid/telephony/satellite/stub/NtnSignalStrength;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mListeners:Landroid/telephony/satellite/stub/ISatelliteListener;

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    invoke-interface {v1, v0}, Landroid/telephony/satellite/stub/ISatelliteListener;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 305
    const-string v0, "startSendingSatellitePointingInfo"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->updateSatellitePosition()V

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 330
    const-string v0, "stopSendingNtnSignalStrength"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSignalStrengthChanged:Z

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 312
    const-string v0, "stopSendingSatellitePointingInfo"

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->mEnableSendingSatellitePositionInfo:Z

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->processRequestCallback(Landroid/telephony/IIntegerConsumer;I)V

    return-void
.end method
