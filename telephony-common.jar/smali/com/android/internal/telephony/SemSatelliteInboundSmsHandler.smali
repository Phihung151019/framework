.class public Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "SemSatelliteInboundSmsHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemSatelliteInboundSmsHandler"


# instance fields
.field private final blacklist mBatteryManager:Landroid/os/BatteryManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mGetIotStateCount:I

.field private blacklist mInterval:I

.field private blacklist mLastLocation:Landroid/location/Location;

.field private final blacklist mLocationListener:Landroid/location/LocationListener;

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private blacklist mNumOfFix:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

.field private blacklist mShouldSend:Z

.field private blacklist mUniqID:I

.field private blacklist mUserConfirmReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldSend(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mShouldSend:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserConfirmReceiver(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUserConfirmReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastLocation(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLastLocation:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldSend(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mShouldSend:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mposFailed(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->posFailed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendIOTstring(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->sendIOTstring(Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartIOTMode(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->startIOTMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 7

    .line 71
    const-string v1, "SemSatelliteInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 111
    new-instance p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)V

    iput-object p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationListener:Landroid/location/LocationListener;

    .line 127
    new-instance p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$2;-><init>(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)V

    iput-object p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUserConfirmReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object v4, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    const-string p0, "location"

    invoke-virtual {v2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    iput-object p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 74
    const-class p0, Landroid/os/BatteryManager;

    invoke-virtual {v2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    iput-object p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mBatteryManager:Landroid/os/BatteryManager;

    .line 75
    invoke-static {v2}, Lcom/android/internal/telephony/SemPhoneFactory;->getSatelliteCommandsInterface(Landroid/content/Context;)Lcom/android/internal/telephony/SatelliteCommandsInterface;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 p0, 0x0

    .line 76
    iput p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUniqID:I

    .line 77
    iput p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mGetIotStateCount:I

    .line 78
    iput p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    .line 79
    iput p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    const/4 p1, 0x0

    .line 80
    iput-object p1, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLastLocation:Landroid/location/Location;

    .line 81
    iput-boolean p0, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mShouldSend:Z

    .line 82
    iput-object v2, v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    .line 83
    const-string p0, "created SemSatelliteInboundSmsHandler"

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;I)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private static blacklist convertBatteryLevel(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x19

    if-gt p0, v0, :cond_0

    .line 391
    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v1, 0x32

    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    .line 393
    const-string p0, "1"

    return-object p0

    :cond_1
    if-le p0, v1, :cond_2

    const/16 v0, 0x4b

    if-ge p0, v0, :cond_2

    .line 395
    const-string p0, "2"

    return-object p0

    .line 397
    :cond_2
    const-string p0, "3"

    return-object p0
.end method

.method private static blacklist convertDirection(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-le p0, v0, :cond_1

    move p0, v0

    .line 385
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertEvaluation(D)Ljava/lang/String;
    .locals 0

    double-to-int p0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p1, 0xffff

    if-le p0, p1, :cond_1

    move p0, p1

    .line 362
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertLatitude(D)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 315
    const-string v0, "N"

    goto :goto_0

    :cond_0
    const-string v0, "S"

    .line 316
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v2

    double-to-int v4, p0

    int-to-double v5, v4

    sub-double/2addr p0, v5

    mul-double/2addr p0, v2

    double-to-int v2, p0

    int-to-double v5, v2

    sub-double/2addr p0, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, v5

    .line 329
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p1, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s.%d.%02d.%02d.%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertLongitude(D)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 335
    const-string v0, "E"

    goto :goto_0

    :cond_0
    const-string v0, "W"

    .line 336
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v2

    double-to-int v4, p0

    int-to-double v5, v4

    sub-double/2addr p0, v5

    mul-double/2addr p0, v2

    double-to-int v2, p0

    int-to-double v5, v2

    sub-double/2addr p0, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, v5

    .line 349
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p1, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s.%d.%02d.%02d.%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertSpeed(F)Ljava/lang/String;
    .locals 1

    float-to-int p0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    .line 373
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getLocation()V
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    .line 280
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 281
    sget-object v1, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last location time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->sendIOTstring(Landroid/location/Location;)V

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->sendIOTstring(Landroid/location/Location;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mShouldSend:Z

    .line 287
    sget-object p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v0, "location is null. Location will be sent later"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleUserConfirm(I[B)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 261
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.PPSMS_USERCONFIRM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v3, "userconfirm"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v3, "id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 264
    const-string p2, "com.samsung.android.satellite.pointing.ui"

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object p2, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-ne p1, v1, :cond_2

    .line 269
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUserConfirmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.PPSMS_USERCONFIRM_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/16 p1, 0x24

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x61a8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->startIOTMode()V

    return-void
.end method

.method public static blacklist makeSatInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;
    .locals 6

    .line 101
    new-instance v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 103
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-object v0
.end method

.method private blacklist parsePosMessage([B)V
    .locals 9

    const/4 v0, 0x1

    .line 227
    :try_start_0
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 228
    sget-object v2, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePosMessage messageType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const-string v3, ", mUniqID: "

    const/4 v4, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    .line 230
    :try_start_1
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    .line 231
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x8

    shl-int/2addr v1, v5

    .line 232
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    const/16 v6, 0x9

    .line 233
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x8

    const/16 v6, 0xa

    .line 234
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/16 v6, 0xc

    .line 235
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUniqID:I

    .line 237
    array-length v6, p1

    const/16 v7, 0xd

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    .line 238
    array-length v8, p1

    sub-int/2addr v8, v7

    invoke-static {p1, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userConfirm: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", numOfFix: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", interval: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUniqID:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmId : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    mul-int/lit16 v5, v5, 0x3e8

    .line 243
    iput v5, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    .line 244
    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->handleUserConfirm(I[B)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    const/4 v0, 0x4

    .line 246
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUniqID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUniqID:I

    if-ne p1, v0, :cond_1

    .line 250
    iput v4, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUniqID:I

    .line 251
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->returnToNormalRegi()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 255
    :catch_0
    const-string p1, "userData length is short"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist posFailed(Ljava/lang/String;)V
    .locals 4

    .line 426
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 427
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "posFailed. result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->sendLocationUserPermit(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist returnToNormalRegi()V
    .locals 2

    const/4 v0, 0x0

    .line 413
    iput v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mGetIotStateCount:I

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/16 v0, 0x25

    .line 415
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v0, 0x22

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v0, 0x23

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.PPSMS_IOT_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->unregisterForIotRegistrationStateChanged(Landroid/os/Handler;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->disableIotMode(Landroid/os/Message;)V

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {p0, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->startNetworkSearch(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist sendIOTstring(Landroid/location/Location;)V
    .locals 7

    .line 292
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 293
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->convertLatitude(D)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->convertLongitude(D)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->convertEvaluation(D)Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->convertSpeed(F)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->convertDirection(F)Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v5, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->convertBatteryLevel(I)Ljava/lang/String;

    move-result-object v5

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationIOTString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->sendLocationData(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist startIOTMode()V
    .locals 8

    .line 404
    sget-object v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v1, "startIOTMode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationManager:Landroid/location/LocationManager;

    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    int-to-long v4, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mLocationListener:Landroid/location/LocationListener;

    const-string v3, "gps"

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->cleanupNetworkInfo(Landroid/os/Message;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x21

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->registerForIotRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->enableIotMode(Landroid/os/Message;)V

    const/16 v0, 0x22

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method


# virtual methods
.method protected blacklist acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 0

    .line 525
    const-string p1, "no ack"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I
    .locals 14

    .line 149
    const-string v0, "1"

    if-nez p1, :cond_0

    .line 150
    sget-object v1, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v2, "dispatchMessage: message is null"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v2, "SISH_dispatchMessageRadioSpecific_NullMsg"

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x2

    return p0

    .line 155
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 156
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .line 158
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_1

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " | DCS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 164
    const-string v4, " | da : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "(?<=.{2}).(?=.{2})"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v2, :cond_3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    sget-object v5, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delivering SMS information : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v3

    const/16 v4, 0x1d

    const/4 v6, 0x1

    if-eq v3, v4, :cond_a

    .line 173
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17400010490"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    .line 179
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 180
    const-string v0, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v6

    .line 184
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isFullStorage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v3, v4, :cond_6

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v2, "SISH_dispatchMessageRadioSpecific_OutOfMemory"

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x3

    return p0

    .line 193
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v5

    .line 193
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 196
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v12, 0x17

    .line 200
    const-string v13, "SISH_dispatchMessageRadioSpecific_MdmDiscard"

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_7

    const/16 v5, 0xb84

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v5, v2, :cond_7

    .line 202
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->isMMSBlocked(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, v0, v13, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v12

    .line 206
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, v0, v13, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v12

    .line 209
    :cond_8
    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->getEncoding()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 211
    invoke-virtual/range {v4 .. v11}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    const-string v1, "fail to store blocked sms on mdm database"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, v0, v13, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v12

    .line 222
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result p0

    return p0

    .line 174
    :cond_a
    :goto_1
    const-string v0, "Satellite Positioning Request message"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->parsePosMessage([B)V

    return v6
.end method

.method public blacklist dispose()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->unregisterRegistrantsForSatSms()V

    return-void
.end method

.method protected blacklist getEncoding()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .locals 0

    .line 540
    const-string p0, "3gpp"

    return-object p0
.end method

.method protected blacklist handleSatelliteEvent(Landroid/os/Message;)V
    .locals 8

    .line 435
    sget-object v0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSatelliteEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x20

    const/16 v3, 0x23

    const-string v4, ", numOfFix= "

    const-wide/16 v5, 0x2710

    const/16 v7, 0x22

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 508
    :pswitch_0
    const-string v1, "EVENT_SEND_LOCATION_DATA_RESULT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    .line 509
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 510
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    .line 511
    const-string p1, "Send location data success"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_0
    const-string p1, "Send location data error"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logi(Ljava/lang/String;)V

    .line 515
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    if-gtz p1, :cond_5

    .line 516
    const-string p1, "Send location data done. Finish to send location"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->returnToNormalRegi()V

    return-void

    .line 500
    :pswitch_1
    const-string p1, "EVENT_FINISH_SEND_IOTPOS"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 501
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mShouldSend:Z

    if-eqz p1, :cond_1

    .line 502
    const-string p1, "Location fail"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string p1, "3"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->posFailed(Ljava/lang/String;)V

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->returnToNormalRegi()V

    return-void

    .line 495
    :pswitch_2
    const-string p1, "EVENT_USERCONFIRM_TIMEOUT"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mUserConfirmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 497
    const-string p1, "5"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->posFailed(Ljava/lang/String;)V

    return-void

    .line 473
    :pswitch_3
    const-string p1, "EVENT_LOCATION_TIME_REACHED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 474
    iget p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    if-lez p1, :cond_2

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send location update. interval= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->getLocation()V

    .line 477
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    .line 479
    :cond_2
    const-string p1, "Finish to send location"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->returnToNormalRegi()V

    return-void

    .line 484
    :pswitch_4
    const-string p1, "EVENT_SATELLITE_IOT_REG_STATE_TIMEOUT"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 485
    iget p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mGetIotStateCount:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mGetIotStateCount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_3

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry GetIOTregiState. count= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mGetIotStateCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->getIotRegistrationState(Landroid/os/Message;)V

    .line 488
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    .line 490
    :cond_3
    const-string p1, "2"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->posFailed(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->returnToNormalRegi()V

    return-void

    .line 469
    :pswitch_5
    const-string p1, "EVENT_SATELLITE_IOT_REG_STATE_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->getIotRegistrationState(Landroid/os/Message;)V

    return-void

    .line 439
    :pswitch_6
    const-string v1, "EVENT_GET_IOT_REGI_RESPONSE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 441
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 442
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 443
    new-instance v1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    invoke-direct {v1, p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;-><init>(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V

    .line 444
    invoke-virtual {v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 445
    const-string p1, "IOT is registered"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.PPSMS_IOT_ENTER"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->unregisterForIotRegistrationStateChanged(Landroid/os/Handler;)V

    const/16 p1, 0x25

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start location update. interval= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    const-string v2, "1"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Lcom/android/internal/telephony/SatelliteCommandsInterface;->sendLocationUserPermit(Ljava/lang/String;Landroid/os/Message;)V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->getLocation()V

    .line 453
    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 456
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mInterval:I

    int-to-long v2, v0

    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 457
    iget p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->mNumOfFix:I

    :cond_5
    :goto_1
    return-void

    .line 460
    :cond_6
    const-string p1, "IOT register fails."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    .line 464
    :cond_7
    const-string p1, "IOT register error"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logi(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist is3gpp2()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerRegistrantsForSatSms()V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method protected blacklist removeDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist unregisterRegistrantsForSatSms()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    return-void
.end method
