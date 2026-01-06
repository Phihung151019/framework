.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub2;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DeviceStateListenerFF;
    }
.end annotation


# static fields
.field private static final ACC_WRONG_RANGE_SAMPLING_RATE:I = 0x2

.field private static final CALIBRATION_SENSOR_TYPE:Ljava/lang/String; = "CAL_SENSOR_TYPE"

.field private static final CLIENT_INFO_SEMCONTEXT:Ljava/lang/String; = "SEMCONTEXT"

.field private static final CLIENT_INFO_SENSOR:Ljava/lang/String; = "SENSOR"

.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DATA_Z:I = 0x2

.field private static final DEBUG_HISTORY_SIZE:I = 0x64

.field private static final ERROR_ACC_RANGE:I = 0x4

.field private static final ERROR_MCU_PROBE:I = 0x0

.field private static final ERROR_SENSORHUB_RESET:I = 0x3

.field private static final ERROR_SENSOR_PROBE:I = 0x1

.field private static final ERROR_SENSOR_STUCK:I = 0x2

.field private static final EVENT_FREE_FALL:I = 0x0

.field private static final EVENT_MOVE:I = 0x4

.field private static final EVENT_NOMOVE:I = 0x3

.field private static final EVENT_NONE:I = 0x0

.field private static final FREE_FALL_DETECTION_DETECT:I = 0x66

.field private static final FREE_FALL_DETECTION_START:I = 0x22

.field private static final FREE_FALL_LOGGING_PATH:Ljava/lang/String; = "/data/system/ff_data"

.field private static final FREE_FALL_LOGGING_SIZE:I = 0x3e8

.field private static final FREE_FALL_MIN_HEIGHT:J = 0x32L

.field private static final FREE_FALL_SENSOR_CHECKING_FORCE_STOP:I = 0x77

.field private static final FREE_FALL_SENSOR_EVENT_MAX_CNT:I = 0x3

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_ACCELEROMETER:I = 0x0

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_GYROSCOPE:I = 0x1

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_HIGH_G_ACCELEROMETER:I = 0x4

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_MAX:I = 0x5

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_SUB_ACCELEROMETER:I = 0x2

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_SUB_GYROSCOPE:I = 0x3

.field private static final GRAVITY_VALUE:F = 9.8f

.field private static final GYRO_MOVING_THRESHOLD:F = 0.15f

.field private static final HQM_FEATURE_SENSORHUB_MINIDUMP:Ljava/lang/String; = "SHMD"

.field private static final HQM_FEATURE_SENSOR_EMERGENCY_FREE_FALL:Ljava/lang/String; = "FALL"

.field private static final HQM_FEATURE_SENSOR_ERROR:Ljava/lang/String; = "MRSI"

.field private static final HQM_FEATURE_SENSOR_REG_DUMP:Ljava/lang/String; = "SDMP"

.field private static final HQM_HIT_TYPE_EM:Ljava/lang/String; = "em"

.field private static final HQM_HIT_TYPE_PH:Ljava/lang/String; = "ph"

.field private static final HQM_HIT_TYPE_SM:Ljava/lang/String; = "sm"

.field private static final HQM_SURVEY_LOG:Z = true

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final KEY_PROBE_STATUS_TYPE_ACCEL:I = 0x0

.field private static final KEY_PROBE_STATUS_TYPE_BARO:I = 0x3

.field private static final KEY_PROBE_STATUS_TYPE_GYRO:I = 0x1

.field private static final KEY_PROBE_STATUS_TYPE_LIGHT:I = 0x6

.field private static final KEY_PROBE_STATUS_TYPE_MAGNETIC:I = 0x2

.field private static final KEY_PROBE_STATUS_TYPE_MAX:I = 0x9

.field private static final KEY_PROBE_STATUS_TYPE_PROXIMITY:I = 0x5

.field private static final KEY_PROBE_STATUS_TYPE_PROX_LIGHT:I = 0x4

.field private static final KEY_PROBE_STATUS_TYPE_SUB_ACCEL:I = 0x7

.field private static final KEY_PROBE_STATUS_TYPE_SUB_GYRO:I = 0x8

.field private static final KEY_STUCK_STATUS_TYPE_ACCEL:I = 0x0

.field private static final KEY_STUCK_STATUS_TYPE_ACCEL_HIGH:I = 0x8

.field private static final KEY_STUCK_STATUS_TYPE_BAROMETER:I = 0x3

.field private static final KEY_STUCK_STATUS_TYPE_GYRO:I = 0x1

.field private static final KEY_STUCK_STATUS_TYPE_MAGNETIC:I = 0x2

.field private static final KEY_STUCK_STATUS_TYPE_SUB2_ACCEL:I = 0x6

.field private static final KEY_STUCK_STATUS_TYPE_SUB2_GYRO:I = 0x7

.field private static final KEY_STUCK_STATUS_TYPE_SUB_ACCEL:I = 0x4

.field private static final KEY_STUCK_STATUS_TYPE_SUB_GYRO:I = 0x5

.field private static final MCU_FIRMWARE_CHIP_ID_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/mcu_name"

.field private static final MCU_FIRMWARE_VER_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/mcu_rev"

.field private static final MRSI_SENSOR_CHECK_DEFAULT_VALUE:Ljava/lang/String; = "0000000000000000"

.field private static final MRSI_VERSION:Ljava/lang/String; = "11.2"

.field private static final NOMOVE_MAX_CNT:I = 0x64

.field private static final NOMOVE_TIME_THD:I = 0x32

.field private static final NOMOVE_VAR_WINSIZE:I = 0x9

.field private static final RESET_REASON_ADDRESS_MCU:I = 0x0

.field private static final RESET_REASON_ADDRESS_SLPI:I = 0x1

.field private static final SAMPLE_ACC_WRONG_RANGE_CNT_MAX:I = 0xa

.field private static final SENSORHUB_BCOM_MINI_DUMP_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/bcm_minidump"

.field private static final SENSORHUB_MAX_RESET_CNT:I = 0x12c

.field private static final SENSORHUB_MINI_DUMP_CNT:I = 0x2

.field private static final SENSORHUB_MINI_DUMP_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/minidump"

.field private static final SENSORHUB_QCOM_WAKEUP_COUNT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/wakeup_reason"

.field private static final SENSORHUB_RESET_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.SENSORHUB_RESET"

.field private static final SENSORHUB_RESET_CHECKING_START:I = 0x44

.field private static final SENSORHUB_RESET_INFO_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/reset_info"

.field private static final SENSORHUB_SLSI_MTEK_WAKEUP_COUNT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/wakeup_reason"

.field private static final SENSOR_BAROMETER_TEMPERATURE_PATH:Ljava/lang/String; = "/sys/class/sensors/barometer_sensor/temperature"

.field private static final SENSOR_CALIBRATION_LOGGING_START:I = 0x11

.field private static final SENSOR_CHECKING_FORCE_STOP:I = 0x55

.field private static final SENSOR_CHECKING_GET_ACTION:Ljava/lang/String; = "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

.field private static final SENSOR_CHECKING_START:I = 0x33

.field private static final SENSOR_CHIP_NAME_PREFIX_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/"

.field private static final SENSOR_DATA_LOGGING_CNT:I = 0x2

.field private static final SENSOR_TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field private static final SENSOR_TYPE_DROP_CLASSIFIER:I = 0x1006c

.field private static final SENSOR_TYPE_SUB_ACCELEROMETER:I = 0x10097

.field private static final SENSOR_TYPE_SUB_GYROSCOPE:I = 0x10099

.field private static final SHUB_SUB_6AXIS_SUPPORT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/support_dual_sensor"

.field private static final SLPI_MAGIC_NUMBER:I = 0x64

.field private static final SLPI_RESET_INFO_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/ssr_msg"

.field private static final SLPI_SUB_6AXIS_SUPPORT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/support_dual_sensor"

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String; = "SENSORBD"

.field private static final USAGE_DATA_SENSOR:Ljava/lang/String; = "SENSOR_USAGE"

.field private static final USAGE_DATA_SENSOR_PACKAGE:Ljava/lang/String; = "USAGE_DATA_SENSOR_PACKAGE"

