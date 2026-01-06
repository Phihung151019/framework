.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L

.field private static final LOCATION_MODE_LOCATIONMANAGER:I = 0x1

.field private static final LOCATION_MODE_SLOCATION:I = 0x2

.field private static final LOCFROMLOCATIONMANAGER:I = 0x1

.field private static final LOCFROMSLOCATION:I = 0x2


# instance fields
.field private final CURLOC:Ljava/lang/String;

.field private LocRequestSource:I

.field private filter:Landroid/content/IntentFilter;

.field private mBrReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetLocRequestSource(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrReceiver(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrePosition(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputLocRequestSource(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGpsSatellites(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterGpsListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterWpsListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterGpsListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterWpsListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 159
    const-string v1, "com.samsung.android.contextaware.SLOCATION"

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->CURLOC:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I

    .line 341
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 485
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    .line 195
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 199
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    .line 202
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mContext:Landroid/content/Context;

    .line 205
    return-void
.end method

.method private clearTimeOutCheckService()V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 1094
    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 1098
    :cond_0
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 856
    return-object v1

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private registerGpsListener()V
    .locals 8

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 1112
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1114
    return-void

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1122
    return-void
.end method

.method private registerWpsListener()V
    .locals 9

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 1136
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1138
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iget-object v8, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    const-string v3, "network"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1150
    :cond_1
    return-void
.end method

.method private unregisterGpsListener()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 1164
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1166
    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1172
    return-void
.end method

.method private unregisterWpsListener()V
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 1186
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1188
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1194
    return-void
.end method

.method private updateEmptyPosition()V
    .locals 15

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 1060
    return-void

    .line 1064
    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    .line 1066
    .local v0, "emptyPosition":Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    .line 1068
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    .line 1070
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    .line 1072
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    .line 1074
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    .line 1066
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    .line 1076
    return-void
.end method

.method private updateGpsPosition()V
    .locals 15

    .line 998
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 1000
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1006
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1008
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1010
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1012
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1014
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    .line 1006
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    .line 1016
    return-void
.end method

.method private updateWpsPosition()V
    .locals 15

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 1030
    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1036
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1038
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1040
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1042
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1044
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    .line 1036
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    .line 1046
    return-void
.end method


# virtual methods
.method protected currentLocUpdate(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .line 288
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocUpdate : provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v4

    .line 293
    .local v4, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 294
    .local v5, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 295
    .local v7, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 296
    .local v1, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 297
    .local v13, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    .line 298
    .local v14, "accuracy":F
    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 299
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v9

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v11

    .line 298
    move-wide/from16 v16, v9

    move-wide v9, v5

    move-wide/from16 v5, v16

    move-wide/from16 v16, v11

    move-wide v11, v7

    move-wide/from16 v7, v16

    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .local v9, "latitude":D
    .local v11, "longitude":D
    invoke-static/range {v5 .. v12}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v5

    .line 302
    move-wide v7, v11

    .end local v11    # "longitude":D
    .local v5, "distance":D
    .restart local v7    # "longitude":D
    move-wide v11, v5

    move-wide v5, v9

    move-wide v9, v1

    .end local v1    # "altitude":D
    .local v5, "latitude":D
    .local v9, "altitude":D
    .local v11, "distance":D
    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/4 v3, 0x4

    const/4 v15, 0x0

    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    .line 303
    const-string v1, "CurrentLUpda : SLO update! "

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 307
    .end local v4    # "utcTime":[I
    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .end local v9    # "altitude":D
    .end local v11    # "distance":D
    .end local v13    # "speed":F
    .end local v14    # "accuracy":F
    :cond_0
    return-void
.end method

.method public final disable()V
    .locals 4

    .line 788
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 790
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 792
    return-void

    .line 798
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-nez v0, :cond_1

    .line 800
    return-void

    .line 806
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 808
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 810
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 838
    return-void
.end method

.method public final enable(I)V
    .locals 4
    .param p1, "duration"    # I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 611
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 613
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 621
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 623
    return-void

    .line 629
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 631
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 639
    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 645
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const v1, 0x461c4000    # 10000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 647
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 649
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 653
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 657
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 659
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 661
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 663
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    return-void
.end method

.method public final enable(II)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "param"    # I

    .line 695
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 703
    :pswitch_0
    const/16 v0, 0xa

    .line 706
    .local v0, "duration":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 707
    const-string v1, "Looper is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 708
    return-void

    .line 710
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v1, :cond_1

    .line 711
    const-string v1, "mEnable value is true."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 714
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 716
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 717
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const v2, 0x461c4000    # 10000.0f

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 718
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 719
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 721
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 722
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 723
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 724
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 727
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$5;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    goto :goto_0

    .line 698
    .end local v0    # "duration":I
    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->enable(I)V

    .line 699
    nop

    .line 737
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 227
    nop

    .line 229
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 233
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 245
    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const v1, 0x461c4000    # 10000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 247
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 249
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->filter:Landroid/content/IntentFilter;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.contextaware.SLOCATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 950
    return-void

    .line 956
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 960
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 964
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateGpsPosition()V

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    .line 972
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0

    .line 976
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    .line 982
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    .line 986
    :goto_0
    return-void
.end method

.method public final occurTimeOut()V
    .locals 0

    .line 1216
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 1218
    return-void
.end method

.method public final registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 904
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 906
    return-void
.end method

.method protected removeCurrentLoc()V
    .locals 0

    .line 776
    return-void
.end method

.method protected requestCurrentLoc(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 767
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 327
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 329
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 335
    return-void
.end method

.method public final unregisterCurrentPositionObserver()V
    .locals 1

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 928
    return-void
.end method
