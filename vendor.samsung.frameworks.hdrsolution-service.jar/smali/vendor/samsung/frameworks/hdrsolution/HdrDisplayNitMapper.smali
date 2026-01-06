.class public Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
.super Ljava/lang/Object;
.source "HdrDisplayNitMapper.java"


# static fields
.field private static final CUSTOM_HDR10:I = 0x1

.field private static final CUSTOM_HDR10PLUS:I = 0x2

.field private static final HDR_EXYNOS_V0:I = 0x2

.field private static final HDR_LUMINANCE:I = 0x1

.field private static final HDR_MAXRGB:I = 0x0

.field private static final HDR_SMXXXX_V0:I = 0x3

.field private static final HDR_SMXXXX_V1:I = 0x4

.field private static final HLG_THRESHOLD_NIT:I = 0x2ca

.field private static final LIGHT_STATE_INIT:I = 0x0

.field private static final LIGHT_STATE_OFF:I = -0x1

.field private static final LIGHT_STATE_RUN:I = 0x1

.field private static final LIGHT_STATE_STABLE:I = 0x2

.field private static final LIST_ADAPTIVE_TM:[Ljava/lang/String;

.field private static final LIST_CUSTOM_HDR10:[Ljava/lang/String;

.field private static final LIST_CUSTOM_HDR10PLUS:[Ljava/lang/String;

.field private static final LIST_EXYNOS_V0:[Ljava/lang/String;

.field private static final LIST_LUMINANCE:[Ljava/lang/String;

.field private static final LIST_ORIGIN:[Ljava/lang/String;

.field private static final LIST_SMXXXX_V0:[Ljava/lang/String;

.field private static final LIST_SMXXXX_V1:[Ljava/lang/String;

.field private static final MIN_TARGET_NIT:I = 0xc8

.field private static final NUM_HDR_VERSION:I = 0x5

.field private static final ORIGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdrSolution_HdrDisplayNitMapper"

.field private static mPrev_targetNit:I


# instance fields
.field private LIGHT_AVERAGE_LENGTH_MS:I

.field private LIGHT_DEC_LIMIT_PER_SEC:F

.field private LIGHT_INC_LIMIT_PER_SEC:F

.field private LIGHT_SAMPLING_INTERVAL_MS:I

.field private LIGHT_SENSOR_RATE_MS:I

.field private LIGHT_UPDATE_PERIOD_MS:I

.field private LIGHT_UPDATE_RATE:F

.field private LOG_TIMER_UPDATE_PERIOD_SEC:I

.field private SEC_FEATURE_FLIP_COVER_DISPLAY:Z

.field private mAmbTargetRatio:F

.field private mBound0:F

.field private mBound1:F

.field private mBound2:F

.field private mContext:Landroid/content/Context;

.field private mCp:F

.field private mD65Weight:F

.field private mDisableLightSensor:I

.field private mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mHLG:I

.field private mLightManagerState:I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorData:F

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLogLevel:I

.field private mMinTargetNit:I

.field private mNitGap:I

.field private mPanelNit:F

.field private mPanelNitsArray:[F

.field private mPrevState:Z

.field private mProductApiLevel:I

.field private mRdr:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSupportHLG_AmbientOFF:Z

.field private mSupportRealTimePanelNit:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mUpdateTargetNit:Z

.field private mZone1:F

.field private mZone2:F


# direct methods
.method static bridge synthetic -$$Nest$fgetLIGHT_AVERAGE_LENGTH_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_DEC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_INC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_SAMPLING_INTERVAL_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_UPDATE_RATE(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TIMER_UPDATE_PERIOD_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBound2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHLG(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNitGap(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelNitsArray(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)[F
    .locals 0

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRdr(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportHLG_AmbientOFF(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z
    .locals 0

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportHLG_AmbientOFF:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportRealTimePanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z
    .locals 0

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z
    .locals 0

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mUpdateTargetNit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZone1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZone2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V
    .locals 0

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V
    .locals 0

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V
    .locals 0

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V
    .locals 0

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .locals 0

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getTargetNit()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .locals 0

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->updateTargetNit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmPrev_targetNit()I
    .locals 1

    sget v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 52
    const-string v11, "S5E9955"

    const-string v12, "S5E8855"

    const-string v0, "S5E9925"

    const-string v1, "SM8450"

    const-string v2, "SM8475"

    const-string v3, "SM8550"

    const-string v4, "S5E8835"

    const-string v5, "SM8650"

    const-string v6, "S5E9945"

    const-string v7, "S5E8845"

    const-string v8, "MT6989"

    const-string v9, "MT6991"

    const-string v10, "SM8750"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ADAPTIVE_TM:[Ljava/lang/String;

    .line 101
    const/16 v0, 0xc8

    sput v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    .line 111
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_LUMINANCE:[Ljava/lang/String;

    .line 112
    const-string v1, "EXYNOS9830"

    const-string v2, "EXYNOS990"

    const-string v3, "EXYNOS9820"

    const-string v4, "EXYNOS9825"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_EXYNOS_V0:[Ljava/lang/String;

    .line 113
    const-string v1, "SM8250"

    const-string v2, "SM7150"

    const-string v3, "SM8150"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V0:[Ljava/lang/String;

    .line 114
    const-string v1, "SM7250"

    const-string v2, "SM7325"

    const-string v3, "SM8350"

    const-string v4, "SM7225"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V1:[Ljava/lang/String;

    .line 120
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ORIGIN:[Ljava/lang/String;

    .line 121
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_CUSTOM_HDR10:[Ljava/lang/String;

    .line 122
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_CUSTOM_HDR10PLUS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrevState:Z

    .line 54
    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 55
    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mProductApiLevel:I

    .line 56
    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportHLG_AmbientOFF:Z

    .line 59
    new-array v0, v2, [F

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    .line 66
    const/4 v0, 0x0

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 67
    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    .line 68
    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    .line 69
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    .line 70
    const/4 v3, 0x0

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    .line 71
    const/16 v3, 0xc8

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    .line 73
    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimer:Ljava/util/Timer;

    .line 79
    const/4 v3, -0x1

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    .line 81
    const/16 v0, 0xfa

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SENSOR_RATE_MS:I

    .line 82
    const/16 v0, 0x32

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    .line 83
    const/16 v0, 0x64

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    .line 84
    const/16 v0, 0x640

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    .line 85
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    .line 86
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    .line 87
    const v0, 0x3e99999a    # 0.3f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    .line 88
    const/16 v0, 0xa

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    .line 90
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    .line 91
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    .line 92
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    .line 93
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    .line 94
    const v0, 0x3f266666    # 0.65f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    .line 95
    const v0, 0x3f3d70a4    # 0.74f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    .line 96
    const v0, 0x3f2e147b    # 0.68f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    .line 99
    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    .line 100
    const/4 v4, 0x1

    iput v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    .line 125
    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    .line 126
    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mUpdateTargetNit:Z

    .line 130
    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 349
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;

    invoke-direct {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    .line 611
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;

    invoke-direct {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 135
    move-object/from16 v5, p1

    iput-object v5, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    .line 137
    iget v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "debug.hdr.log.service"

    invoke-static {v6, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    .line 138
    iget v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "debug.hdr.nit.gap"

    invoke-static {v6, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    .line 140
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 141
    .local v6, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v6, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    .line 144
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->isHdr()Z

    move-result v0

    const-string v8, "HdrSolution_HdrDisplayNitMapper"

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v7}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    .line 146
    .local v0, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getDesiredMaxLuminance()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "defaultTargetNit":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HdrCapability(True), Default Target Nit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    goto :goto_0

    .line 149
    .end local v9    # "defaultTargetNit":Ljava/lang/String;
    :cond_0
    const-string v9, "400"

    .line 150
    .restart local v9    # "defaultTargetNit":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HdrCapability(False), Default Target Nit: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    const-string v0, "hdr.target_nit"

    invoke-static {v0, v9}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_FEATURE_FLIP_COVER_DISPLAY: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v10, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-ne v0, v4, :cond_1

    .line 159
    iget v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FLIP MODEL!!!!!!! --- SEC_FEATURE_FLIP_COVER_DISPLAY: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v10, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :cond_1
    iget v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NO FLIP MODEL!!!!!!! --- SEC_FEATURE_FLIP_COVER_DISPLAY: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v10, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    :goto_1
    const-string v0, "ro.soc.model"

    const-string v10, "null"

    invoke-static {v0, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "chipName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "ro.vendor.qti.soc_model"

    invoke-static {v11, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_3
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "ro.hardware.chipname"

    invoke-static {v11, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_4
    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 175
    .end local v0    # "chipName":Ljava/lang/String;
    .local v11, "chipName":Ljava/lang/String;
    const-string v0, "debug.hdr.enforce.panel_brt"

    invoke-static {v0, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "enforcePanelBrightness":Ljava/lang/String;
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x107015d

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    .line 178
    .local v13, "backlightArray":[I
    array-length v14, v13

    .line 180
    .local v14, "arrayLen":I
    if-lez v14, :cond_b

    .line 181
    add-int/lit8 v0, v14, -0x1

    aget v0, v13, v0

    add-int/lit8 v15, v14, -0x1

    const v3, 0x107015e

    if-ne v0, v15, :cond_5

    .line 182
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    goto/16 :goto_6

    .line 184
    :cond_5
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 185
    .local v3, "panelNitsArray":[F
    add-int/lit8 v0, v14, -0x1

    aget v0, v13, v0

    add-int/lit8 v15, v0, 0x1

    .line 186
    .local v15, "arrayLenNit":I
    new-array v0, v15, [F

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    .line 188
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    aget v16, v3, v2

    aput v16, v0, v2

    .line 189
    const/4 v0, 0x1

    .line 190
    .local v0, "r_idx":I
    const/16 v16, 0x1

    move/from16 v2, v16

    .local v2, "w_idx":I
    :goto_2
    if-ge v2, v15, :cond_a

    .line 191
    aget v4, v13, v0

    if-ne v4, v2, :cond_6

    .line 192
    iget-object v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    aget v17, v3, v0

    aput v17, v4, v2

    .line 193
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v3

    goto :goto_4

    .line 195
    :cond_6
    add-int/lit8 v4, v0, -0x1

    aget v4, v13, v4

    .line 196
    .local v4, "p0":I
    move/from16 v17, v0

    .end local v0    # "r_idx":I
    .local v17, "r_idx":I
    aget v0, v13, v17

    .line 197
    .local v0, "p1":I
    if-le v0, v4, :cond_7

    .line 198
    move/from16 v18, v0

    .end local v0    # "p1":I
    .local v18, "p1":I
    sub-int v0, v18, v2

    .line 199
    .local v0, "w0":I
    move-object/from16 v19, v3

    .end local v3    # "panelNitsArray":[F
    .local v19, "panelNitsArray":[F
    sub-int v3, v2, v4

    .line 200
    .local v3, "w1":I
    iget-object v5, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    add-int/lit8 v20, v17, -0x1

    aget v20, v19, v20

    move-object/from16 v21, v5

    int-to-float v5, v0

    mul-float v20, v20, v5

    aget v5, v19, v17

    move/from16 v22, v0

    .end local v0    # "w0":I
    .local v22, "w0":I
    int-to-float v0, v3

    mul-float/2addr v5, v0

    add-float v20, v20, v5

    sub-int v0, v18, v4

    int-to-float v0, v0

    div-float v20, v20, v0

    aput v20, v21, v2

    .line 201
    .end local v3    # "w1":I
    .end local v22    # "w0":I
    goto :goto_3

    .line 202
    .end local v18    # "p1":I
    .end local v19    # "panelNitsArray":[F
    .local v0, "p1":I
    .local v3, "panelNitsArray":[F
    :cond_7
    move/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "p1":I
    .end local v3    # "panelNitsArray":[F
    .restart local v18    # "p1":I
    .restart local v19    # "panelNitsArray":[F
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    int-to-float v3, v4

    aput v3, v0, v2

    .line 205
    .end local v4    # "p0":I
    .end local v18    # "p1":I
    :goto_3
    move/from16 v0, v17

    .end local v17    # "r_idx":I
    .local v0, "r_idx":I
    :goto_4
    iget v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    .line 207
    add-int/lit8 v3, v14, -0x1

    if-le v0, v3, :cond_8

    add-int/lit8 v0, v14, -0x1

    :cond_8
    move v3, v0

    .line 208
    .end local v0    # "r_idx":I
    .local v3, "r_idx":I
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] backlightArray: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v4, v13, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mPanelNitsArray: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_5

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out of bound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v17, v0

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .local v17, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v17    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    move v0, v3

    .end local v3    # "r_idx":I
    .local v0, "r_idx":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, p1

    move-object/from16 v3, v19

    const/4 v4, 0x1

    goto/16 :goto_2

    .end local v19    # "panelNitsArray":[F
    .local v3, "panelNitsArray":[F
    :cond_a
    move/from16 v17, v0

    move-object/from16 v19, v3

    .line 214
    .end local v0    # "r_idx":I
    .end local v2    # "w_idx":I
    .end local v3    # "panelNitsArray":[F
    .end local v15    # "arrayLenNit":I
    goto :goto_6

    .line 216
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenBrightnessBacklight array length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_6
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    array-length v0, v0

    if-eqz v0, :cond_e

    .line 220
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_c
    goto :goto_7

    :sswitch_0
    const-string v2, "OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :sswitch_1
    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    goto :goto_8

    :goto_7
    const/4 v3, -0x1

    :goto_8
    packed-switch v3, :pswitch_data_0

    .line 230
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ADAPTIVE_TM:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 231
    const/4 v4, 0x1

    iput-boolean v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Support real time panel brightness for target"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 226
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 227
    const-string v0, "Prevent support real time panel brightness"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    goto :goto_9

    .line 222
    :pswitch_1
    const/4 v4, 0x1

    iput-boolean v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 223
    const-string v0, "Enforce support real time panel brightness"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    goto :goto_9

    .line 234
    :cond_d
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Support fixed target"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_9
    goto :goto_a

    .line 240
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 241
    const-string v0, "Panel nit array doesn\'t exist"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_a
    iget-boolean v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    if-eqz v0, :cond_f

    .line 245
    invoke-virtual {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->registerBrightnessListner()V

    .line 249
    :cond_f
    const-string v0, "ro.build.product"

    invoke-static {v0, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "vendor":Ljava/lang/String;
    const-string v2, "essi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 251
    const v2, 0x3f666666    # 0.9f

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    .line 254
    :cond_10
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.d65_weight"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    .line 258
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.sampling"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    .line 259
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.update"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    .line 260
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.avg"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    .line 261
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.inc"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    .line 262
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.dec"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    .line 263
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.rate"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    .line 264
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.log_period"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    .line 266
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.light.disable"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    .line 267
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.min.target"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    .line 268
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mBound0"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    .line 269
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mBound1"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    .line 270
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mBound2"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    .line 271
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mZone1"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    .line 272
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mZone2"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    .line 273
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mCp"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    .line 274
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mRdr"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    .line 277
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mProductApiLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.product.first_api_level"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mProductApiLevel:I

    .line 279
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mProductApiLevel:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_11

    .line 280
    const/4 v4, 0x1

    iput-boolean v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportHLG_AmbientOFF:Z

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HLG Ambient Adaptive OFF--------------xxx!!! - mProductApiLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mProductApiLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 283
    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportHLG_AmbientOFF:Z

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HLG Ambient Adaptive ON---------------OOO!!! - mProductApiLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mProductApiLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_b
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimer:Ljava/util/Timer;

    .line 292
    const/4 v2, -0x1

    .line 293
    .local v2, "gpu_level":I
    sget-object v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ORIGIN:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x0

    goto :goto_c

    .line 294
    :cond_12
    sget-object v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_CUSTOM_HDR10:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    goto :goto_c

    .line 295
    :cond_13
    const/4 v2, 0x2

    .line 296
    :goto_c
    const-string v3, "hdr.gpu_level"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v3, -0x1

    .line 299
    .local v3, "gpu_method":I
    sget-object v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_EXYNOS_V0:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v3, 0x2

    goto :goto_d

    .line 300
    :cond_14
    sget-object v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V0:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v3, 0x3

    goto :goto_d

    .line 301
    :cond_15
    sget-object v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V1:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v3, 0x4

    goto :goto_d

    .line 302
    :cond_16
    const/4 v3, 0x0

    .line 303
    :goto_d
    const-string v4, "hdr.gpu_method"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9df -> :sswitch_1
        0x1314f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 429
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 430
    .local v0, "arrayLength":I
    new-array v1, v0, [F

    .line 431
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 432
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 435
    return-object v1
.end method

.method private getTargetNit()I
    .locals 11

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "diffNit":I
    const/4 v1, 0x0

    .line 687
    .local v1, "modifiedNit":I
    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    mul-float/2addr v2, v3

    .line 688
    .local v2, "panelNit":F
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    mul-float/2addr v3, v2

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 690
    .local v3, "targetNit":I
    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    .line 693
    :cond_0
    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportHLG_AmbientOFF:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 694
    const/16 v4, 0x2ca

    if-le v3, v4, :cond_1

    const/16 v3, 0x2ca

    goto :goto_0

    .line 695
    :cond_1
    nop

    .line 699
    :cond_2
    :goto_0
    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    const/4 v5, 0x1

    const-string v6, "HdrSolution_HdrDisplayNitMapper"

    if-ne v4, v5, :cond_3

    .line 700
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 702
    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v4, :cond_d

    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "4.getTargetNit()--- Ambient Adaptive disable!!!!, targetNit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 707
    :cond_3
    sget v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    sub-int v0, v4, v3

    .line 709
    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v7, " targetNit: "

    const-string v8, ", mPrev_targetNit: "

    if-lez v4, :cond_4

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1.getTargetNit(), diffNit: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v9, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " panelNit: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " mAmbTargetRatio: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_4
    if-gez v0, :cond_5

    .line 714
    sget v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    iget v9, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    add-int/2addr v4, v9

    .line 716
    .end local v1    # "modifiedNit":I
    .local v4, "modifiedNit":I
    if-le v4, v3, :cond_7

    .line 717
    move v4, v3

    goto :goto_1

    .line 720
    .end local v4    # "modifiedNit":I
    .restart local v1    # "modifiedNit":I
    :cond_5
    if-lez v0, :cond_6

    .line 721
    sget v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    iget v9, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    sub-int/2addr v4, v9

    .line 723
    .end local v1    # "modifiedNit":I
    .restart local v4    # "modifiedNit":I
    if-ge v4, v3, :cond_7

    .line 724
    move v4, v3

    goto :goto_1

    .line 728
    .end local v4    # "modifiedNit":I
    .restart local v1    # "modifiedNit":I
    :cond_6
    move v4, v3

    .line 731
    .end local v1    # "modifiedNit":I
    .restart local v4    # "modifiedNit":I
    :cond_7
    :goto_1
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v9, " mNitGap: "

    if-lez v1, :cond_8

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "2.getTargetNit(), modifiedNit: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v10, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_8
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    if-ge v4, v1, :cond_9

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    .line 737
    :cond_9
    float-to-int v1, v2

    iget v10, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mMinTargetNit:I

    if-le v1, v10, :cond_a

    float-to-int v1, v2

    if-le v4, v1, :cond_a

    float-to-int v1, v2

    .end local v4    # "modifiedNit":I
    .restart local v1    # "modifiedNit":I
    goto :goto_2

    .line 739
    .end local v1    # "modifiedNit":I
    .restart local v4    # "modifiedNit":I
    :cond_a
    move v1, v4

    .end local v4    # "modifiedNit":I
    .restart local v1    # "modifiedNit":I
    :goto_2
    if-eq v1, v3, :cond_b

    iput-boolean v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mUpdateTargetNit:Z

    goto :goto_3

    .line 740
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mUpdateTargetNit:Z

    .line 742
    :goto_3
    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v5, " modifiedNit: "

    if-lez v4, :cond_c

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3.getTargetNit(), mUpdateTargetNit: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mUpdateTargetNit:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_c
    move v3, v1

    .line 748
    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v4, :cond_d

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "4.getTargetNit(), diffNit: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v8, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mNitGap:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_d
    :goto_4
    return v3
.end method

.method private mCreateTimerTask()Ljava/util/TimerTask;
    .locals 1

    .line 439
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;

    invoke-direct {v0, p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    return-object v0
.end method

.method private registerLightSensorListener()V
    .locals 8

    .line 631
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_0

    const-string v0, "mSensorManager.registerListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 635
    :cond_1
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 636
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 637
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x1040359

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "lightSensorType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 639
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 640
    .local v3, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 641
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 642
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 643
    iget v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_2
    iput-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    .line 645
    goto :goto_1

    .line 640
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v2    # "lightSensorType":Ljava/lang/String;
    .end local v3    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "i":I
    :cond_4
    :goto_1
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_6

    .line 651
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_5

    const-string v0, "get default sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_5
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    .line 654
    :cond_6
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v2, "mSensorManager: "

    if-eqz v0, :cond_9

    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_7

    goto :goto_3

    .line 659
    :cond_7
    :try_start_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SENSOR_RATE_MS:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_2

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error : Exception occurred at registerLightSensorListener"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLightSensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_8
    return-void

    .line 655
    :cond_9
    :goto_3
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLightSensorListener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_a
    return-void
.end method

.method private unregisterLightSensorListener()V
    .locals 4

    .line 667
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_0

    .line 668
    const-string v0, "mSensorManager.unregisterListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSensorManager: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLightSensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error : Exception occurred at unregisterLightSensorListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 676
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Error : NullPointException occurred at unregisterLightSensorListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_0
    nop

    .line 682
    :goto_1
    return-void
.end method

.method private updateTargetNit()V
    .locals 8

    .line 758
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getTargetNit()I

    move-result v0

    .line 759
    .local v0, "targetNit":I
    const-string v1, "hdr.target_nit"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sput v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updataTargetNit--------------mLightSensorData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaleRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v3, v0

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", target: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "->"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "HdrSolution_HdrDisplayNitMapper"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v1, :cond_0

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTargetNit is called, mLightManagerState: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", mPrev_targetNit: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v7, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrev_targetNit:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLightSensorData: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v0

    iget v7, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    div-float/2addr v2, v7

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v1, "debug.hdr.target_nit"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    return-void
.end method


# virtual methods
.method public registerBrightnessListner()V
    .locals 3

    .line 404
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_0

    const-string v0, "mDisplayManagerInternal: register  "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_2

    .line 406
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayManagerInternal is null. Get : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 410
    :cond_2
    :try_start_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error : Exception occurred at registerBrightnessistener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setHdrLayerState(ZI)V
    .locals 9
    .param p1, "state"    # Z
    .param p2, "dataSpace"    # I

    .line 308
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrevState:Z

    if-eq p1, v0, :cond_6

    .line 309
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    if-nez v0, :cond_5

    .line 310
    const-string v0, " mLightManagerState: "

    const-string v1, " state: "

    const-string v2, "HdrSolution_HdrDisplayNitMapper"

    if-eqz p1, :cond_2

    .line 311
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    .line 312
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    .line 314
    iput p2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    .line 316
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->registerLightSensorListener()V

    .line 317
    const/4 v3, 0x0

    iput v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    .line 319
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHdrLayerState(if)---mHLG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCreateTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimerTask:Ljava/util/TimerTask;

    .line 323
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimer:Ljava/util/Timer;

    iget-object v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimerTask:Ljava/util/TimerTask;

    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    int-to-long v7, v0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 324
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_1

    const-string v0, "Start Timer Task"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error occurs at start Timer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 330
    :cond_2
    iput p2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    .line 332
    const/4 v3, -0x1

    iput v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    .line 333
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->unregisterLightSensorListener()V

    .line 335
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHdrLayerState(else)---mHLG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mHLG:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3
    :try_start_1
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 339
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_4

    const-string v0, "Stop Timer Task"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :cond_4
    goto :goto_1

    .line 340
    :catch_1
    move-exception v0

    .line 341
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Error occurs at stop Timer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    iput-boolean p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrevState:Z

    .line 347
    :cond_6
    return-void
.end method

.method public unregisterBrightnessListner()V
    .locals 3

    .line 417
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_1

    .line 418
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_0

    const-string v0, "mDisplayManagerInternal: unregister  "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error : Exception occurred at unregisterBrightnessistener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