.field private static mIsFreeFallSensorChecking:Z

.field private static mSensorProbeAurorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;",
            ">;"
        }
    .end annotation
.end field

.field private static mSensorStuckAurorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/gesture/checker/SensorStuckAuror;",
            ">;"
        }
    .end annotation
.end field

.field private static final sErrorType:[Ljava/lang/String;

.field private static final sEventType:[Ljava/lang/String;

.field private static final sResetReason:[[Ljava/lang/String;


# instance fields
.field private final FREE_FALL_HEIGHT_THRESHOLD:J

.field private final FREE_FALL_SENSOR_CHECK_TIMEOUT:J

.field private final SENSORHUB_RESET_TIMESTAMP_DURATION:J

.field private final SENSOR_CHECK_TIMEOUT:J

.field private final SENSOR_MRSI_FEATURE_MAX_LENGTH:I

.field private WrongVectorSum:Z

.field private buffer_nomove:[F

.field private buffer_nomove2:[F

.field private index_nomove:I

.field private isFreeFallSensorEnabled:[I

.field private mAccSensor:Landroid/hardware/Sensor;

.field private mAccVectorSumCnt:I

.field private mAccVectorsum:F

.field private mAccWrongRangeEnabled:Z

.field private mAccWrongVectorsumCnt:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceState:I

.field private final mDropClassifierListener:Landroid/hardware/SensorEventListener;

.field private mDropClassifierSensor:Landroid/hardware/Sensor;

.field private final mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeFallAccelData:[[F

.field private mFreeFallAccelEventCnt:I

.field private final mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

.field private mFreeFallAccelHighGData:[[F

.field private mFreeFallAccelHighGEventCnt:I

.field private mFreeFallGyroData:[[F

.field private mFreeFallGyroEventCnt:I

.field private final mFreeFallHighGAccelEventListener:Landroid/hardware/SensorEventListener;

.field private mFreeFallInfo:Ljava/lang/String;

.field private final mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;

.field private mFreeFallSensorID:[[Ljava/lang/String;

.field private mFreeFallSubAccelData:[[F

.field private mFreeFallSubAccelEventCnt:I

.field private final mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

.field private mFreeFallSubGyroData:[[F

.field private mFreeFallSubGyroEventCnt:I

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighGAccSensor:Landroid/hardware/Sensor;

.field private mIsMovingForVectorSum:I

.field private mIsMovingForVectorSumCnt:I

.field private mIsTestRunning:Z

.field private mMultiFoldingSequenceCheckAuror:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

.field private mPreMiniDumpValue:Ljava/lang/String;

.field private mPrevSensorHubResetTimeStamp:J

.field private mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorCheckingHandler:Landroid/os/Handler;

.field private mSensorCheckingThread:Landroid/os/HandlerThread;

.field private mSensorHubMiniDumpMaxCnt:J

.field private mSensorHubResetMaxCnt:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSubAccSensor:Landroid/hardware/Sensor;

.field private mSubGyroSensor:Landroid/hardware/Sensor;

.field private mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

.field private nomove_cnt:I

.field private prvResult_mv:I

.field private final sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

.field private sumAccX:F

.field private sumAccX2:F

.field private varAcc:F


# direct methods
.method public static synthetic $r8$lambda$3DizklDHXIt7NIb53cdE32oMCdM(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/Integer;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->lambda$reportProbeStatusEachSensor$1(Ljava/lang/Integer;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzDn1Anx9TG1L9xYeja_AEPv1q8(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->lambda$enableTestSensor$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorsum:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDropClassifierListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDropClassifierSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDumpInfoHistory(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallAccelHighGData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallAccelHighGEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorsum:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccWrongRangeEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceState(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallAccelHighGEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFreeFallSensorDisabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkFreeFallSensorDisabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckSensorHubResetStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkSensorHubResetStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableFreeFallSensorEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableFreeFallDetection(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->enableFreeFallDetection()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->enableFreeFallSensorEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforceStopSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->forceStopSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFreeFallDetectionTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFreeFallDetectionTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetFreeFallTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFreeFallTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misFileExists(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isMovingForVectorSum([F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreportProbeStuckStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->reportProbeStuckStatus(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendFreeFallEventToBigDataServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendFreeFallEventToBigDataServer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendHWParamServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSDMPData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendSDMPData(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterAccWrongRangeListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->unregisterAccWrongRangeListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFreeFallLoggingData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->writeFreeFallLoggingData(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSensorStuckAurorMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsErrorType()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsEventType()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sEventType:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 261
    const-string v0, "ERROR_SENSORHUB_RESET"

    const-string v1, "ERROR_ACC_RANGE"

    const-string v2, "ERROR_MCU_PROBE"

    const-string v3, "ERROR_SENSOR_PROBE"

    const-string v4, "ERROR_SENSOR_STUCK"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    .line 269
    const-string v0, "EVENT_FREE_FALL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sEventType:[Ljava/lang/String;

    .line 285
    const-string v0, "RESET_REASON_SYSFS"

    const-string v1, "RESET_REASON_HUB_REQUEST"

    const-string v2, "RESET_REASON_UNKNOWN"

    const-string v3, "RESET_REASON_KERNEL_RESET"

    const-string v4, "RESET_REASON_CRASH"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESET_SLPI_WDOG_BITE"

    const-string v3, "RESET_SLPI_BY_AP"

    const-string v4, "RESET_REASON_SLPI_ERROR_FATAL"

    filled-new-array {v2, v4, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sResetReason:[[Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SURVEY_LOG:Z

    .line 1898
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "semContextManager"    # Lcom/samsung/android/hardware/context/SemContextManager;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_CHECK_TIMEOUT:J

    .line 307
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_SENSOR_CHECK_TIMEOUT:J

    .line 308
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSORHUB_RESET_TIMESTAMP_DURATION:J

    .line 309
    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_HEIGHT_THRESHOLD:J

    .line 310
    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_MRSI_FEATURE_MAX_LENGTH:I

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsTestRunning:Z

    .line 358
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    .line 359
    iput-wide v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    .line 360
    iput-wide v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    .line 361
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    .line 365
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    .line 367
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    .line 369
    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    .line 1104
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1105
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    .line 1106
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    .line 1107
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    .line 1108
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    .line 1109
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    .line 1110
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorsum:F

    .line 1111
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    .line 1112
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    .line 1113
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    .line 1114
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    .line 1115
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    .line 1116
    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    .line 1117
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    .line 1199
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

    .line 1278
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceState:I

    .line 1838
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierListener:Landroid/hardware/SensorEventListener;

    .line 1906
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    .line 1907
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    .line 1908
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    .line 1909
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    .line 1910
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGEventCnt:I

    .line 1911
    filled-new-array {v2, v2, v2, v2, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    .line 1912
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    aput v5, v3, v4

    aput v5, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    .line 1913
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v5, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    .line 1914
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v5, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    .line 1915
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v5, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    .line 1916
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v5, v3, v0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGData:[[F

    .line 1917
    const-string v3, "ACC_AVG_Y"

    const-string v5, "ACC_AVG_Z"

    const-string v6, "ACC_AVG_X"

    filled-new-array {v6, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "GYRO_AVG_Y"

    const-string v6, "GYRO_AVG_Z"

    const-string v7, "GYRO_AVG_X"

    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "SACC_AVG_Y"

    const-string v7, "SACC_AVG_Z"

    const-string v8, "SACC_AVG_X"

    filled-new-array {v8, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "SGYRO_AVG_Y"

    const-string v8, "SGYRO_AVG_Z"

    const-string v9, "SGYRO_AVG_X"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "HACC_AVG_Y"

    const-string v9, "HACC_AVG_Z"

    const-string v10, "HACC_AVG_X"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v5, v6, v7, v8}, [[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSensorID:[[Ljava/lang/String;

    .line 2087
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    .line 2120
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    .line 2152
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$7;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallHighGAccelEventListener:Landroid/hardware/SensorEventListener;

    .line 2179
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 382
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    .line 383
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 384
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 385
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->setupProbeChecker()V

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->updateSensorProbeStatus()V

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->setupStuckChecker()V

    .line 394
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    .line 395
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    .line 396
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10097

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    .line 397
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10099

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    .line 398
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10072

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHighGAccSensor:Landroid/hardware/Sensor;

    .line 400
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    .line 402
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    .line 404
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 405
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "SENSORBD"

    if-eqz v3, :cond_1

    .line 407
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v5, 0x37

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker-IA;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 411
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "FreeFallDetectionThread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 412
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandler:Landroid/os/Handler;

    .line 443
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;

    const-string v5, "/data/system/ff_data"

    invoke-direct {v3, v5, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;

    .line 444
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    .line 445
    invoke-virtual {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->readData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 446
    .local v1, "ff_size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ff_size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v1    # "ff_size":I
    goto :goto_0

    .line 448
    :cond_0
    const-string v1, "Free fall detection isn\'t supported"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_1
    const-string v1, "Sensorhub isn\'t supported"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SensorCheckingThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingThread:Landroid/os/HandlerThread;

    .line 455
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 456
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    .line 482
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x1006c

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierSensor:Landroid/hardware/Sensor;

    .line 484
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 485
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v3, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v3, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v3, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 492
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    :cond_2
    const-string v2, "MotionRecognitionSensorChecker~~ "

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method private cancelAlarm()V
    .locals 5

    .line 1692
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v1, "SENSORBD"

    if-nez v0, :cond_0

    .line 1693
    const-string v0, "AlarmManager is not available."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void

    .line 1697
    :cond_0
    const-string v0, "[STUCK] SEND CANCEL MESSAGE"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1700
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1701
    .local v2, "operation":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1703
    const-string v3, "Cancel timer for SensorChecker."

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return-void
.end method

.method private checkFreeFallSensorDisabled()Z
    .locals 4

    .line 2056
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 2057
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 2058
    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2076
    :pswitch_0
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGEventCnt:I

    if-ge v3, v2, :cond_0

    .line 2077
    return v1

    .line 2072
    :pswitch_1
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    if-ge v3, v2, :cond_0

    .line 2073
    return v1

    .line 2068
    :pswitch_2
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    if-ge v3, v2, :cond_0

    .line 2069
    return v1

    .line 2064
    :pswitch_3
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    if-ge v3, v2, :cond_0

    .line 2065
    return v1

    .line 2060
    :pswitch_4
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    if-ge v3, v2, :cond_0

    .line 2061
    return v1

    .line 2056
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2084
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkJSONFormat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1435
    const/4 v0, 0x0

    .line 1437
    .local v0, "res":Z
    if-nez p1, :cond_0

    .line 1438
    const/4 v1, 0x0

    return v1

    .line 1441
    :cond_0
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1442
    const/4 v0, 0x1

    .line 1445
    :cond_1
    return v0
.end method

.method private checkMiniDumpData(Ljava/lang/String;)Z
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .line 1588
    const/4 v0, 0x0

    .line 1589
    .local v0, "res":Z
    const-string v1, "SENSORBD"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1590
    const-string v3, "Dump data is null!!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    return v2

    .line 1594
    :cond_0
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1595
    const-string v3, "Dump data is wrong!!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    return v2

    .line 1599
    :cond_1
    const-string v3, "|<"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1600
    .local v3, "address1":I
    const-string v4, ">;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1603
    .local v4, "address2":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_0

    .line 1607
    :cond_2
    if-lez v3, :cond_6

    if-lez v4, :cond_6

    .line 1608
    if-le v3, v4, :cond_3

    .line 1609
    return v2

    .line 1612
    :cond_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1613
    .local v2, "pcValue":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1614
    .local v5, "subData":[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v6, v5

    const/4 v7, 0x7

    if-le v6, v7, :cond_4

    .line 1615
    const/4 v6, 0x5

    aget-object v2, v5, v6

    .line 1616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1617
    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1621
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1623
    :cond_5
    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    .line 1625
    .end local v2    # "pcValue":Ljava/lang/String;
    .end local v5    # "subData":[Ljava/lang/String;
    :cond_6
    return v0

    .line 1604
    :cond_7
    :goto_0
    return v2
.end method

.method private checkSensorHubResetStatus(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 579
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/sys/class/sensors/ssc_core/ssr_msg"

    const-string v4, "/sys/class/sensors/ssp_sensor/reset_info"

    const-string v5, "SENSORBD"

    if-nez v2, :cond_0

    .line 580
    const-string v0, "Bundle is null"

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void

    .line 584
    :cond_0
    const/4 v6, 0x0

    .line 585
    .local v6, "address":I
    const-string v0, "resetStatus"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 586
    .local v7, "resetStatus":I
    const-string v0, "resetCnt"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 587
    .local v8, "resetCnt":J
    const-string v0, "timestamp"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 588
    .local v10, "timestamp":J
    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getMiniDumpPath()Ljava/lang/String;

    move-result-object v12

    .line 589
    .local v12, "dumpPath":Ljava/lang/String;
    const-string v0, ""

    .line 592
    .local v0, "dumpRaw":Ljava/lang/String;
    iget-wide v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    iget-wide v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    sub-long v13, v10, v13

    const-wide/16 v15, 0x2710

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    .line 594
    const-string v3, "Resetting timestamp of sensorhub is too short, skip sending event to big data server!!"

    invoke-static {v5, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 597
    :cond_1
    iput-wide v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    .line 600
    const-string v13, ""

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "sm"

    const/4 v15, 0x0

    const-wide/16 v16, 0x1

    if-nez v13, :cond_5

    .line 602
    const/4 v13, 0x2

    if-ne v7, v13, :cond_4

    .line 603
    move-object v13, v3

    iget-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    const-wide/16 v18, 0x2

    cmp-long v2, v2, v18

    if-gez v2, :cond_3

    .line 604
    invoke-direct {v1, v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    .end local v0    # "dumpRaw":Ljava/lang/String;
    .local v2, "dumpRaw":Ljava/lang/String;
    invoke-direct {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkMiniDumpData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 606
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v0

    .line 608
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "MD_RAW"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 612
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v0, "SHMD"

    move-object/from16 v18, v2

    .end local v2    # "dumpRaw":Ljava/lang/String;
    .local v18, "dumpRaw":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v15, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 616
    move-object/from16 v19, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v19, "jsonObject":Lorg/json/JSONObject;
    iget-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    add-long v2, v2, v16

    iput-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    .line 618
    .end local v19    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 619
    .end local v18    # "dumpRaw":Ljava/lang/String;
    .restart local v2    # "dumpRaw":Ljava/lang/String;
    :cond_2
    move-object/from16 v18, v2

    .end local v2    # "dumpRaw":Ljava/lang/String;
    .restart local v18    # "dumpRaw":Ljava/lang/String;
    const-string v0, "Mini dump data is same, skip sending to big data!"

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 622
    .end local v18    # "dumpRaw":Ljava/lang/String;
    .local v0, "dumpRaw":Ljava/lang/String;
    :cond_3
    const-string v2, "Max event about minidump happens!!"

    invoke-static {v5, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 602
    :cond_4
    move-object v13, v3

    goto :goto_1

    .line 600
    :cond_5
    move-object v13, v3

    .line 627
    :goto_1
    move-object/from16 v18, v0

    .end local v0    # "dumpRaw":Ljava/lang/String;
    .restart local v18    # "dumpRaw":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorhub reset status : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sensorhub reset cnt : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sensorhub reset timestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    add-long v2, v2, v16

    iput-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorHubResetCnt : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    const-wide/16 v16, 0x12c

    cmp-long v0, v2, v16

    if-gez v0, :cond_d

    .line 634
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 636
    .local v2, "merged":Lorg/json/JSONObject;
    :try_start_1
    const-string v0, "MRSI_VERSION"

    const-string v3, "11.2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    goto :goto_3

    .line 637
    :catch_1
    move-exception v0

    .line 638
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 641
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    const/16 v0, 0x64

    if-lt v7, v0, :cond_6

    .line 642
    const/4 v0, 0x1

    .line 643
    .end local v6    # "address":I
    .local v0, "address":I
    add-int/lit8 v3, v7, -0x64

    add-int/lit8 v7, v3, 0x1

    move v6, v0

    goto :goto_4

    .line 645
    .end local v0    # "address":I
    .restart local v6    # "address":I
    :cond_6
    const/4 v0, 0x0

    move v6, v0

    .line 649
    :goto_4
    const/4 v0, 0x3

    if-ne v7, v0, :cond_7

    .line 650
    const/4 v7, 0x0

    .line 653
    :cond_7
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sResetReason:[[Ljava/lang/String;

    aget-object v3, v3, v6

    array-length v3, v3

    if-ge v7, v3, :cond_8

    if-gez v7, :cond_9

    .line 654
    :cond_8
    const/4 v3, 0x0

    move v7, v3

    .line 657
    :cond_9
    if-lez v7, :cond_c

    .line 659
    :try_start_2
    const-string v3, "ERROR_TYPE"

    sget-object v16, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    aget-object v0, v16, v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v0, "RESET_REASON"

    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sResetReason:[[Ljava/lang/String;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v0, "TIMESTAMP"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v0, "SENSOR_INFO"

    const-string v3, "SENSOR"

    invoke-direct {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorClientData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    invoke-direct {v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v3, "RESET_INFO"

    if-eqz v0, :cond_a

    .line 665
    :try_start_3
    invoke-direct {v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 666
    :cond_a
    invoke-direct {v1, v13}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 667
    invoke-direct {v1, v13}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :cond_b
    :goto_5
    const-string v0, "SEMCONTEXT_INFO"

    const-string v3, "SEMCONTEXT"

    invoke-direct {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorClientData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 672
    goto :goto_6

    .line 670
    :catch_2
    move-exception v0

    .line 671
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 673
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v0, "MRSI"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3, v15, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 681
    .end local v2    # "merged":Lorg/json/JSONObject;
    :cond_c
    goto :goto_7

    .line 682
    :cond_d
    const-string v0, "Max event about resetting sensorhub happens!!"

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_7
    return-void
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # J

    .line 2422
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2423
    const-string v0, ""

    return-object v0

    .line 2426
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2427
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2429
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_1

    .line 2430
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2431
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 2433
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2440
    .end local v3    # "month":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private disableFreeFallSensorEvent()V
    .locals 2

    .line 2043
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->cancelAlarm()V

    .line 2044
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    .line 2045
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    .line 2046
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    .line 2047
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    .line 2048
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    .line 2049
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGEventCnt:I

    .line 2050
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2051
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2052
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallHighGAccelEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2053
    return-void
.end method

.method private enableFreeFallDetection()I
    .locals 4

    .line 1392
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1394
    .local v0, "tmpPM":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 1402
    .end local v0    # "tmpPM":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private enableFreeFallSensorEvent()V
    .locals 6

    .line 2004
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    const-string v1, "SENSORBD"

    if-eqz v0, :cond_0

    .line 2005
    const-string v0, "Free fall sensor checking is already enabled!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return-void

    .line 2008
    :cond_0
    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->startAlarm(J)V

    .line 2009
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    .line 2010
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    .line 2011
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    .line 2012
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    .line 2013
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    .line 2014
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGEventCnt:I

    .line 2016
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 2018
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1

    .line 2019
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2020
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    aput v0, v3, v2

    .line 2022
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_2

    .line 2023
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2024
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    aput v0, v2, v0

    .line 2026
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    .line 2027
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2028
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 2030
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_4

    .line 2031
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2032
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 2035
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHighGAccSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_5

    .line 2036
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallHighGAccelEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHighGAccSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2037
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 2039
    :cond_5
    const-string v0, "Enable free fall sensor event"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    return-void
.end method

.method private forceStopSensor()V
    .locals 3

    .line 856
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsTestRunning:Z

    const-string v1, "SENSORBD"

    if-eqz v0, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->unregisterAccWrongRangeListener()V

    .line 859
    const-string v0, "[STUCK] Give a vacation to All Sensor Stuck Aurors."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 863
    const-string v0, "[CORE ] Shutdown all test runs by timeout."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsTestRunning:Z

    .line 866
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->release()V

    .line 867
    const-string v0, "forceStopSensor(): run"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_0
    const-string v0, "forceStopSensor(): skip"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_0
    return-void
.end method

.method private static getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "file_path"    # Ljava/lang/String;

    .line 1293
    const-string v0, ""

    .line 1294
    .local v0, "s":Ljava/lang/String;
    const-string v1, "SENSORBD"

    if-nez p0, :cond_0

    .line 1295
    const-string v2, "File Path is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-object v0

    .line 1299
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1303
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_1

    .line 1304
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1306
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1307
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 1308
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1310
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1298
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "s":Ljava/lang/String;
    .end local p0    # "file_path":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1308
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "s":Ljava/lang/String;
    .restart local p0    # "file_path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1309
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "File transmission is failed"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v0
.end method

.method private getFreeFallDetectionTime(J)J
    .locals 6
    .param p1, "height"    # J

    .line 1406
    const/4 v0, 0x0

    .line 1407
    .local v0, "tmpTime":F
    long-to-double v1, p1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 1408
    .local v1, "tmpHeight":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1409
    .local v2, "time":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    const v4, 0x411ccccd    # 9.8f

    div-float/2addr v3, v4

    .line 1410
    .end local v0    # "tmpTime":F
    .local v3, "tmpTime":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 1411
    .end local v2    # "time":F
    .local v0, "time":F
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    .line 1412
    float-to-long v4, v0

    return-wide v4
.end method

.method private getFreeFallTime(J)Ljava/lang/String;
    .locals 4
    .param p1, "time"    # J

    .line 1724
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1725
    const-string v0, ""

    return-object v0

    .line 1728
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1729
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1730
    .local v1, "today":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd/HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v1, :cond_1

    .line 1733
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMiniDumpPath()Ljava/lang/String;
    .locals 3

    .line 564
    const-string v0, ""

    .line 566
    .local v0, "res":Ljava/lang/String;
    const-string v1, "/sys/class/sensors/ssp_sensor/bcm_minidump"

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const-string v0, "/sys/class/sensors/ssp_sensor/bcm_minidump"

    goto :goto_0

    .line 568
    :cond_0
    const-string v1, "/sys/class/sensors/ssp_sensor/minidump"

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    const-string v0, "/sys/class/sensors/ssp_sensor/minidump"

    goto :goto_0

    .line 571
    :cond_1
    const-string v1, "SENSORBD"

    const-string v2, "No minidump path!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return-object v0
.end method

.method private getSensorClientData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "SEMCONTEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "SENSOR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1424
    :pswitch_0
    const-string v1, "sensorservice"

    const-string v2, "big_data"

    const-string v3, "/data/system/sensor_big_data.txt"

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1425
    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1419
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_1

    .line 1420
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextManager;->getCurrentServiceList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6e6cb846 -> :sswitch_1
        -0x3381270c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1662
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1668
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1669
    .local v1, "result":Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    .end local v1    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    const-string v1, ","

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    const-string v1, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1672
    return-object v0

    .line 1663
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v1, "SENSORBD"

    const-string v2, "Data about resetting information is wrong"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-object v0
.end method

.method private getSensorListForStuckCheck()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v0, "sensorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 834
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 835
    .local v3, "s":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 836
    .local v4, "type":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 845
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    .end local v3    # "s":Landroid/hardware/Sensor;
    .end local v4    # "type":I
    :goto_1
    goto :goto_0

    .line 850
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] # of sensors for Stuck check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SENSORBD"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x10072 -> :sswitch_0
        0x10097 -> :sswitch_0
        0x10099 -> :sswitch_0
        0x100a5 -> :sswitch_0
        0x100a7 -> :sswitch_0
    .end sparse-switch
.end method

.method private getUsageData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .line 1449
    const-string v0, ""

    const-string v1, "SENSORBD"

    if-nez p1, :cond_0

    .line 1450
    const-string v2, "Type value is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-object v0

    .line 1454
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    const-string v2, "Type value is wrong!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    return-object v0

    .line 1459
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v2, "USAGE_DATA_SENSOR_PACKAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "SENSOR_USAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "Data about usage of sensor is too long!!"

    const/16 v4, 0x3e8

    const-string v5, "sensorservice"

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 1474
    :pswitch_0
    const-string v2, "big_data_pkg"

    const-string v6, "/data/system/big_data_sensor_usage_pkg.txt"

    invoke-virtual {p0, v6, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1475
    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    .local v2, "usageData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 1477
    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1479
    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1480
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    .end local v2    # "usageData":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_4

    .line 1462
    :pswitch_1
    const-string v2, "big_data_sensor_usage"

    const-string v6, "/data/system/sensor_big_data_usage.txt"

    invoke-virtual {p0, v6, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1463
    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    .restart local v2    # "usageData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 1465
    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1467
    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1468
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .end local v2    # "usageData":Ljava/lang/String;
    :cond_6
    :goto_3
    nop

    .line 1488
    :cond_7
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38060344 -> :sswitch_1
        0x43569a18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWakeUpCountData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1629
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1635
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 1630
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v1, "SENSORBD"

    const-string v2, "WakeUpCount: path is wrong."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return-object v0
.end method

.method private initVariableForVectorSum()V
    .locals 3

    .line 1121
    const-string v0, "SENSORBD"

    const-string v1, "InitVariableForVectorSum"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    .line 1123
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    .line 1124
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    .line 1125
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    .line 1126
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    .line 1127
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1128
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    .line 1129
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    .line 1130
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    .line 1131
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    .line 1132
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    .line 1133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    aput v0, v2, v1

    .line 1135
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    aput v0, v2, v1

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1322
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isMovingForVectorSum([F)I
    .locals 8
    .param p1, "sensorData"    # [F

    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1159
    .local v1, "accData":F
    const/4 v2, 0x0

    .line 1160
    .local v2, "accData2":F
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1161
    mul-float v2, v1, v1

    .line 1163
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1164
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 1165
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1168
    :cond_0
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    aget v5, v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    .line 1169
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    aget v5, v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    .line 1171
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    aput v1, v4, v5

    .line 1172
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    aput v2, v4, v5

    .line 1174
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    div-float/2addr v6, v5

    iget v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    div-float/2addr v7, v5

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    .line 1176
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    float-to-double v4, v4

    const-wide v6, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpg-double v4, v4, v6

    const/16 v5, 0x32

    if-gez v4, :cond_1

    .line 1177
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    if-ge v3, v5, :cond_2

    .line 1178
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    goto :goto_0

    .line 1181
    :cond_1
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    .line 1184
    :cond_2
    :goto_0
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    if-lt v3, v5, :cond_3

    .line 1185
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 1186
    const/4 v0, 0x3

    .line 1187
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    goto :goto_1

    .line 1189
    :cond_3
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 1190
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 1191
    const/4 v0, 0x4

    .line 1192
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    .line 1196
    :cond_4
    :goto_1
    return v0
.end method

.method private isSensorHubSupported()Z
    .locals 3

    .line 1316
    const-string v0, "/sys/class/sensors/ssp_sensor/mcu_rev"

    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    .line 1317
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorHubSupport: /sys/class/sensors/ssp_sensor/mcu_rev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SENSORBD"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return v0
.end method

.method private synthetic lambda$enableTestSensor$0()V
    .locals 2

    .line 537
    const-string v0, "SENSORBD"

    const-string v1, "[STUCK] Sensor System Checker Start -> "

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->updateSensorStuckStatus()V

    .line 539
    return-void
.end method

.method static synthetic lambda$forceStopSensor$3(Ljava/lang/Integer;Lcom/samsung/android/gesture/checker/SensorStuckAuror;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "auror"    # Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 861
    invoke-virtual {p1}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->stop()V

    .line 862
    return-void
.end method

.method private synthetic lambda$reportProbeStatusEachSensor$1(Ljava/lang/Integer;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "auror"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    .line 691
    iget v0, p2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->code:I

    .line 692
    .local v0, "type":I
    iget v1, p2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    .line 694
    .local v1, "prob":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PROBE] : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prob = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SENSORBD"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    if-nez v1, :cond_0

    .line 698
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 699
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "MRSI_VERSION"

    const-string v5, "11.2"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v4, "SENSOR_TYPE"

    iget-object v5, p2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->pathEFS:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string v4, "CHIP_ID"

    iget-object v5, p2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    const-string v4, "ERROR_TYPE"

    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PROBE] Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 708
    :catch_0
    move-exception v2

    .line 709
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 712
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PROBE] Vendor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method static synthetic lambda$reportProbeStuckStatus$5(Lorg/json/JSONObject;Ljava/lang/Integer;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;)V
    .locals 5
    .param p0, "merged"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "auror"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    .line 1008
    invoke-virtual {p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1009
    return-void

    .line 1013
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getResultFormatted()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v1, "temp":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1016
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1017
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1018
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    nop

    .end local v3    # "k":Ljava/lang/String;
    goto :goto_0

    .line 1022
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "temp":Lorg/json/JSONObject;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1023
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method static synthetic lambda$updateSensorProbeStatus$4(Ljava/lang/Integer;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "auror"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    .line 994
    invoke-virtual {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->update()V

    .line 995
    return-void
.end method

.method static synthetic lambda$updateSensorStuckStatus$2(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Lcom/samsung/android/gesture/checker/SensorStuckAuror;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "auror"    # Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 811
    invoke-virtual {p2, p0}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->prepare(Ljava/util/concurrent/CountDownLatch;)V

    .line 812
    invoke-virtual {p2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->update()V

    .line 813
    return-void
.end method

.method private registerAccWrongRangeListener()V
    .locals 5

    .line 1141
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->acquire(J)V

    .line 1142
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->initVariableForVectorSum()V

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1144
    return-void
.end method

.method private reportProbeStatusEachSensor()V
    .locals 2

    .line 688
    const-string v0, "SENSORBD"

    const-string v1, "[PROBE] Report Probe Status of Each Sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 714
    return-void
.end method

.method private reportProbeStuckStatus(I)V
    .locals 8
    .param p1, "type"    # I

    .line 1000
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1002
    .local v0, "merged":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "MRSI_VERSION"

    const-string v2, "11.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    goto :goto_0

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1007
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1029
    const-string v1, "N/A"

    .line 1030
    .local v1, "stuckStr":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v2

    const-string v4, "STUCK"

    const-string v5, "NOT STUCK"

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 1031
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 1032
    .local v2, "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    if-eqz v2, :cond_1

    .line 1033
    invoke-virtual {v2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->getResult()Z

    move-result v3

    .line 1034
    .local v3, "isStuck":Z
    if-eqz v3, :cond_0

    move-object v7, v4

    goto :goto_1

    :cond_0
    move-object v7, v5

    :goto_1
    move-object v1, v7

    .line 1038
    .end local v2    # "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    .end local v3    # "isStuck":Z
    :cond_1
    :try_start_1
    const-string v2, "ACC_STUCK"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    goto :goto_2

    .line 1039
    :catch_1
    move-exception v2

    .line 1040
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1043
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "N/A"

    .line 1044
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1045
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 1046
    .local v2, "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    if-eqz v2, :cond_3

    .line 1047
    invoke-virtual {v2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->getResult()Z

    move-result v3

    .line 1048
    .restart local v3    # "isStuck":Z
    if-eqz v3, :cond_2

    move-object v7, v4

    goto :goto_3

    :cond_2
    move-object v7, v5

    :goto_3
    move-object v1, v7

    .line 1052
    .end local v2    # "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    .end local v3    # "isStuck":Z
    :cond_3
    :try_start_2
    const-string v2, "GYRO_STUCK"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1055
    goto :goto_4

    .line 1053
    :catch_2
    move-exception v2

    .line 1054
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1057
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_4
    const-string v1, "N/A"

    .line 1058
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 1059
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 1060
    .local v2, "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    if-eqz v2, :cond_5

    .line 1061
    invoke-virtual {v2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->getResult()Z

    move-result v3

    .line 1062
    .restart local v3    # "isStuck":Z
    if-eqz v3, :cond_4

    move-object v7, v4

    goto :goto_5

    :cond_4
    move-object v7, v5

    :goto_5
    move-object v1, v7

    .line 1066
    .end local v2    # "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    .end local v3    # "isStuck":Z
    :cond_5
    :try_start_3
    const-string v2, "BARO_STUCK"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1069
    goto :goto_6

    .line 1067
    :catch_3
    move-exception v2

    .line 1068
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1071
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_6
    const-string v1, "N/A"

    .line 1072
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_7

    .line 1073
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 1074
    .local v2, "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    if-eqz v2, :cond_7

    .line 1075
    invoke-virtual {v2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->getResult()Z

    move-result v3

    .line 1076
    .restart local v3    # "isStuck":Z
    if-eqz v3, :cond_6

    move-object v7, v4

    goto :goto_7

    :cond_6
    move-object v7, v5

    :goto_7
    move-object v1, v7

    .line 1080
    .end local v2    # "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    .end local v3    # "isStuck":Z
    :cond_7
    :try_start_4
    const-string v2, "SUB_ACC_STUCK"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1083
    goto :goto_8

    .line 1081
    :catch_4
    move-exception v2

    .line 1082
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1085
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_8
    const-string v1, "N/A"

    .line 1086
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 1087
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    .line 1088
    .local v2, "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    if-eqz v2, :cond_9

    .line 1089
    invoke-virtual {v2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->getResult()Z

    move-result v3

    .line 1090
    .restart local v3    # "isStuck":Z
    if-eqz v3, :cond_8

    goto :goto_9

    :cond_8
    move-object v4, v5

    :goto_9
    move-object v1, v4

    .line 1094
    .end local v2    # "tmpAuror":Lcom/samsung/android/gesture/checker/SensorStuckAuror;
    .end local v3    # "isStuck":Z
    :cond_9
    :try_start_5
    const-string v2, "SUB_GYRO_STUCK"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1097
    goto :goto_a

    .line 1095
    :catch_5
    move-exception v2

    .line 1096
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1100
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sm"

    const-string v4, "MRSI"

    invoke-direct {p0, v4, v2, p1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1102
    return-void
.end method

.method private sendFreeFallEventToBigDataServer()V
    .locals 11

    .line 1927
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v1, v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 1930
    .local v1, "avg_data":[[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 1931
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 1932
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 1946
    :pswitch_0
    aget-object v8, v1, v6

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGData:[[F

    aget-object v9, v9, v4

    aget v9, v9, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGData:[[F

    aget-object v10, v10, v2

    aget v10, v10, v7

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelHighGData:[[F

    aget-object v10, v10, v0

    aget v10, v10, v7

    add-float/2addr v9, v10

    aput v9, v8, v7

    .line 1947
    goto :goto_2

    .line 1943
    :pswitch_1
    aget-object v8, v1, v6

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    aget-object v9, v9, v4

    aget v9, v9, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    aget-object v10, v10, v2

    aget v10, v10, v7

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    aget-object v10, v10, v0

    aget v10, v10, v7

    add-float/2addr v9, v10

    aput v9, v8, v7

    .line 1944
    goto :goto_2

    .line 1940
    :pswitch_2
    aget-object v8, v1, v6

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    aget-object v9, v9, v4

    aget v9, v9, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    aget-object v10, v10, v2

    aget v10, v10, v7

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    aget-object v10, v10, v0

    aget v10, v10, v7

    add-float/2addr v9, v10

    aput v9, v8, v7

    .line 1941
    goto :goto_2

    .line 1937
    :pswitch_3
    aget-object v8, v1, v6

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    aget-object v9, v9, v4

    aget v9, v9, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    aget-object v10, v10, v2

    aget v10, v10, v7

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    aget-object v10, v10, v0

    aget v10, v10, v7

    add-float/2addr v9, v10

    aput v9, v8, v7

    .line 1938
    goto :goto_2

    .line 1934
    :pswitch_4
    aget-object v8, v1, v6

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    aget-object v9, v9, v4

    aget v9, v9, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    aget-object v10, v10, v2

    aget v10, v10, v7

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    aget-object v10, v10, v0

    aget v10, v10, v7

    add-float/2addr v9, v10

    aput v9, v8, v7

    .line 1935
    nop

    .line 1951
    :goto_2
    aget-object v8, v1, v6

    aget v9, v8, v7

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    aput v9, v8, v7

    .line 1931
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1930
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1956
    .end local v6    # "i":I
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1959
    .local v0, "temp":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 1961
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v3, :cond_3

    .line 1962
    const/4 v7, 0x0

    .line 1963
    .local v7, "sensor":Landroid/hardware/Sensor;
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    .line 1968
    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHighGAccSensor:Landroid/hardware/Sensor;

    goto :goto_5

    .line 1967
    :pswitch_6
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    goto :goto_5

    .line 1966
    :pswitch_7
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    goto :goto_5

    .line 1965
    :pswitch_8
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    goto :goto_5

    .line 1964
    :pswitch_9
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    .line 1973
    :goto_5
    if-nez v7, :cond_2

    const-string v8, "PF|N/A"

    goto :goto_6

    :cond_2
    aget-object v8, v1, v2

    aget v8, v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    .line 1975
    .local v8, "avg":Ljava/lang/String;
    :goto_6
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSensorID:[[Ljava/lang/String;

    aget-object v9, v9, v2

    aget-object v9, v9, v6

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    goto :goto_7

    .line 1976
    :catch_0
    move-exception v9

    .line 1977
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 1961
    .end local v7    # "sensor":Landroid/hardware/Sensor;
    .end local v9    # "e":Lorg/json/JSONException;
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1959
    .end local v6    # "j":I
    .end local v8    # "avg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1984
    .end local v2    # "i":I
    :cond_4
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1985
    .local v2, "merged":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1986
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1987
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1988
    .local v5, "k":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1989
    nop

    .end local v5    # "k":Ljava/lang/String;
    goto :goto_8

    .line 1992
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1995
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_9

    .line 1993
    .end local v2    # "merged":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 1994
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1998
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_9
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    const-string v3, "ph"

    const-string v5, "MRSI"

    invoke-direct {p0, v5, v2, v4, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1999
    const-string v2, "SENSORBD"

    const-string v3, "Send free fall event to big data server!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "hitType"    # Ljava/lang/String;

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const-string v1, "SENSORBD"

    if-nez v0, :cond_0

    .line 1354
    const-string v0, "Context is null!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/SemHqmManager;

    .line 1360
    .local v2, "semHqmManager":Landroid/os/SemHqmManager;
    const-string v4, "Sensor"

    .line 1361
    .local v4, "compID":Ljava/lang/String;
    const-string v7, "0.0"

    .line 1362
    .local v7, "compVer":Ljava/lang/String;
    const-string v8, "sec"

    .line 1363
    .local v8, "compManufacture":Ljava/lang/String;
    move-object v0, p2

    .line 1365
    .local v0, "loggingData":Ljava/lang/String;
    const-string v3, "{"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    const-string v3, "}"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const-string v3, "MRSI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1370
    if-eqz v0, :cond_1

    .line 1371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x400

    if-le v3, v5, :cond_1

    .line 1372
    const-string v3, "MRSI Feature\'s length is wrong!!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void

    .line 1378
    :cond_1
    const-string v9, ""

    .line 1379
    .local v9, "dev_customDataSet":Ljava/lang/String;
    move-object v10, v0

    .line 1380
    .local v10, "basic_customDataSet":Ljava/lang/String;
    const-string v11, ""

    .line 1382
    .local v11, "pri_customDataSet":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1383
    move-object v5, p1

    move v3, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1386
    :cond_2
    const-string v3, "SemHqmManager is null!!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :goto_0
    return-void
.end method

.method private sendSDMPData(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STUCK] sendSDMP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v0, 0x0

    const-string v1, "sm"

    const-string v2, "SDMP"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 890
    return-void
.end method

.method private sendWakeUpCountData()V
    .locals 5

    .line 1642
    const-string v0, "/sys/class/sensors/ssp_sensor/wakeup_reason"

    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SENSORBD"

    if-eqz v0, :cond_0

    .line 1643
    const-string v0, "/sys/class/sensors/ssp_sensor/wakeup_reason"

    .local v0, "path":Ljava/lang/String;
    goto :goto_0

    .line 1644
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string v0, "/sys/class/sensors/ssc_core/wakeup_reason"

    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1645
    const-string v0, "/sys/class/sensors/ssc_core/wakeup_reason"

    .line 1651
    .restart local v0    # "path":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getWakeUpCountData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1652
    .local v2, "info":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1657
    :cond_1
    const/4 v1, 0x0

    const-string v3, "sm"

    const-string v4, "MRSI"

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1659
    return-void

    .line 1653
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeUpCount: Skip reporting by formatting error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-void

    .line 1647
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    :cond_3
    const-string v0, "WakeUpCount: path not exist."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-void
.end method

.method private setupProbeChecker()V
    .locals 16

    .line 893
    move-object/from16 v0, p0

    const-string v1, "[PROBE] SETUP -> Sensor Probe Verifier"

    const-string v2, "SENSORBD"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    .line 898
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 899
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "code"

    const/4 v4, 0x0

    .line 906
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 899
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    const-string v4, "sensor_type"

    const/4 v6, 0x1

    .line 917
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 900
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 901
    const-string v8, "name"

    const-string v9, "None"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v10, "android.hardware.sensor.accelerometer"

    const-string v11, "feature"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v10, "Accelerometer"

    const-string v12, "efs_path"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v10, "ACC_NAME"

    const-string v13, "log_key_chip_name"

    invoke-virtual {v1, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v10, "ACC_PROBE"

    const-string v14, "log_key_err_type"

    invoke-virtual {v1, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v15, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    iget-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v15, v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v10, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v5, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 909
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 910
    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v5, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x1

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const/4 v1, 0x4

    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v5, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v1, "Gyroscope"

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v1, "GYRO_NAME"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v1, "GYRO_PROBE"

    invoke-virtual {v5, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    iget-object v10, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 920
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 921
    .end local v5    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const/4 v5, 0x2

    .line 928
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 921
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v5, "android.hardware.sensor.compass"

    invoke-virtual {v1, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v5, "Magnetometer"

    invoke-virtual {v1, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v5, "MAG_NAME"

    invoke-virtual {v1, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v5, "MAG_PROBE"

    invoke-virtual {v1, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    iget-object v10, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v5, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 931
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 932
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    const/4 v1, 0x3

    .line 939
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 932
    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    const/4 v1, 0x6

    .line 951
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 933
    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v10, "android.hardware.sensor.barometer"

    invoke-virtual {v5, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v10, "Barometer"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v10, "BARO_NAME"

    invoke-virtual {v5, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v10, "BARO_PROBE"

    invoke-virtual {v5, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v15, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    iget-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v10, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 943
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 944
    .end local v5    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const/4 v5, 0x6

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    const/4 v5, 0x5

    .line 963
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 945
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v10, "android.hardware.sensor.light"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v10, "Light"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v10, "LIGHT_NAME"

    invoke-virtual {v1, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v10, "LIGHT_PROBE"

    invoke-virtual {v1, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v15, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v15, v0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v10, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v5, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 955
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 956
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    const/4 v1, 0x5

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 957
    const/16 v1, 0x8

    .line 983
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 957
    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 958
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v10, "android.hardware.sensor.proximity"

    invoke-virtual {v5, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v10, "Proximity"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v10, "PROXI_NAME"

    invoke-virtual {v5, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v10, "PROXI_PROBE"

    invoke-virtual {v5, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v11, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;

    iget-object v15, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 966
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 967
    .end local v5    # "bundle":Landroid/os/Bundle;
    .local v6, "bundle":Landroid/os/Bundle;
    const/4 v5, 0x7

    .line 973
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 967
    invoke-virtual {v6, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 968
    const v5, 0x10097

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 969
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v5, "Sub_Accelerometer"

    invoke-virtual {v6, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v5, "SUB_ACC_NAME"

    invoke-virtual {v6, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v5, "SUB_ACC_PROBE"

    invoke-virtual {v6, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v11, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;

    iget-object v15, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 976
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 977
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    const v1, 0x10099

    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 979
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v1, "Sub_Gyroscope"

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v1, "SUB_GYRO_NAME"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v1, "SUB_GYRO_PROBE"

    invoke-virtual {v5, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;

    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setup(Landroid/os/Bundle;)V

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PROBE] SETUP -> Employed # of Auror = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method

.method private setupStuckChecker()V
    .locals 12

    .line 717
    const-string v0, "[STUCK] SETUP -> Sensor Stuck Verifier"

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorListForStuckCheck()Ljava/util/ArrayList;

    move-result-object v0

    .line 719
    .local v0, "sensorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    .line 722
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 723
    .local v3, "s":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 724
    .local v4, "type":I
    const/4 v5, 0x1

    const/16 v6, 0x258

    const-string v7, "sample_cnt"

    const-string v8, "max_axis"

    const-string v9, "sensor_type"

    const/4 v10, 0x3

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 776
    :sswitch_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 778
    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 779
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub2;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 782
    goto/16 :goto_1

    .line 768
    .end local v5    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 769
    .restart local v5    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 770
    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 774
    goto/16 :goto_1

    .line 758
    .end local v5    # "bundle":Landroid/os/Bundle;
    :sswitch_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 759
    .restart local v5    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 764
    goto/16 :goto_1

    .line 750
    .end local v5    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 751
    .restart local v5    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 756
    goto/16 :goto_1

    .line 786
    .end local v5    # "bundle":Landroid/os/Bundle;
    :sswitch_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 787
    .restart local v5    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 792
    goto/16 :goto_1

    .line 742
    .end local v5    # "bundle":Landroid/os/Bundle;
    :sswitch_5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    const/16 v5, 0x3c

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 746
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 748
    goto :goto_1

    .line 734
    .end local v6    # "bundle":Landroid/os/Bundle;
    :sswitch_6
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v11, "bundle":Landroid/os/Bundle;
    invoke-virtual {v11, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    invoke-virtual {v11, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    invoke-virtual {v11, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 738
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v5, v11}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 740
    goto :goto_1

    .line 726
    .end local v11    # "bundle":Landroid/os/Bundle;
    :sswitch_7
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 727
    .restart local v5    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v6, v5}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->setup(Landroid/os/Bundle;)V

    .line 732
    nop

    .line 797
    .end local v3    # "s":Landroid/hardware/Sensor;
    .end local v4    # "type":I
    .end local v5    # "bundle":Landroid/os/Bundle;
    :goto_1
    goto/16 :goto_0

    .line 798
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] SETUP -> Employed # of Auror = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x4 -> :sswitch_6
        0x6 -> :sswitch_5
        0x10072 -> :sswitch_4
        0x10097 -> :sswitch_3
        0x10099 -> :sswitch_2
        0x100a5 -> :sswitch_1
        0x100a7 -> :sswitch_0
    .end sparse-switch
.end method

.method private startAlarm(J)V
    .locals 7
    .param p1, "timeout"    # J

    .line 1676
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v1, "SENSORBD"

    if-nez v0, :cond_0

    .line 1677
    const-string v0, "AlarmManager is not available."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void

    .line 1680
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "timeout"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1683
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1685
    .local v2, "operation":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    .line 1685
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1688
    const-string v3, "Set timer expiration for SensorChecker"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return-void
.end method

.method private unregisterAccWrongRangeListener()V
    .locals 2

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccWrongRange EN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    .line 1151
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->release()V

    .line 1154
    return-void
.end method

.method private updateSensorProbeStatus()V
    .locals 2

    .line 990
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 991
    return-void

    .line 993
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeAurorMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 996
    return-void
.end method

.method private updateSensorStuckStatus()V
    .locals 6

    .line 802
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 803
    return-void

    .line 806
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 807
    .local v0, "count":I
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 808
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] Ready: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SENSORBD"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckAurorMap:Ljava/util/HashMap;

    new-instance v4, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 816
    :try_start_0
    const-string v2, "[STUCK] Set time limit for termination."

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x19

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 819
    .local v2, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[STUCK] Done. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->cancelAlarm()V

    .line 821
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 822
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    const/16 v4, 0x55

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v2    # "ret":Z
    goto :goto_0

    .line 825
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 828
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private writeFreeFallLoggingData(JI)V
    .locals 4
    .param p1, "height"    # J
    .param p3, "dropType"    # I

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1708
    .local v0, "sb":Ljava/lang/StringBuilder;
    packed-switch p3, :pswitch_data_0

    .line 1712
    const-string v1, "U"

    goto :goto_0

    .line 1711
    :pswitch_0
    const-string v1, "H"

    goto :goto_0

    .line 1710
    :pswitch_1
    const-string v1, "S"

    goto :goto_0

    .line 1709
    :pswitch_2
    const-string v1, "N"

    .line 1712
    :goto_0
    nop

    .line 1714
    .local v1, "drop_type":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFreeFallTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1717
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    .line 1720
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->writeData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)V

    .line 1721
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2406
    const-string v0, " \n===== FFD ===== "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    const-string v0, " \n Time\t\t\t     H         S         T "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2409
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;

    .line 2410
    .local v1, "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    iget-object v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->currentTimeStr:Ljava/lang/String;

    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->height:J

    .line 2412
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->status:I

    .line 2413
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->freeFallTime:J

    .line 2414
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 2410
    const-string v3, "%-25s    %d        %d        %d %n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2408
    .end local v1    # "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2416
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public enableTestSensor()I
    .locals 8

    .line 507
    const/4 v0, -0x1

    .line 509
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsTestRunning:Z

    const-string v2, "SENSORBD"

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "Test is running already -> SKIP"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return v0

    .line 514
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsTestRunning:Z

    .line 516
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->acquire(J)V

    .line 518
    const-string v1, "[STUCK] Set timer for sensor stuck checker."

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-wide/16 v3, 0x7530

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->startAlarm(J)V

    .line 522
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->reportProbeStuckStatus(I)V

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->updateSensorProbeStatus()V

    .line 527
    const-string v3, "[PROBE] Proceed Sensor System Checking - Phase 1 (Probe)"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->reportProbeStatusEachSensor()V

    .line 529
    const-string v3, "[PROBE] Sensor System Checking - Phase 1 Done."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    .line 535
    const-string v3, "[STUCK] Proceed Sensor System Checking - Phase 2 (Stuck)"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 540
    .local v3, "r":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 544
    const-string v4, "SENSOR_USAGE"

    invoke-direct {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, "data":Ljava/lang/String;
    const-string v5, "MRSI"

    const-string v6, "sm"

    invoke-direct {p0, v5, v4, v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    const-string v7, "USAGE_DATA_SENSOR_PACKAGE"

    invoke-direct {p0, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-direct {p0, v5, v4, v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendWakeUpCountData()V

    .line 555
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->registerAccWrongRangeListener()V

    .line 559
    const-string v1, "[FIN] Sensor Checking is GTD."

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v0
.end method

.method getDropInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1740
    .local v0, "sb":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 1743
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1742
    :pswitch_0
    const-string v1, "HARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1741
    :pswitch_1
    const-string v1, "SOFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;

    .line 1493
    const/4 v0, 0x1

    .line 1495
    .local v0, "res":Z
    const-string v1, "SENSORBD"

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_a

    .line 1500
    :cond_0
    if-eqz p3, :cond_c

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_9

    .line 1505
    :cond_1
    if-eqz p2, :cond_b

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_8

    .line 1510
    :cond_2
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1511
    .local v3, "SensorService":Landroid/os/IBinder;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1514
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1516
    .local v5, "pf":Ljava/io/File;
    if-eqz v5, :cond_4

    .line 1517
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1518
    const-string v6, "mkdir true"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1520
    :cond_3
    const-string v6, "mkdir false"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1524
    const-string v6, "CreateNewFile true"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1526
    :cond_5
    const-string v6, "CreateNewFile false"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    .end local v5    # "pf":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 1528
    :catch_0
    move-exception v1

    .line 1529
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1530
    return v2

    .line 1534
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    const/4 v5, 0x0

    .line 1535
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 1537
    .local v6, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v7

    .line 1539
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v6, v7

    .line 1540
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v7

    .line 1541
    .local v7, "str":[Ljava/lang/String;
    if-nez v3, :cond_7

    .line 1542
    const-string v8, "Service is null"

    invoke-static {v1, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1543
    const/4 v0, 0x0

    goto :goto_3

    .line 1546
    :cond_7
    :try_start_3
    invoke-interface {v3, v6, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1558
    nop

    .line 1566
    .end local v7    # "str":[Ljava/lang/String;
    :goto_3
    nop

    .line 1575
    nop

    .line 1576
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1581
    nop

    .line 1584
    return v0

    .line 1578
    :catch_1
    move-exception v1

    .line 1579
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1547
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "str":[Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1549
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .line 1550
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1555
    nop

    .line 1556
    :try_start_6
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1557
    nop

    .line 1575
    nop

    .line 1576
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1581
    nop

    .line 1557
    return v2

    .line 1578
    :catch_3
    move-exception v8

    .line 1579
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1552
    .end local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 1553
    .local v8, "e1":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1554
    nop

    .line 1575
    nop

    .line 1576
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1581
    nop

    .line 1554
    return v2

    .line 1578
    :catch_5
    move-exception v9

    .line 1579
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1563
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v7    # "str":[Ljava/lang/String;
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 1564
    .local v1, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1565
    nop

    .line 1575
    nop

    .line 1576
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1581
    nop

    .line 1565
    return v2

    .line 1578
    :catch_7
    move-exception v7

    .line 1579
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1560
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 1561
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1562
    nop

    .line 1575
    nop

    .line 1576
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1581
    nop

    .line 1562
    return v2

    .line 1578
    :catch_9
    move-exception v7

    .line 1579
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1574
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 1570
    :catch_a
    move-exception v1

    .line 1571
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1572
    nop

    .line 1575
    if-eqz v5, :cond_8

    .line 1576
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_4

    .line 1578
    :catch_b
    move-exception v7

    .line 1579
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1581
    .end local v7    # "e":Ljava/io/IOException;
    :cond_8
    :goto_4
    nop

    .line 1572
    return v2

    .line 1567
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v1

    .line 1568
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1569
    nop

    .line 1575
    if-eqz v5, :cond_9

    .line 1576
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_5

    .line 1578
    :catch_d
    move-exception v7

    .line 1579
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1581
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9
    :goto_5
    nop

    .line 1569
    return v2

    .line 1575
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_6
    if-eqz v5, :cond_a

    .line 1576
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_7

    .line 1578
    :catch_e
    move-exception v1

    .line 1579
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1580
    return v2

    .line 1581
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a
    :goto_7
    nop

    .line 1582
    throw v1

    .line 1506
    .end local v3    # "SensorService":Landroid/os/IBinder;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    :cond_b
    :goto_8
    const-string v3, "Service name is incorrect"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return v2

    .line 1501
    :cond_c
    :goto_9
    const-string v3, "Command value is incorrect"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return v2

    .line 1496
    :cond_d
    :goto_a
    const-string v3, "File path is incorrect"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return v2
.end method

.method public insertLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;

    .line 1327
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SURVEY_LOG:Z

    if-eqz v0, :cond_1

    .line 1328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1330
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "com.samsung.android.motion"

    .line 1331
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "MRSI"

    .line 1333
    .local v2, "feature":Ljava/lang/String;
    const-string v3, "app_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v3, "feature"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    if-eqz p1, :cond_0

    .line 1337
    const-string v3, "extra"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1342
    .local v3, "broadcastIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1345
    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1347
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1349
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "feature":Ljava/lang/String;
    .end local v3    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method sendMRSIData(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 875
    const-string v0, "SENSORBD"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v0, 0x0

    const-string v1, "sm"

    const-string v2, "MRSI"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    return-void
.end method
