.class public Lcom/samsung/android/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    }
.end annotation


# static fields
.field public static final ABNORMAL_PRESSURE_MONITOR:I

.field public static final ABNORMAL_SHOCK_SERVICE:I

.field public static final ACCELEROMETER_SENSOR_SERVICE:I

.field public static final ACTIVE_TIME_SERVICE:I

.field public static final ACTIVITY_CALIBRATION_SERVICE:I

.field public static final ACTIVITY_TRACKER_BATCH_SERVICE:I

.field public static final ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_SERVICE:I

.field public static final ANY_MOTION_DETECTOR_SERVICE:I

.field public static final APDR_SERVICE:I

.field public static final AUTO_BRIGHTNESS_SERVICE:I

.field public static final AUTO_ROTATION_SERVICE:I

.field public static final BEST_LOCATION_SERVICE:I

.field public static final BOTTOM_FLAT_DETECTOR_SERVICE:I

.field public static final BOUNCE_LONG_MOTION_SERVICE:I

.field public static final BOUNCE_SHORT_MOTION_SERVICE:I

.field public static final CALL_MOTION_SERVICE:I

.field public static final CALL_POSE_SERVICE:I

.field public static final CAPTURE_MOTION_SERVICE:I

.field public static final CARE_GIVER_SERVICE:I

.field public static final CARRYING_STATUS_MONITOR_SERVICE:I

.field public static final CH_LOC_TRIGGER_SERVICE:I

.field public static final CMD_PROCESS_FAULT_DETECTION:I

.field public static final CURRENT_STATUS_FOR_POSITIONING_SERVICE:I = 0x0

.field public static final DEFAULT_VERSION:I = 0x1

.field public static final DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

.field public static final DIRECT_CALL_SERVICE:I

.field public static final DUAL_DISPLAY_ANGLE_SERVICE:I

.field public static final EAD_SERVICE:I

.field public static final EXERCISE_SERVICE:I

.field public static final FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

.field public static final FLAT_MOTION_SERVICE:I

.field public static final FLIP_COVER_ACTION_SERVICE:I

.field public static final FREE_FALL_DETECTION_SERVICE:I

.field public static final GESTURE_APPROACH_SERVICE:I

.field public static final GYROSCOPE_SENSOR_SERVICE:I

.field public static final GYRO_TEMPERATURE_SERVICE:I

.field public static final HALL_SENSOR_SERVICE:I

.field public static final LIFE_LOG_COMPONENT_SERVICE:I

.field public static final LIFE_LOG_SERVICE:I

.field public static final LOCATION_SERVICE:I

.field public static final LOG_LEVEL_DEBUG:I

.field public static final LOG_LEVEL_ERROR:I

.field public static final LOG_LEVEL_INFO:I

.field public static final LOG_LEVEL_TRACE:I

.field public static final LOG_LEVEL_WARN:I

.field public static final LPP_SERVICE:I

.field public static final MAGNETIC_SENSOR_SERVICE:I

.field public static final MAIN_SCREEN_DETECTION_SERVICE:I

.field public static final MOTION_SERVICE:I

.field public static final MOVEMENT_ALERT_SERVICE:I

.field public static final MOVEMENT_FOR_POSITIONING_SERVICE:I

.field public static final MOVEMENT_SERVICE:I

.field public static final MOVING_SERVICE:I

.field public static final ORIENTATION_SENSOR_SERVICE:I

.field public static final OTHER_VERSION:I = 0x2

.field public static final PEDOMETER_SERVICE:I

.field public static final PHONE_STATE_MONITOR_SERVICE:I

.field public static final POWER_NOTI_SERVICE:I

.field public static final PROPERTYGET_ACTIVITY_TRACKER_BATCH_HISTORY_DATA:I = 0x3

.field public static final PROPERTYGET_ANY_MOTION_DETECTOR_DATA:I = 0x5

.field public static final PROPERTYGET_CH_LOC_TRIGGER_CUR_STATUS:I = 0x9

.field public static final PROPERTYGET_DEVICE_PHYSICAL_CONTEXT_MONITOR_AOD_STATUS:I = 0x7

.field public static final PROPERTYGET_DEVICE_PHYSICAL_CONTEXT_MONITOR_AOD_VERSION:I = 0x8

.field public static final PROPERTYGET_EXERCISE_DATA:I = 0x0

.field public static final PROPERTYGET_PEDOMETER_HISTORY_DATA:I = 0x2

.field public static final PROPERTYGET_PHONESTATE_DATA:I = 0x1

