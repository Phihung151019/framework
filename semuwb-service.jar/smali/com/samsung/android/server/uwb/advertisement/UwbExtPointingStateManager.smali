.class Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;
.super Ljava/lang/Object;
.source "UwbExtPointingStateManager.java"


# static fields
.field private static final HEAD_OF_RECENT_AZIMUTH_ARRAY:I = 0x0

.field private static final SIZE_OF_AZIMUTH_TO_CHECK:I = 0x5

.field private static final STATE_NOT_POINTING:I = 0x0

.field private static final STATE_POINTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UwbExtPointingStateManager"

.field private static final TRUSTED_VALUE_OF_AZIMUTH_VARIANCE:I = 0x5

.field private static final TRUSTED_VALUE_OF_PITCH_HIGH_THRESHOLD:I = -0x2d

.field private static final TRUSTED_VALUE_OF_PITCH_LOW_THRESHOLD:I = -0x73


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOrientation:[F

.field private mPointingState:I

.field private final mRecentAzimuths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZngGDchiMqAVhfuWk7wAxhdSWf0(Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->lambda$registerSensorListener$0(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mOrientation:[F

    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mPointingState:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mRecentAzimuths:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->registerSensorListener(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private getVarianceOfAzimuth()D
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mRecentAzimuths:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    .line 85
    .local v0, "azimuthArray":[D
    invoke-static {v0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->getVariance([D)D

    move-result-wide v1

    return-wide v1
.end method

.method private isPointingState(DD)Z
    .locals 2
    .param p1, "pitch"    # D
    .param p3, "varianceOfAzimuth"    # D

    .line 89
    const-wide v0, -0x3fa3400000000000L    # -115.0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const-wide v0, -0x3fb9800000000000L    # -45.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$registerSensorListener$0(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 42
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mOrientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mOrientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mOrientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 47
    :cond_0
    return-void
.end method

.method private registerSensorListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->registerListener(Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;)V

    .line 49
    return-void
.end method

.method private updateRecentAzimuths(D)V
    .locals 2
    .param p1, "azimuth"    # D

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mRecentAzimuths:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mRecentAzimuths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mRecentAzimuths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method isPointingState()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mPointingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method updatePointingState()V
    .locals 9

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mOrientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v2, v0

    .line 57
    .local v2, "azimuth":D
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mOrientation:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    float-to-double v5, v0

    .line 59
    .local v5, "pitch":D
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->updateRecentAzimuths(D)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mRecentAzimuths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x5

    if-eq v0, v7, :cond_0

    .line 61
    iput v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mPointingState:I

    .line 62
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->getVarianceOfAzimuth()D

    move-result-wide v7

    .line 67
    .local v7, "varianceOfAzimuth":D
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->isPointingState(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    move v1, v4

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->mPointingState:I

    .line 69
    return-void
.end method
