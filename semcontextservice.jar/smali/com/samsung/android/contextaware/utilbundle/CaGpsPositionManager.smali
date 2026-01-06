.class public Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# instance fields
.field private mDisabler:Landroid/os/Handler;

.field private mEnable:Z

.field private mGpsManager:Landroid/location/LocationManager;

.field private mGpsTime:J

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLooper:Landroid/os/Looper;

.field private mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private preLatitude:D

.field private preLongitude:D


# direct methods
.method static bridge synthetic -$$Nest$fgetmGpsManager(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationListener(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLooper(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpreLatitude(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreLongitude(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyListener(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->notifyListener(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    .line 76
    return-void
.end method

.method private notifyListener(Landroid/location/Location;)V
    .locals 16
    .param p1, "loc"    # Landroid/location/Location;

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v1, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v4

    .line 173
    .local v4, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 175
    .local v1, "bun":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 176
    .local v2, "numSat":I
    if-eqz v1, :cond_1

    .line 177
    const-string v3, "satellites"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v15, v2

    goto :goto_0

    .line 176
    :cond_1
    move v15, v2

    .line 180
    .end local v2    # "numSat":I
    .local v15, "numSat":I
    :goto_0
    iget-wide v5, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    iget-wide v7, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    .line 180
    invoke-static/range {v5 .. v12}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v11

    .line 184
    .local v11, "distance":D
    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    .line 184
    const/4 v3, 0x1

    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    .line 190
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-nez v0, :cond_1

    .line 247
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 262
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    :cond_2
    return-void
.end method

.method public final enable()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 203
    return-void

    .line 206
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    .line 211
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 214
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    :cond_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iget-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    nop

    .line 89
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 96
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    return v0
.end method

.method public notifyCurrentPositionObserver()V
    .locals 0

    .line 297
    return-void
.end method

.method public registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 285
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 286
    return-void
.end method

.method public setGpsUpdateTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 278
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 279
    return-void
.end method

.method public final terminateManager()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method

.method public unregisterCurrentPositionObserver()V
    .locals 1

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 292
    return-void
.end method