.field public static final PROPERTYGET_STEP_LEVEL_MONITOR:I = 0x4

.field public static final PROPERTY_ABNORMAL_SHOCK_DURATION:I = 0x2d

.field public static final PROPERTY_ABNORMAL_SHOCK_STRENGTH:I = 0x2c

.field public static final PROPERTY_ABNORMAL_SHOCK_USER_ACTION:I = 0x2e

.field public static final PROPERTY_ACTIVITY_CALIBRATION_CURRENT_STATE:I = 0x5b

.field public static final PROPERTY_ACTIVITY_CALIBRATION_SPEED:I = 0x5c

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_ACTIVITY:I = 0x26

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_PERIOD:I = 0x27

.field public static final PROPERTY_ACTIVITY_TRACKER_INTTERUPT_MODE_ACTIVITY:I = 0x25

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x8

.field public static final PROPERTY_AUTO_BRIGHTNESS_DEVICE_MODE:I = 0x40

.field public static final PROPERTY_AUTO_BRIGHTNESS_EBOOK_CONFIG_DATA:I = 0x41

.field public static final PROPERTY_CARE_GIVER_DURATION:I = 0x29

.field public static final PROPERTY_CARE_GIVER_STRENGTH:I = 0x28

.field public static final PROPERTY_CH_LOC_TRIGGER_DURATION:I = 0x5a

.field public static final PROPERTY_CH_LOC_TRIGGER_POSTURE:I = 0x78

.field public static final PROPERTY_CH_LOC_TRIGGER_TRIGGER_TYPE:I = 0x59

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_HYSTERESIS_HIGH:I = 0x7a

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_HYSTERESIS_HIGH_COUNT:I = 0x7c

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_HYSTERESIS_LOW:I = 0x79

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_HYSTERESIS_LOW_COUNT:I = 0x7b

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_HYSTERESIS_MODE:I = 0x7d

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_OFF_TIMEOUT:I = 0x7f

.field public static final PROPERTY_DPCM_AOD_BRIGHTNESS_SIMPLE_MODE:I = 0x7e

.field public static final PROPERTY_DPCM_AOD_MODE_TAP_TO_SHOW:I = 0x4e

.field public static final PROPERTY_DPCM_AOD_ON_OFF:I = 0x50

.field public static final PROPERTY_DPCM_AOD_PARTIAL_MODE:I = 0x4f

.field public static final PROPERTY_DPCM_SENSOR_AOD_OVER_TURN_DURATION:I = 0x54

.field public static final PROPERTY_DPCM_SENSOR_AOD_PROXI_CHECK_DURATION:I = 0x56

.field public static final PROPERTY_DPCM_SENSOR_AOD_PROXI_USE_PERIOD:I = 0x55

.field public static final PROPERTY_DPCM_SENSOR_AOD_SCENARIO_OFF:I = 0x58

.field public static final PROPERTY_DPCM_SENSOR_AOD_SCENARIO_ON:I = 0x57

.field public static final PROPERTY_DPCM_SENSOR_AOD_TIMEOUT:I = 0x53

.field public static final PROPERTY_DPCM_SENSOR_ON_OFF_BRIGHTNESS:I = 0x52

.field public static final PROPERTY_DPCM_SENSOR_ON_OFF_PROXIMITY:I = 0x51

.field public static final PROPERTY_DUAL_DISPLAY_ANGLE_OFF_ANGLE:I = 0x4d

.field public static final PROPERTY_DUAL_DISPLAY_ANGLE_ON_ANGLE:I = 0x4c

.field public static final PROPERTY_EAD_DURATION:I = 0x43

.field public static final PROPERTY_EAD_MODE:I = 0x42

.field public static final PROPERTY_ENVIRONMENT_SENSOR_INTERVAL:I = 0xd

.field public static final PROPERTY_EXERCISE_DATA_TYPE:I = 0x3f

.field public static final PROPERTY_FLAT_MOTION_FOR_TABLE_MODE:I = 0x3d

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_COMPONENT_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LIFE_LOG_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_LIFE_LOG_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_STAYING_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_STAYING_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_LOCATION_HEIGHT:I = 0x3

.field public static final PROPERTY_LOCATION_WEIGHT:I = 0x2

.field public static final PROPERTY_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0xc

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0xa

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_MIN_DURATION:I = 0xb

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_NOMOVE_DURATION:I = 0x9

.field public static final PROPERTY_PEDOMETER_CURRENT_INFO_COLLECTION_TIME:I = 0x13

