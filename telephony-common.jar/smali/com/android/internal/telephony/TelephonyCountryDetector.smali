.class public Lcom/android/internal/telephony/TelephonyCountryDetector;
.super Landroid/os/Handler;
.source "TelephonyCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;,
        Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

.field protected static final blacklist WAIT_FOR_LOCATION_UPDATE_REQUEST_QUOTA_RESET_TIMEOUT_MILLIS:J

.field private static blacklist sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mGeocoder:Landroid/location/Geocoder;

.field private blacklist mIsCountryCodesOverridden:Z

.field private blacklist mIsLocationUpdateRequested:Z

.field private blacklist mIsWifiNetworkConnected:Z

.field private blacklist mLocationCountryCode:Ljava/lang/String;

.field private blacklist mLocationCountryCodeUpdatedTimestampNanos:J

.field private final blacklist mLocationListener:Landroid/location/LocationListener;

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverriddenLocationCountryCode:Ljava/lang/String;

.field private blacklist mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

.field private final blacklist mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public static synthetic blacklist $r8$lambda$__R5R1uRvpTXsaaYS_kZ5kaPsKo(Ljava/lang/Integer;)Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;
    .locals 1

    .line 479
    new-instance p0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector-IA;)V

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uYlIabF6-HIV3b-pYtZOOQms6-c(Lcom/android/internal/telephony/TelephonyCountryDetector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->lambda$initialize$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misInternetAvailable(Lcom/android/internal/telephony/TelephonyCountryDetector;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isInternetAvailable(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendRequestAsync(Lcom/android/internal/telephony/TelephonyCountryDetector;ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyCountryDetector;->sendRequestAsync(ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 68
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->DEBUG:Z

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->WAIT_FOR_LOCATION_UPDATE_REQUEST_QUOTA_RESET_TIMEOUT_MILLIS:J

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/location/LocationManager;Landroid/net/ConnectivityManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 3

    .line 197
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    .line 90
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCode:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    const-wide/16 v1, 0x0

    .line 102
    iput-wide v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCodeUpdatedTimestampNanos:J

    .line 105
    iput-wide v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    .line 113
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 118
    new-instance p1, Lcom/android/internal/telephony/TelephonyCountryDetector$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/TelephonyCountryDetector$1;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    .line 198
    iput-object p3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 199
    new-instance p1, Landroid/location/Geocoder;

    invoke-direct {p1, p2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mGeocoder:Landroid/location/Geocoder;

    .line 200
    iput-object p4, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 201
    iput-object p5, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->initialize()V

    return-void
.end method

.method private blacklist evaluateNotifyWifiConnectivityStateChangedEvent(Z)V
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    if-eq p1, v0, :cond_0

    .line 513
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    .line 514
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "evaluateNotifyWifiConnectivityStateChangedEvent: wifi connectivity state has changed to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist evaluateRequestingLocationUpdates()V
    .locals 1

    .line 574
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->shouldRequestLocationUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->registerForLocationUpdates()V

    return-void

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->unregisterForLocationUpdates()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/TelephonyCountryDetector;
    .locals 9

    const-class v1, Lcom/android/internal/telephony/TelephonyCountryDetector;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "TelephonyCountryDetector"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v3, Lcom/android/internal/telephony/TelephonyCountryDetector;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-class v0, Landroid/location/LocationManager;

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/LocationManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/ConnectivityManager;

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/TelephonyCountryDetector;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/location/LocationManager;Landroid/net/ConnectivityManager;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v3, Lcom/android/internal/telephony/TelephonyCountryDetector;->sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 223
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->sInstance:Lcom/android/internal/telephony/TelephonyCountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist getLastKnownLocation()Landroid/location/Location;
    .locals 7

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private blacklist getNetworkCountryIsoForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 533
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 535
    const-string p0, "getNetworkCountryIsoForPhone: serviceStateTracker is null"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logw(Ljava/lang/String;)V

    return-object p1

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-nez p0, :cond_1

    .line 541
    const-string p0, "getNetworkCountryIsoForPhone: localeTracker is null"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logw(Ljava/lang/String;)V

    return-object p1

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleEventWifiConnectivityStateChanged(Z)V
    .locals 2

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEventWifiConnectivityStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateNotifyWifiConnectivityStateChangedEvent(Z)V

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    return-void
.end method

.method private blacklist handleNetworkCountryCodeChangedEvent(Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;)V
    .locals 4

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentNetworkCountryCodeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 474
    iget-object v0, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    iget v2, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 478
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda0;-><init>()V

    .line 477
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    .line 480
    iget v2, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    iput v2, v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getElapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    .line 482
    iget-object p1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 483
    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    .line 484
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkCountryCodeChangedEvent: Got invalid or empty country code for phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    iget v2, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 490
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 489
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    iget p1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 494
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getElapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 498
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    .line 501
    const-string p1, "mCountryCodeChangedRegistrants.notifyRegistrants()"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 502
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 498
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private blacklist initialize()V
    .locals 3

    .line 376
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    .line 384
    new-instance v0, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private blacklist isGeoCoderImplemented()Z
    .locals 0

    .line 389
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p0

    return p0
.end method

.method private blacklist isInternetAvailable(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 p0, 0xc

    .line 593
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    .line 594
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 595
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWifiConnected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return p0
.end method

.method private blacklist isLocationUpdateRequestQuotaExceeded()Z
    .locals 1

    const/4 v0, 0x5

    .line 453
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private static blacklist isMockModemAllowed()Z
    .locals 2

    .line 630
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyCountryDetector;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "persist.radio.allow_mock_modem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.boot.radio.allow_mock_modem"

    .line 631
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

.method private static blacklist isValid(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 626
    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$initialize$0()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->registerForWifiConnectivityStateChanged()V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 655
    const-string v0, "TelephonyCountryDetector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 663
    const-string v0, "TelephonyCountryDetector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logw(Ljava/lang/String;)V
    .locals 1

    .line 659
    const-string v0, "TelephonyCountryDetector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist registerForLocationUpdates()V
    .locals 8

    .line 395
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isGeoCoderImplemented()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const-string p0, "Geocoder is not implemented on the device"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    if-eqz v0, :cond_1

    .line 402
    const-string p0, "Already registered for location updates"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 403
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 406
    :cond_1
    const-string v0, "Registering for location updates"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "passive"

    sget-wide v4, Lcom/android/internal/telephony/TelephonyCountryDetector;->TIME_BETWEEN_LOCATION_UPDATES_MILLIS:J

    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    const/high16 v6, 0x44fa0000    # 2000.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 419
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist registerForWifiConnectivityStateChanged()V
    .locals 3

    .line 549
    const-string v0, "registerForWifiConnectivityStateChanged"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 550
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 551
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 552
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 554
    new-instance v1, Lcom/android/internal/telephony/TelephonyCountryDetector$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyCountryDetector$2;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V

    .line 570
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private blacklist sendRequestAsync(ILjava/lang/Object;)V
    .locals 0

    .line 467
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist setLocationCountryCode(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set location country code to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 522
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const-string p0, "Received invalid location country code"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCode:Ljava/lang/String;

    .line 527
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCodeUpdatedTimestampNanos:J

    .line 528
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist shouldRequestLocationUpdate()Z
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getCurrentNetworkCountryIso()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isWifiNetworkConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist unregisterForLocationUpdates()V
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    if-nez v1, :cond_0

    .line 438
    const-string p0, "Location update was not requested yet"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isLocationUpdateRequestQuotaExceeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    const-string p0, "Removing location updates will be re-evaluated after the quota is refilled"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 443
    monitor-exit v0

    return-void

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    .line 446
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsLocationUpdateRequested:Z

    const/4 v1, 0x5

    .line 447
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/internal/telephony/TelephonyCountryDetector;->WAIT_FOR_LOCATION_UPDATE_REQUEST_QUOTA_RESET_TIMEOUT_MILLIS:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 449
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist getCachedLocationCountryIsoInfo()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverriddenLocationCountryCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 262
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

    .line 263
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCode:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLocationCountryCodeUpdatedTimestampNanos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 266
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getCachedNetworkCountryIsoInfo()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    if-eqz v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverriddenCachedNetworkCountryCodes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    .line 279
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 283
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mNetworkCountryCodeInfoPerPhone:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    .line 286
    iget-object v3, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    .line 288
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 289
    :cond_2
    iget-object v3, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    iget-wide v4, v2, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_3
    monitor-exit v0

    return-object v1

    .line 293
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getCurrentNetworkCountryIso()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverriddenCurrentNetworkCountryCodes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    .line 233
    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 236
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 240
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getNetworkCountryIsoForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 244
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentNetworkCountryIso: invalid countryIso="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for phoneId="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 236
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected blacklist getElapsedRealtimeNanos()J
    .locals 2

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CountryDetectorHandler: unexpected message code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logw(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->evaluateRequestingLocationUpdates()V

    return-void

    .line 309
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->handleEventWifiConnectivityStateChanged(Z)V

    return-void

    .line 306
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->handleNetworkCountryCodeChangedEvent(Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;)V

    return-void

    .line 303
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->setLocationCountryCode(Landroid/util/Pair;)V

    return-void

    .line 300
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->queryCountryCodeForLocation(Landroid/location/Location;)V

    return-void
.end method

.method public blacklist isWifiNetworkConnected()Z
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiNetworkConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 588
    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsWifiNetworkConnected:Z

    return p0
.end method

.method public blacklist onNetworkCountryCodeChanged(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2

    .line 326
    new-instance v0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector-IA;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->phoneId:I

    .line 328
    iput-object p2, v0, Lcom/android/internal/telephony/TelephonyCountryDetector$NetworkCountryCodeInfo;->countryCode:Ljava/lang/String;

    const/4 p1, 0x3

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->sendRequestAsync(ILjava/lang/Object;)V

    return-void
.end method

.method protected blacklist queryCountryCodeForLocation(Landroid/location/Location;)V
    .locals 9

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mGeocoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    new-instance v6, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;

    .line 367
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-direct {v6, p0, v7, v8}, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;-><init>(Lcom/android/internal/telephony/TelephonyCountryDetector;J)V

    const/4 v5, 0x1

    .line 366
    invoke-virtual/range {v0 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    return-void
.end method

.method public blacklist registerForCountryCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForWifiConnectivityStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/android/internal/telephony/TelephonyCountryDetector;->isMockModemAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 339
    const-string p0, "setCountryCodes: mock modem is not allowed"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    return v1

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCountryCodes: currentNetworkCountryCodes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 343
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locationCountryCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locationCountryCodeTimestampNanos"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cachedNetworkCountryCodes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 347
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->logd(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 351
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 353
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mIsCountryCodesOverridden:Z

    .line 354
    iput-object p3, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCachedNetworkCountryCodes:Ljava/util/Map;

    .line 355
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenCurrentNetworkCountryCodes:Ljava/util/List;

    .line 356
    iput-object p4, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCode:Ljava/lang/String;

    .line 357
    iput-wide p5, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mOverriddenLocationCountryCodeUpdatedTimestampNanos:J

    .line 360
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForCountryCodeChanged(Landroid/os/Handler;)V
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mCountryCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForWifiConnectivityStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector;->mWifiConnectivityStateChangedRegistrantList:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
