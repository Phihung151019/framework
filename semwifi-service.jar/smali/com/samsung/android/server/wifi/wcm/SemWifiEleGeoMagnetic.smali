.class public Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;,
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;
    }
.end annotation


# static fields
.field private static final LOG_SAMPLINGTIME:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SemWifiEleGeoMagnetic"


# instance fields
.field acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

.field private accSensor:Landroid/hardware/Sensor;

.field arrAccData:[F

.field arrMagData:[F

.field baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

.field baroData:F

.field private baroSensor:Landroid/hardware/Sensor;

.field calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

.field private eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

.field eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

.field gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

.field private handler:Landroid/os/Handler;

.field private isAPISupportedFlag:Z

.field private mContext:Landroid/content/Context;

.field private mPrevState:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

.field private magSensor:Landroid/hardware/Sensor;

.field private thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mEleDetectNotifier(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->EleDetectNotifier()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    .line 8
    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->handler:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->accSensor:Landroid/hardware/Sensor;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->magSensor:Landroid/hardware/Sensor;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroSensor:Landroid/hardware/Sensor;

    .line 48
    .line 49
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-string v0, "sensor"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/hardware/SensorManager;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->accSensor:Landroid/hardware/Sensor;

    .line 78
    .line 79
    const-string v0, "SemWifiEleGeoMagnetic"

    .line 80
    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    const-string p1, "GeoMagEleAPI is not supported because accelerometer is not supported"

    .line 84
    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 89
    .line 90
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 91
    .line 92
    const/4 v2, 0x2

    .line 93
    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->magSensor:Landroid/hardware/Sensor;

    .line 98
    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    const-string p1, "GeoMagEleAPI is not supported because magnetometer is not supported"

    .line 102
    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 107
    .line 108
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    .line 110
    const/4 v2, 0x6

    .line 111
    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroSensor:Landroid/hardware/Sensor;

    .line 116
    .line 117
    if-nez p1, :cond_2

    .line 118
    .line 119
    const-string p1, "GeoMagEleAPI is not supported because barometer is not supported"

    .line 120
    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 125
    .line 126
    :cond_2
    return-void

    .line 127
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 128
    .line 129
    return-void
.end method

.method private EleDetectNotifier()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    iput v3, v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->x:F

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aget v4, v1, v3

    .line 12
    .line 13
    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->y:F

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    aget v1, v1, v4

    .line 17
    .line 18
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->z:F

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 21
    .line 22
    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    .line 23
    .line 24
    iput v5, v1, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;->data:F

    .line 25
    .line 26
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 27
    .line 28
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    .line 29
    .line 30
    aget v7, v6, v2

    .line 31
    .line 32
    iput v7, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 33
    .line 34
    aget v3, v6, v3

    .line 35
    .line 36
    iput v3, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 37
    .line 38
    aget v3, v6, v4

    .line 39
    .line 40
    iput v3, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    iget-object v3, v3, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 59
    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 64
    .line 65
    invoke-virtual {v2, v3, v0, v1, v5}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_Feature(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Detect(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;->onEleDetect()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;->onEleNotDetect()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    .line 98
    .line 99
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_UpdateBaroIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_UpdateMagIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V

    .line 115
    .line 116
    .line 117
    return v0

    .line 118
    :cond_3
    :goto_1
    return v2
.end method

.method private initSensorData()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getAPISupportFlag()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 2
    .line 3
    return p0
.end method

.method public registerEleDetector(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 15
    .line 16
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/EleCore;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 29
    .line 30
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 36
    .line 37
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 77
    .line 78
    if-nez v1, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "SemWifiEleGeoMagnetic"

    .line 82
    .line 83
    const-string v2, "Ele detector register"

    .line 84
    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const v4, 0x186a0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 108
    .line 109
    const/4 v3, 0x2

    .line 110
    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 120
    .line 121
    const/4 v3, 0x6

    .line 122
    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const v4, 0x30d40

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 133
    .line 134
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;I)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    return v2

    .line 148
    :catch_0
    move-exception p0

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    return v0

    .line 151
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    return v0
.end method

.method public unregisterEleDetector()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->initSensorData()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 20
    .line 21
    return-void
.end method