.field public static final PROPERTY_PEDOMETER_DELIVERY_COUNT:I = 0x11

.field public static final PROPERTY_PEDOMETER_EXERCISE_MODE:I = 0x3e

.field public static final PROPERTY_PEDOMETER_GENDER:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x5

.field public static final PROPERTY_PEDOMETER_SF:I = 0x75

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x4

.field public static final PROPERTY_POI_CREATION_DB_SETTING:I = 0x1b

.field public static final PROPERTY_SENSORHUB_TIMER_COUNT:I = 0x1a

.field public static final PROPERTY_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_SLEEP_MONITOR_SAMPLING_INTERVAL:I = 0x2b

.field public static final PROPERTY_SLEEP_MONITOR_SENSIBILITY:I = 0x2a

.field public static final PROPERTY_SLOCATION_AR_DISTANCE_CMD:I = 0x77

.field public static final PROPERTY_SLOCATION_CURLOC_CORE_FUNC:I = 0x6c

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_CLEANUP:I = 0x74

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_FLUSH:I = 0x72

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_INJECT_LOCATION:I = 0x73

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_REQUEST_LOCATION:I = 0x71

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_START:I = 0x6e

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_STOP:I = 0x70

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_UPDATE:I = 0x6f

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_ADD:I = 0x65

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_PAUSE_RESUME:I = 0x67

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_REMOVE:I = 0x66

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_SET_LOC_DATA:I = 0x69

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_START_AR:I = 0x6a

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_STOP_AR:I = 0x6b

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_UPDATE:I = 0x68

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_VERSION:I = 0x64

.field public static final PROPERTY_SLOCATION_SEND_EXTRA_CMD:I = 0x76

.field public static final PROPERTY_SLOCATION_STATUS_REMOVE:I = 0x6d

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:I = 0x23

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MINUMUM_ANGLE:I = 0x22

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MOVING_THRS:I = 0x24

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_RETENTION_TIME:I = 0x21

.field public static final PROPERTY_STAYING_ALERT_STOP_PERIOD:I = 0x17

.field public static final PROPERTY_STAYING_ALERT_WAIT_PERIOD:I = 0x18

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x7

.field public static final PROPERTY_STEP_COUNT_TIMER_STEPCOUNT:I = 0x19

.field public static final PROPERTY_STEP_LEVEL_MONITOR_DEVICE_TYPE:I = 0x39

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_COUNT:I = 0x3c

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_END_TIME:I = 0x38

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_START_TIME:I = 0x37

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_DURATION:I = 0x3b

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_TYPE:I = 0x3a

.field public static final PROPERTY_TEMPERATURE_ALERT_HIGH_TEMPERATURE:I = 0x15

.field public static final PROPERTY_TEMPERATURE_ALERT_IS_INCLUDING:I = 0x16

.field public static final PROPERTY_TEMPERATURE_ALERT_LOW_TEMPERATURE:I = 0x14

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_WAKE_UP_VOICE_MODE:I = 0x35

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_AM:I = 0x10

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_GRAMMER:I = 0x12

.field public static final PUT_DOWN_MOTION_SERVICE:I

.field public static final RAW_BAROMETER_SENSOR_SERVICE:I

.field public static final RAW_GPS_SERVICE:I

.field public static final RAW_SATELLITE_SERVICE:I

.field public static final RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

.field public static final RAW_WPS_SERVICE:I

.field public static final REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

.field public static final REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

.field public static final REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

.field public static final REQUEST_PEDOMETER_CURRENT_INFO:I

.field public static final REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

.field public static final SENSORHUB_RESET_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.SENSORHUB_RESET"

.field public static final SENSOR_STATUS_CHECK_SERVICE:I

.field public static final SHAKE_MOTION_SERVICE:I

.field public static final SLEEP_MONITOR_SERVICE:I

.field public static final SLOCATION_AR_DISTANCE_SERVICE:I

.field public static final SLOCATION_SERVICE:I

.field public static final SPECIFIC_POSE_ALERT_SERVICE:I

.field public static final STAYING_ALERT_SERVICE:I

.field public static final STEP_COUNT_ALERT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_SERVICE:I

.field public static final STOP_ALERT_SERVICE:I

.field private static final TAG:Ljava/lang/String; = "CAE"

.field public static final TEMPERATURE_ALERT_SERVICE:I

.field public static final TEMPERATURE_HUMIDITY_SERVICE:I

.field public static final TEST_FLAT_MOTION_SERVICE:I

.field public static final WAKE_UP_VOICE_SERVICE:I

.field public static final WIRELESS_CHARGING_MONITOR:I

.field public static final WRIST_UP_MOTION_SERVICE:I


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mCaeMgrLooper:Landroid/os/Looper;

.field private final mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCaeMgrLooper(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaeMgrLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainLooper(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOCATION_SERVICE:I

    .line 55
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVING_SERVICE:I

    .line 58
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LPP_SERVICE:I

    .line 60
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    .line 63
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    .line 66
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    .line 69
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_GPS_SERVICE:I

    .line 72
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_SATELLITE_SERVICE:I

    .line 75
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_WPS_SERVICE:I

    .line 78
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BEST_LOCATION_SERVICE:I

    .line 81
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACCELEROMETER_SENSOR_SERVICE:I

    .line 84
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ORIENTATION_SENSOR_SERVICE:I

    .line 87
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAGNETIC_SENSOR_SERVICE:I

    .line 90
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYROSCOPE_SENSOR_SERVICE:I

    .line 93
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    .line 96
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    .line 99
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    .line 102
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    .line 105
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    .line 108
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:I

    .line 111
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->APDR_SERVICE:I

    .line 114
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    .line 117
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DIRECT_CALL_SERVICE:I

    .line 120
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STOP_ALERT_SERVICE:I

    .line 123
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

    .line 126
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_BAROMETER_SENSOR_SERVICE:I

    .line 129
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    .line 132
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 133
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    .line 135
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARE_GIVER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CARE_GIVER_SERVICE:I

    .line 138
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 139
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_SHOCK_SERVICE:I

    .line 141
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    .line 144
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 145
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    .line 147
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    .line 150
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    .line 153
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_SHORT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    .line 156
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_LONG_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    .line 159
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WRIST_UP_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    .line 162
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    .line 165
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 166
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    .line 168
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEST_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    .line 171
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEMPERATURE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 172
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    .line 174
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 175
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STAYING_ALERT_SERVICE:I

    .line 177
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 178
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_COMPONENT_SERVICE:I

    .line 180
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    .line 183
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 184
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    .line 186
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    .line 189
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_EXTANDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 190
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    .line 192
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SPECIFIC_POSE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    .line 195
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 196
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    .line 198
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CAPTURE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    .line 201
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 202
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    .line 204
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    .line 207
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    .line 210
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVE_TIME:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 211
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    .line 213
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION_FOR_TABLE_MODE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 214
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    .line 216
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARRYING_STATUS_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 217
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CARRYING_STATUS_MONITOR_SERVICE:I

    .line 219
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOTTOM_FLAT_DETECTOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 220
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOTTOM_FLAT_DETECTOR_SERVICE:I

    .line 222
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 223
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    .line 225
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PHONE_STATE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 226
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    .line 228
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    .line 231
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 232
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    .line 234
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_HALL_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 235
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->HALL_SENSOR_SERVICE:I

    .line 237
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EAD:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EAD_SERVICE:I

    .line 240
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DUAL_DISPLAY_ANGLE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DUAL_DISPLAY_ANGLE_SERVICE:I

    .line 243
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    .line 247
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION_AR_DISTANCE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 248
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_AR_DISTANCE_SERVICE:I

    .line 251
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WIRELESS_CHARGING_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WIRELESS_CHARGING_MONITOR:I

    .line 255
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 256
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

    .line 259
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MAIN_SCREEN_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 260
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAIN_SCREEN_DETECTION_SERVICE:I

    .line 262
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CH_LOC_TRIGGER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 263
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CH_LOC_TRIGGER_SERVICE:I

    .line 266
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FREE_FALL_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 267
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FREE_FALL_DETECTION_SERVICE:I

    .line 270
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ANY_MOTION_DETECTOR_RUNNER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 271
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ANY_MOTION_DETECTOR_SERVICE:I

    .line 273
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SENSOR_STATUS_CHECK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 274
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SENSOR_STATUS_CHECK_SERVICE:I

    .line 276
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_CALIBRATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 277
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_CALIBRATION_SERVICE:I

    .line 279
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CMD_PROCESS_FAULT_DETECTION:I

    .line 282
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 283
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

    .line 285
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_PEDOMETER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 286
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    .line 288
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 289
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    .line 291
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    .line 294
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_SLEEP_MONITOR_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 295
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    .line 558
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_TRACE:I

    .line 560
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_DEBUG:I

    .line 562
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_INFO:I

    .line 564
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_WARN:I

    .line 566
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    .line 1198
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/ContextAwareManager$1;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    .line 595
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CAEMgr"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    .line 596
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaeMgrLooper:Landroid/os/Looper;

    .line 598
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaeMgrLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 600
    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    .line 601
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 602
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 603
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 604
    .local v1, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .line 606
    return-void

    .line 608
    .end local v1    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    :cond_0
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 609
    .restart local v1    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .line 611
    return-void
.end method

.method private getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 726
    if-nez p1, :cond_0

    .line 727
    const/4 v0, 0x0

    return-object v0

    .line 729
    :cond_0
    const/4 v0, 0x0

    .line 730
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 731
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 733
    .local v2, "delegate":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareListener;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 734
    move-object v0, v2

    .line 735
    goto :goto_1

    .line 737
    .end local v2    # "delegate":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    :cond_1
    goto :goto_0

    .line 738
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;>;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method private setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "propertyObj"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v0

    .line 1036
    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 617
    :cond_0
    return-void
.end method

.method public final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "askInfo"    # I

    .line 711
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 712
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 713
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    move-object v0, v1

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->getContextInfo(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)V

    .line 716
    return-void
.end method

.method public final getVersion()I
    .locals 2

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "version":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->getVersion()I

    move-result v0

    .line 1226
    return v0
.end method

.method public final initializeAutoTest()V
    .locals 0

    .line 1153
    return-void
.end method

.method public final registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .line 629
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 630
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 631
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    move-object v0, v1

    .line 632
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->registerCallback(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)V

    .line 635
    return-void
.end method

.method public final registerWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .line 646
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 647
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 648
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    move-object v0, v1

    .line 649
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->registerWatcher(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)V

    .line 652
    return-void
.end method

.method public final resetCAService(I)V
    .locals 1
    .param p1, "service"    # I

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->resetCAService(I)V

    .line 1046
    return-void
.end method

.method public final setCALogger(ZZIZ)V
    .locals 1
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .line 1147
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->setCALogger(ZZIZ)V

    .line 1148
    return-void
.end method

.method public final setCAProperty(IID)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # D

    .line 837
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 840
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 841
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    .line 843
    .local v1, "result":Z
    return v1
.end method

.method public final setCAProperty(IIF)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F

    .line 816
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 819
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 820
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    .line 822
    .local v1, "result":Z
    return v1
.end method

.method public final setCAProperty(III)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I

    .line 774
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 777
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 778
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    .line 780
    .local v1, "result":Z
    return v1
.end method

.method public final setCAProperty(IIJ)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # J

    .line 795
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 798
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 799
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    .line 801
    .local v1, "result":Z
    return v1
.end method

.method public final setCAProperty(IILjava/lang/String;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 858
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 861
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 862
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    .line 864
    .local v1, "result":Z
    return v1
.end method

.method public final setCAProperty(IILjava/util/ArrayList;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 999
    .local p3, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1000
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayListTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1001
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/HashSet;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1016
    .local p3, "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1017
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerHashSetTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1018
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIZ)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Z

    .line 753
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 756
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 757
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    .line 759
    .local v1, "result":Z
    return v1
.end method

.method public final setCAProperty(II[B)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [B

    .line 879
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 880
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    .line 881
    invoke-static {p3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 882
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[C)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [C

    .line 897
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 898
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getCharArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 899
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[D)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [D

    .line 965
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 966
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 967
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[F)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [F

    .line 948
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 949
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 950
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[I)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [I

    .line 914
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 915
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 916
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[J)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [J

    .line 931
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 932
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 933
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [Ljava/lang/String;

    .line 982
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 983
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 984
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setScenarioForDebugging(IILjava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 1194
    .local p3, "enableService":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "packet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x1

    .line 1195
    .local v0, "result":Z
    return v0
.end method

.method public final setScenarioForTest(II)Z
    .locals 1
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, "result":Z
    return v0
.end method

.method public final setVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .line 1216
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->setVersion(I)V

    .line 1217
    return-void
.end method

.method public final startAutoTest()V
    .locals 0

    .line 1158
    return-void
.end method

.method public final stopAutoTest()V
    .locals 0

    .line 1163
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 660
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 661
    .local v3, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 660
    .end local v3    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    :cond_0
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .line 674
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 675
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->unregisterCallback(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 681
    :cond_1
    return-void
.end method

.method public final unregisterWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .line 692
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 693
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->unregisterWatcher(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 699
    :cond_1
    return-void
.end method
