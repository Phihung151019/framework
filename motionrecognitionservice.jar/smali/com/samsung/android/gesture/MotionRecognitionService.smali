.class public Lcom/samsung/android/gesture/MotionRecognitionService;
.super Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;,
        Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;,
        Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;,
        Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;,
        Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;,
        Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;,
        Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;,
        Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;,
        Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_SCREEN_PRESENCE_CHANGED:Ljava/lang/String; = "com.samsung.android.incallui.CALL_SCREEN_PRESENCE_CHANGED"

.field public static final ACTION_ROTATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final AUTO_ROTATION:I = 0x5

.field private static final CALL_DISCONNECTED:I = 0xa

.field private static final CALL_OFFHOOK:I = 0xb

.field private static final DEVICE_FIRST_API_LEVEL_UOS:I = 0x22

.field private static final DEVICE_TYPE_PHONE:I = 0x0

.field private static final DEVICE_TYPE_PHONE_STRING:Ljava/lang/String; = "phone"

.field private static final DEVICE_TYPE_TABLET:I = 0x1

.field private static final DEVICE_TYPE_TABLET_STRING:Ljava/lang/String; = "tablet"

.field private static final DEVICE_TYPE_UNKNOWN:I = -0x1

.field private static final DISABLE_CAMERA_LUX:F = -2.0f

.field private static final DISABLE_FOLDING_STATE:I = 0x60

.field private static final DISABLE_POCKET_DETECTOR_SYSFS:I = 0x5d

.field private static final ENABLE_CAMERA_LUX:F = -1.0f

.field private static final ENABLE_FOLDING_STATE:I = 0x5f

.field private static final ENABLE_POCKET_DETECTOR_SYSFS:I = 0x5c

.field private static final EVENT_DISABLE_MOTION:I = 0x5a

.field private static final EVENT_ELEVATOR_MODE:I = 0x1000000

.field private static final EVENT_ENABLE_MOTION:I = 0x59

.field private static final EVENT_FROM_ENGINE:I = 0x55

.field private static final EVENT_POCKET_FOR_BIXBY:I = 0x2000000

.field private static final EVENT_POCKET_MODE:I = 0x800000

.field private static final EVENT_SCREEN_OFF:I = 0x57

.field private static final EVENT_SCREEN_ON:I = 0x56

.field private static final EVENT_SENSOR_LOGGING:I = 0x58

.field private static final EVENT_START_MOTIONS:I = 0x5e

.field private static final EXTRA_FOREGROUND:Ljava/lang/String; = "foreground"

.field private static final HQM_SURVEY_LOG:Z = true

.field private static final INJECT_AUTO_ROTATION:I = 0x1047c1

.field private static final INJECT_CALL_DISCONNECT:I = 0xd47c1

.field private static final INJECT_CALL_OFFHOOK:I = 0xf47c1

.field private static final INJECT_SCREEN_OFF:I = 0x47c1

.field private static final INJECT_SCREEN_ON:I = 0x10047c1

.field private static final MESSAGE_CALL_SCREEN_BACKGROUND:I = 0x63

.field private static final MESSAGE_CALL_SCREEN_FOREGROUND:I = 0x64

.field private static final MESSAGE_POWERSHARE_DISABLED:I = 0x66

.field private static final MESSAGE_POWERSHARE_ENABLED:I = 0x65

.field private static final MESSAGE_REFRESH_RATE_CHANGED:I = 0x62

.field private static final MOTION_DIRECT_CALLING:I = 0x400

.field private static final MOTION_OVER_TURN:I = 0x1

.field private static final MOTION_PALM_SWIPE:I = 0x400000

.field private static final MOTION_PALM_TOUCH:I = 0x200000

.field private static final MOTION_SMART_ALERT:I = 0x4

.field private static final PERMISSION_CALL_SCREEN_PRESENCE:Ljava/lang/String; = "com.samsung.android.incallui.permission.CALL_SCREEN_PRESENCE"

.field private static final SCREEN_BRIGHTNESS_MODE_AUTO:I = 0x1

.field private static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x1

.field private static final SCREEN_STATE_OFF:I = 0x2

.field private static final SENSORHUB_INFO_POWERSHARE_DISABLED:I = 0x50c1

.field private static final SENSORHUB_INFO_POWERSHARE_ENABLED:I = 0x10050c1

.field private static final SENSOR_TYPE_CALIBRATED_LUX:I = 0x10050

.field private static final SENSOR_TYPE_CAMERA_LIGHT:I = 0x10044

.field private static final SENSOR_TYPE_MOTIONRECOGNITION:I = 0x10017

.field private static final SETTINGS_UPDATE:I = 0x5b

.field private static final SYSFS_CHECK_STATE_FAR:Ljava/lang/String; = "/sys/class/sensors/proximity_sensor/check_far_state"

.field private static final SYSFS_POCKET_DETECTOR:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final TYPE_SENSORHUB_DATA:I = 0x42554853

.field public static final TYPE_VIBRATOR_INFO:I = 0x10000005


# instance fields
.field private INCALLUI_PACKAGE_NAME:Ljava/lang/String;

.field private elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

.field private mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

.field private mBrightnessHandler:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

.field private mCalibratedLux:Landroid/hardware/Sensor;

.field private mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

.field private final mCallIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraLightSensor:Landroid/hardware/Sensor;

.field private mCheckProximityPopup:Lcom/samsung/android/gesture/CheckProximitySensor;

.field private final mContext:Landroid/content/Context;

.field private mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnableCalibratedLux:Z

.field private mEngineInitialized:Z

.field private mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

.field private mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFoldingSensor:Landroid/hardware/Sensor;

.field private mFoldingSensorSupported:Z

.field private mFoldingSensorVersion:I

.field private mFoldingState:I

.field private mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

.field private mHasSensorHub:Z

.field private mInjectVibratorInfoTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsAccSensorOn:Z

.field private mIsAvailableDirectCall:Z

.field private mIsAvailableElevatorMode:Z

.field private mIsAvailablePalmSwipe:Z

.field private mIsAvailablePalmTouch:Z

.field private mIsAvailablePocketForBixby:Z

.field private mIsAvailablePocketMode:Z

.field private mIsAvailableSmartAlert:Z

.field private mIsAvailableTurnOver:Z

.field private mIsDCM:Z

.field private mIsFlat:Z

.field private mIsMagSensorOn:Z

.field private mIsPressureSensorOn:Z

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mLastCalibratedLuxStatus:F

.field private mLiftUpHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

.field private mLightSensorVersion:I

.field private mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockEngine:Ljava/lang/Object;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

.field private mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

.field private final mPhoneStateCallback:Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

.field private mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

.field private final mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

.field private mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefCntEvents:[I

.field private mRegisteredPocketDetector:Z

.field private mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorsEnabled:I

.field private mSensorsUsed:I

.field private mShouldInjectRefreshRate:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mThread:Landroid/os/HandlerThread;

.field mVibrator:Landroid/os/Vibrator;

.field private mVibratorOn:Z

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private myElevatorDetect:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetINCALLUI_PACKAGE_NAME(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mBrightnessHandler:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckProximityPopup(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/CheckProximitySensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCheckProximityPopup:Lcom/samsung/android/gesture/CheckProximitySensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableCalibratedLux(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEngineInitialized(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventPool(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasSensorHub(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjectVibratorInfoTask(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mInjectVibratorInfoTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/input/InputManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefCntEvents(Lcom/samsung/android/gesture/MotionRecognitionService;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRegisteredPocketDetector:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSARMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemContextManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/hardware/context/SemContextManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorChecker(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldInjectRefreshRate(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mShouldInjectRefreshRate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorOn(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibratorOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInjectVibratorInfoTask(Lcom/samsung/android/gesture/MotionRecognitionService;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mInjectVibratorInfoTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/hardware/input/InputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFlat(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemContextManager(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/hardware/context/SemContextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSensorChecker(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVibratorOn(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibratorOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableUnusedSensors(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableSensor(Lcom/samsung/android/gesture/MotionRecognitionService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinalizeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFaceStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getFaceStatus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWindowRotation(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getWindowRotation()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitializeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->initializeMotionEngine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monChangedScreenState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->onChangedScreenState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerCalibratedLuxSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMotionEvent(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->sendMotionEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupSmartAlertAvailability(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupSmartAlertAvailability()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->startMotions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->unregisterCalibratedLuxSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->unregisterPocketDetector()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRegisteredMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->updateRegisteredMotions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$museSensor(Lcom/samsung/android/gesture/MotionRecognitionService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwritePocketDetectorSysfs(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->writePocketDetectorSysfs(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibratorOn:Z

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 129
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    .line 132
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    .line 133
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    .line 135
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    .line 151
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableTurnOver:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmTouch:Z

    .line 155
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmSwipe:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    .line 159
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    .line 199
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 200
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    .line 201
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 202
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    .line 204
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 205
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 206
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    .line 216
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRegisteredPocketDetector:Z

    .line 217
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    .line 219
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    invoke-direct {v2}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAccSensorOn:Z

    .line 225
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsMagSensorOn:Z

    .line 226
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsPressureSensorOn:Z

    .line 229
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    .line 230
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    .line 231
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingState:I

    .line 233
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibrator:Landroid/os/Vibrator;

    .line 235
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCallIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1719
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    .line 1956
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService-IA;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPhoneStateCallback:Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

    .line 2004
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$5;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 282
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 284
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "motion_recognition"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 285
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 286
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 287
    .local v3, "looperServiceHandler":Landroid/os/Looper;
    const-string v4, "MotionRecognitionService"

    if-eqz v3, :cond_3

    .line 288
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 293
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 294
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 295
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Support: SSP = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v6, 0x10017

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    .line 301
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 302
    .local v5, "pm":Landroid/os/PowerManager;
    const-string v6, "motion_service"

    invoke-virtual {v5, v2, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 303
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 305
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    .line 307
    const/16 v1, 0x19

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    .line 308
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerIntents()V

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerCallIntents()V

    .line 313
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService-IA;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 314
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    invoke-direct {v0}, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    .line 316
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    .line 318
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->createInstance(Landroid/content/Context;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 319
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mBrightnessHandler:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    .line 321
    new-instance v0, Lcom/samsung/android/gesture/CheckProximitySensor;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/CheckProximitySensor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCheckProximityPopup:Lcom/samsung/android/gesture/CheckProximitySensor;

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerTelephonyCallback()V

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getInCallUiPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupMotionAvailability()V

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupPocketAvailability()V

    .line 329
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/PocketModeEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupRefreshRateInjection()V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupAutoBrightnessSupport()V

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupFoldingDeviceSupport()V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkDeviceForDummyAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkSensorForElevator()V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAvailableElevatorMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    if-eqz v0, :cond_2

    .line 341
    new-instance v0, Lcom/samsung/android/gesture/ElevatorModeEvent;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ElevatorModeEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    .line 342
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$3;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->myElevatorDetect:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 354
    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 355
    .local v0, "manager":Lcom/samsung/android/hardware/context/SemContextManager;
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 356
    return-void

    .line 290
    .end local v0    # "manager":Lcom/samsung/android/hardware/context/SemContextManager;
    .end local v5    # "pm":Landroid/os/PowerManager;
    :cond_3
    const-string v0, "Failed to get a looper for ServiceHandler."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private checkDeviceForDummyAction()Z
    .locals 3

    .line 2067
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    .local v0, "model":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2070
    const-string v2, "SGH-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SC-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 2072
    :cond_2
    return v1
.end method

.method private checkPocketmodeBixbyState()V
    .locals 2

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAvailablePocketForBixby : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method private checkPocketmodeState()Z
    .locals 13

    .line 1880
    const/4 v0, 0x0

    .line 1881
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_6

    .line 1882
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10033

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1883
    .local v1, "lightCCTSensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 1884
    .local v2, "lightSensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 1885
    .local v3, "proxSensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10038

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 1887
    .local v4, "proxPhysicalSensor":Landroid/hardware/Sensor;
    const/4 v5, 0x0

    .line 1888
    .local v5, "lightSensorError":Z
    const/4 v6, 0x0

    .line 1891
    .local v6, "proxSensorError":Z
    const-string v7, "MotionRecognitionService"

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 1892
    const/4 v5, 0x1

    .line 1893
    const-string v8, "Pocketmode Light Sensor Fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_0
    if-nez v3, :cond_1

    .line 1897
    if-nez v4, :cond_1

    .line 1898
    const/4 v6, 0x1

    .line 1899
    const-string v8, "Pocketmode Prox Sensor Fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_1
    const-string v8, "ril.product_code"

    const-string v9, "unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1904
    .local v8, "modelName":Ljava/lang/String;
    const-string v9, "A426N"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1905
    const-string v9, "Pocketmode Prox Sensor Fail_A426N"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v6, 0x1

    .line 1909
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1910
    .local v7, "resources":Landroid/content/res/Resources;
    const-string v9, "bool"

    const-string v10, "android"

    const-string v11, "config_showNavigationBar"

    invoke-virtual {v7, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1911
    .local v9, "resourceId":I
    const/4 v10, 0x0

    .line 1912
    .local v10, "hasSoftHomeKey":Z
    if-eqz v9, :cond_3

    .line 1913
    iget-object v11, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 1916
    :cond_3
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    .line 1917
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getDeviceType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    if-nez v10, :cond_4

    .line 1918
    const/4 v0, 0x0

    goto :goto_0

    .line 1921
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1925
    :cond_5
    const/4 v0, 0x0

    .line 1928
    .end local v1    # "lightCCTSensor":Landroid/hardware/Sensor;
    .end local v2    # "lightSensor":Landroid/hardware/Sensor;
    .end local v3    # "proxSensor":Landroid/hardware/Sensor;
    .end local v4    # "proxPhysicalSensor":Landroid/hardware/Sensor;
    .end local v5    # "lightSensorError":Z
    .end local v6    # "proxSensorError":Z
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "modelName":Ljava/lang/String;
    .end local v9    # "resourceId":I
    .end local v10    # "hasSoftHomeKey":Z
    :cond_6
    :goto_0
    return v0
.end method

.method private checkSensorForElevator()V
    .locals 5

    .line 1934
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 1935
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1936
    .local v0, "accSensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 1937
    .local v2, "magSensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 1938
    .local v3, "pressureSensor":Landroid/hardware/Sensor;
    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 1939
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAccSensorOn:Z

    .line 1940
    return-void

    .line 1942
    :cond_0
    if-nez v2, :cond_1

    .line 1943
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsMagSensorOn:Z

    .line 1944
    return-void

    .line 1946
    :cond_1
    if-nez v3, :cond_2

    .line 1947
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsPressureSensorOn:Z

    .line 1948
    return-void

    .line 1950
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    .line 1952
    .end local v0    # "accSensor":Landroid/hardware/Sensor;
    .end local v2    # "magSensor":Landroid/hardware/Sensor;
    .end local v3    # "pressureSensor":Landroid/hardware/Sensor;
    :cond_3
    return-void
.end method

.method private disableUnusedSensors()V
    .locals 7

    .line 1172
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1174
    shl-int v4, v3, v0

    .line 1175
    .local v4, "motion_sensor":I
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    .line 1173
    .end local v4    # "motion_sensor":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableAllSensors(Z)V

    goto :goto_2

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->getBitmaskSensorsActivated()I

    move-result v0

    .line 1183
    .local v0, "bitmaskActivatedSensors":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 1184
    shl-int v5, v3, v4

    .line 1185
    .local v5, "sensorBit":I
    and-int v6, v0, v5

    if-nez v6, :cond_2

    .line 1186
    invoke-direct {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1187
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    .line 1188
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    .line 1183
    .end local v5    # "sensorBit":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1193
    .end local v0    # "bitmaskActivatedSensors":I
    .end local v4    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private enableAllSensors(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1166
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1167
    .local v1, "motion_sensor":I
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    .line 1165
    .end local v1    # "motion_sensor":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private enableSensor(IZ)V
    .locals 5
    .param p1, "bit_pos_sensor"    # I
    .param p2, "enable"    # Z

    .line 1112
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    return-void

    .line 1115
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_2

    .line 1117
    const/16 v0, 0x8

    const-string v1, "MotionRecognitionService"

    if-eqz p2, :cond_1

    .line 1118
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1120
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    .line 1122
    sparse-switch p1, :sswitch_data_0

    .line 1137
    goto/16 :goto_0

    .line 1134
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1135
    goto :goto_0

    .line 1128
    :sswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    if-eqz v1, :cond_2

    .line 1129
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1130
    invoke-virtual {v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 1129
    const/4 v4, 0x3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1125
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acc/Gyro was enable by motion sensor  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    goto :goto_0

    .line 1141
    :cond_1
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    .line 1143
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 1155
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1156
    goto :goto_0

    .line 1150
    :sswitch_4
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    if-eqz v1, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0

    .line 1146
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acc/Gyro will be disabled by motion sensor  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    nop

    .line 1162
    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private finalizeMotionEngine()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 651
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 653
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    .line 655
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 656
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableAllSensors(Z)V

    .line 658
    const-string v2, "MotionRecognitionService"

    const-string v3, "  .finalizeMotionEngine"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    .line 660
    monitor-exit v1

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 651
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private getDeviceType()I
    .locals 2

    .line 2052
    const-string v0, "ro.build.characteristics"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, "strType":Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2055
    const/4 v1, 0x0

    return v1

    .line 2056
    :cond_0
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2057
    const/4 v1, 0x1

    return v1

    .line 2059
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getFaceStatus()Z
    .locals 6

    .line 1196
    const/4 v0, 0x0

    .line 1198
    .local v0, "res":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    const-string v3, "MotionRecognitionService"

    if-nez v1, :cond_1

    .line 1202
    const-string v1, "KeyGuardManager is null!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return v2

    .line 1206
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v4, 0x100

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v2, v5

    .line 1208
    .local v2, "isFaceUnlock":Z
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 1209
    const/4 v0, 0x1

    .line 1211
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is faceUnlock : :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phone is locked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return v0
.end method

.method private getFirstApiLevel()I
    .locals 2

    .line 2063
    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getInCallUiPackageName()Ljava/lang/String;
    .locals 2

    .line 423
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const-string v0, "com.android.incallui"

    .line 428
    :cond_0
    return-object v0
.end method

.method private getWindowRotation()I
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 685
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1

    .line 688
    :cond_0
    const-string v1, "MotionRecognitionService"

    const-string v2, "Display is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private initializeMotionEngine()V
    .locals 7

    .line 622
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 624
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 626
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 629
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    return-void

    .line 630
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .initializeMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    .line 636
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 640
    const-string v2, "MotionRecognitionService"

    const-string v3, "Fail to enableMotionSensor !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableAllSensors(Z)V

    .line 644
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 630
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 624
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private isScreenOn()Z
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_0

    .line 521
    const-string v0, "Error: Failed to get Display State"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 525
    .local v0, "state":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 526
    const-string v1, "Screen: On"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v1, 0x1

    return v1

    .line 529
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return v1
.end method

.method private isSensorEnabled(I)Z
    .locals 2
    .param p1, "motion_sensor"    # I

    .line 1092
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1093
    return v1

    .line 1094
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isSensorUsed(I)Z
    .locals 2
    .param p1, "motion_sensor"    # I

    .line 1085
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1086
    return v1

    .line 1087
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onChangedScreenState(I)V
    .locals 6
    .param p1, "state"    # I

    .line 1645
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1647
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1648
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->initializeMotionEngine()V

    .line 1649
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1650
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    const-string v0, "MotionRecognitionService"

    const-string v2, " Cancel reactive alert mode "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 1654
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    const-string v0, "MotionRecognitionService"

    const-string v1, "SCREEN_ON END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1654
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1656
    :cond_1
    if-nez p1, :cond_5

    .line 1657
    const/4 v1, 0x0

    .line 1658
    .local v1, "enabledEasyMute":Z
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1659
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 1660
    .local v4, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget v5, v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    .line 1661
    const-string v0, "MotionRecognitionService"

    const-string v3, "Easy mute is activated"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v0, 0x1

    .line 1663
    .end local v1    # "enabledEasyMute":Z
    .local v0, "enabledEasyMute":Z
    move v1, v0

    goto :goto_1

    .line 1665
    .end local v0    # "enabledEasyMute":Z
    .end local v4    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .restart local v1    # "enabledEasyMute":Z
    :cond_2
    goto :goto_0

    .line 1666
    :cond_3
    :goto_1
    const-string v0, "MotionRecognitionService"

    const-string v3, "SCREEN_OFF: setAccIntStatus"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->setAccIntStatus(I)V

    .line 1668
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1669
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    .line 1670
    :cond_4
    const-string v0, "MotionRecognitionService"

    const-string v2, "SCREEN_OFF END"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1668
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1672
    .end local v1    # "enabledEasyMute":Z
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1673
    return-void
.end method

.method private registerCalibratedLuxSensor()V
    .locals 6

    .line 1798
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    const/16 v1, 0x3e8

    const-string v2, "MotionRecognitionService"

    if-lt v0, v1, :cond_1

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLux:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 1800
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 1801
    const-string v1, "Successfully register calibratedLux type sensor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1803
    :cond_0
    const-string v1, "Fail to register calibratedLux type sensor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    .end local v0    # "res":Z
    :goto_0
    goto :goto_1

    .line 1806
    :cond_1
    const-string v0, "Not supported calibratedLux type sensor [2]"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :goto_1
    return-void
.end method

.method private registerCallIntents()V
    .locals 8

    .line 494
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 495
    .local v4, "callIntentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.incallui.CALL_SCREEN_PRESENCE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCallIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/4 v7, 0x2

    const-string v5, "com.samsung.android.incallui.permission.CALL_SCREEN_PRESENCE"

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 498
    return-void
.end method

.method private registerIntents()V
    .locals 8

    .line 501
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 502
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 512
    return-void
.end method

.method private registerPocketDetector()V
    .locals 3

    .line 1861
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10049

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1862
    .local v0, "pocketSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 1863
    const-string v1, "MotionRecognitionService"

    const-string v2, "pocket detector is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_0
    return-void
.end method

.method private registerTelephonyCallback()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 415
    .local v0, "prox":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ear Hover Proximity Lite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 417
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPhoneStateCallback:Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 420
    .end local v0    # "prox":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method private sendMotionEvent(I)V
    .locals 4
    .param p1, "motion"    # I

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMotionEvent num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    if-lez p1, :cond_0

    const/16 v0, 0x74

    if-ge p1, v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->obtain()Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    move-result-object v0

    .line 698
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " .sendMotionEvent : motion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->sendMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 703
    .end local v0    # "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :cond_0
    return-void
.end method

.method private sendMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 6
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 664
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v0

    .line 665
    .local v0, "event":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isActivatedEvent(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendMotionEvent : not activated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 671
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 672
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 673
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x55

    iput v3, v2, Landroid/os/Message;->what:I

    .line 674
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sendMotionEvent : sendMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v1

    .line 680
    return-void

    .line 679
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setupAutoBrightnessSupport()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 372
    .local v0, "mLight":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    .line 374
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    .line 376
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10050

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLux:Landroid/hardware/Sensor;

    .line 378
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLux:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 379
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService-IA;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSensorVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10044

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCameraLightSensor:Landroid/hardware/Sensor;

    .line 386
    .end local v0    # "mLight":Landroid/hardware/Sensor;
    :cond_2
    return-void
.end method

.method private setupFoldingDeviceSupport()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1009f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensor:Landroid/hardware/Sensor;

    .line 361
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folding sensor version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    .line 367
    :cond_0
    return-void
.end method

.method private setupMotionAvailability()V
    .locals 10

    .line 455
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "MotionRecognitionService"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 456
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 457
    .local v0, "acc":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 458
    .local v3, "gyro":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 459
    .local v4, "prox":Landroid/hardware/Sensor;
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getDeviceType()I

    move-result v5

    .line 460
    .local v5, "deviceType":I
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getFirstApiLevel()I

    move-result v6

    .line 462
    .local v6, "firstApiLevel":I
    if-eq v5, v2, :cond_0

    if-eqz v0, :cond_0

    .line 463
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableTurnOver:Z

    .line 464
    const-string v7, "Support: TurnOver"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First API level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v7, 0x22

    const/4 v8, 0x0

    if-lt v6, v7, :cond_1

    .line 470
    iput-boolean v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    goto :goto_1

    .line 472
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 473
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Palm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Ear"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Proximity Touch"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 476
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    .line 477
    const-string v7, "Support: DirectCall"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    :cond_3
    :goto_0
    iput-boolean v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    .line 484
    .end local v0    # "acc":Landroid/hardware/Sensor;
    .end local v3    # "gyro":Landroid/hardware/Sensor;
    .end local v4    # "prox":Landroid/hardware/Sensor;
    .end local v5    # "deviceType":I
    .end local v6    # "firstApiLevel":I
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmTouch:Z

    .line 485
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmSwipe:Z

    .line 488
    const-string v0, "in_house"

    const-string v2, "jdm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    const-string v0, "Device manufacturing type is JDM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_5
    return-void
.end method

.method private setupPocketAvailability()V
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkPocketmodeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkPocketmodeBixbyState()V

    .line 410
    return-void
.end method

.method private setupRefreshRateInjection()V
    .locals 3

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mShouldInjectRefreshRate:Z

    .line 390
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10038

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 392
    .local v0, "physicalProx":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mShouldInjectRefreshRate:Z

    .line 394
    const-string v1, "MotionRecognitionService"

    const-string v2, "Support: RefreshRate Injection = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0    # "physicalProx":Landroid/hardware/Sensor;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 399
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 400
    return-void
.end method

.method private setupSmartAlertAvailability()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x100c8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 434
    .local v0, "smartAlertSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 435
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    .line 439
    .end local v0    # "smartAlertSensor":Landroid/hardware/Sensor;
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    .line 444
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_2

    .line 445
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 445
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 447
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to find a node for SmartAlert."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support: SmartAlert = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private declared-synchronized startMotions()V
    .locals 3

    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 572
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->enablePalmMotion()V

    .line 573
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLiftUpHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    .line 575
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->setPocketModeEvent(Lcom/samsung/android/gesture/PocketModeEvent;)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator_manager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibrator:Landroid/os/Vibrator;

    .line 579
    const-string v0, "MotionRecognitionService"

    const-string v1, " addVibratorStateListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mVibrator:Landroid/os/Vibrator;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$4;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_2
    monitor-exit p0

    return-void

    .line 569
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unregisterCalibratedLuxSensor()V
    .locals 3

    .line 1811
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    const/16 v1, 0x3e8

    const-string v2, "MotionRecognitionService"

    if-lt v0, v1, :cond_1

    .line 1813
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCameraLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    .line 1815
    const-string v0, "Force stop camera light sensor service"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    goto :goto_0

    .line 1820
    :cond_1
    const-string v0, "Not supported calibratedLux type sensor [3]"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :goto_0
    return-void
.end method

.method private unregisterPocketDetector()V
    .locals 3

    .line 1868
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10049

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1869
    .local v0, "pocketSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1871
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRegisteredPocketDetector:Z

    .line 1872
    const-string v1, "MotionRecognitionService"

    const-string v2, "unregisterPocketDetector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_0
    return-void
.end method

.method private updateRegisteredMotions()V
    .locals 3

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "registeredMotions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 726
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 724
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->setRegisteredMotions(I)V

    .line 729
    return-void
.end method

.method private useSensor(IZ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "used"    # Z

    .line 1099
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    return-void

    .line 1102
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_2

    .line 1103
    if-eqz p2, :cond_1

    .line 1104
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0

    .line 1106
    :cond_1
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    .line 1108
    :cond_2
    :goto_0
    return-void
.end method

.method private writePocketDetectorSysfs(I)V
    .locals 4
    .param p1, "enable"    # I

    .line 1845
    const-string v0, "MotionRecognitionService"

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1846
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1847
    :try_start_1
    const-string v2, "set_low_power_sensitivity,1"

    .line 1848
    .local v2, "content":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1849
    const-string v3, "Pocket detector mode ON"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    nop

    .end local v2    # "content":Ljava/lang/String;
    goto :goto_2

    .line 1845
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1850
    :cond_0
    if-nez p1, :cond_1

    .line 1851
    const-string v2, "set_low_power_sensitivity,0"

    .line 1852
    .restart local v2    # "content":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1853
    const-string v3, "Pocket detector mode OFF"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1845
    .end local v2    # "content":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .end local p1    # "enable":I
    :goto_1
    throw v2

    .line 1855
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .restart local p1    # "enable":I
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1857
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1855
    :catch_0
    move-exception v1

    .line 1856
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Pocket detector sysfs write fail!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump MotionService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    if-eqz v0, :cond_1

    .line 1029
    array-length v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "ffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->dump(Ljava/io/PrintWriter;)V

    .line 1031
    return-void

    .line 1035
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1036
    .local v0, "time":J
    const-string v2, "motion_recognition"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : mSensorsUsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSensorsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : currentTimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1041
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " : listener count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const/4 v3, 0x0

    .line 1044
    .local v3, "i":I
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 1045
    .local v5, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   mListeners["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] = mMotionSensors="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v5, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    :try_start_1
    iget-object v3, v5, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v3

    .line 1048
    .local v3, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-eqz v3, :cond_2

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "                   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    .end local v3    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    :cond_2
    goto :goto_1

    .line 1051
    :catch_0
    move-exception v3

    .line 1052
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MotionRecognitionService"

    const-string v8, "RemoteException : getListenerInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :goto_1
    move v3, v7

    goto :goto_0

    .line 1055
    .end local v7    # "i":I
    .local v3, "i":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1056
    .end local v3    # "i":I
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1058
    const-string v2, "\n===== MotionRecognitionService Previous Registrations ====="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1062
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    if-eqz v2, :cond_5

    .line 1064
    invoke-static {p2}, Lcom/samsung/android/gesture/PocketModeEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1066
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n***** ElevatorModeEvent dump ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/ElevatorModeEvent;->Get_Version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") *****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1067
    :cond_6
    const-string v2, "\n***** ElevatorModeEvent dump-ElevatorMode Not Supported *****"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsElevatorModeAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAccSensorOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MAG:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsMagSensorOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", BARO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsPressureSensorOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    if-eqz v2, :cond_7

    .line 1073
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-virtual {v2, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->dump(Ljava/io/PrintWriter;)V

    .line 1075
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    if-eqz v2, :cond_8

    .line 1076
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-virtual {v2, p2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 1078
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-eqz v2, :cond_9

    .line 1079
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-virtual {v2, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->dump(Ljava/io/PrintWriter;)V

    .line 1081
    :cond_9
    return-void

    .line 1056
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public enableSARDevice(ZJII)V
    .locals 8
    .param p1, "isEnabled"    # Z
    .param p2, "deviceId"    # J
    .param p4, "slot"    # I
    .param p5, "extId"    # I

    .line 1006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1007
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system or phone process can call this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1011
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-eqz v1, :cond_2

    .line 1012
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .end local p1    # "isEnabled":Z
    .end local p2    # "deviceId":J
    .end local p4    # "slot":I
    .end local p5    # "extId":I
    .local v3, "isEnabled":Z
    .local v4, "deviceId":J
    .local v6, "slot":I
    .local v7, "extId":I
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->enableSARDevice(ZJII)V

    goto :goto_1

    .line 1014
    .end local v3    # "isEnabled":Z
    .end local v4    # "deviceId":J
    .end local v6    # "slot":I
    .end local v7    # "extId":I
    .restart local p1    # "isEnabled":Z
    .restart local p2    # "deviceId":J
    .restart local p4    # "slot":I
    .restart local p5    # "extId":I
    :cond_2
    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .end local p1    # "isEnabled":Z
    .end local p2    # "deviceId":J
    .end local p4    # "slot":I
    .end local p5    # "extId":I
    .restart local v3    # "isEnabled":Z
    .restart local v4    # "deviceId":J
    .restart local v6    # "slot":I
    .restart local v7    # "extId":I
    const-string p1, "MotionRecognitionService"

    const-string p2, "[SAR] SARMotion is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_1
    return-void
.end method

.method public getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 1837
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    if-nez v0, :cond_0

    .line 1838
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvToLux([F)[F
    .locals 2
    .param p1, "values"    # [F

    .line 1828
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    if-nez v0, :cond_0

    .line 1829
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->getLux([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getPickUpMotionStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v0

    .line 718
    .local v0, "isEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pick up status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSSPstatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    return v0
.end method

.method public isAvailable(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 546
    sparse-switch p1, :sswitch_data_0

    .line 564
    const/4 v0, 0x0

    return v0

    .line 562
    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    return v0

    .line 560
    :sswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    return v0

    .line 558
    :sswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    return v0

    .line 556
    :sswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmSwipe:Z

    return v0

    .line 554
    :sswitch_4
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmTouch:Z

    return v0

    .line 552
    :sswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    return v0

    .line 550
    :sswitch_6
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    return v0

    .line 548
    :sswitch_7
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableTurnOver:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x4 -> :sswitch_6
        0x400 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_3
        0x800000 -> :sswitch_2
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public registerCallback(Landroid/os/IBinder;II)V
    .locals 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "motion_sensors"    # I
    .param p3, "motionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    move v1, p2

    .line 737
    .local v1, "required_sensors":I
    const/4 v2, 0x0

    .line 738
    .local v2, "registerTurnOver":Z
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 740
    .local v4, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget-object v5, v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    .line 741
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 743
    .end local v4    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_0
    goto :goto_0

    .line 746
    :cond_1
    const/4 v0, 0x0

    move v6, v1

    .end local v1    # "required_sensors":I
    .local v0, "i":I
    .local v6, "required_sensors":I
    :goto_1
    const/16 v1, 0x19

    const/4 v10, 0x1

    if-ge v0, v1, :cond_7

    .line 747
    shl-int v1, v10, v0

    .line 748
    .local v1, "type":I
    and-int v4, v1, p3

    if-eqz v4, :cond_6

    .line 749
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    aget v5, v4, v0

    add-int/2addr v5, v10

    aput v5, v4, v0

    .line 750
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    .line 787
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    if-eqz v4, :cond_6

    .line 788
    const-string v4, "MotionRecognitionService"

    const-string v5, "Elevator API register in MRS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->myElevatorDetect:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/ElevatorModeEvent;->registerElevatorDetector(Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    .line 784
    :sswitch_1
    const/16 v4, 0xf

    .line 785
    .end local v6    # "required_sensors":I
    .local v4, "required_sensors":I
    move v6, v4

    goto :goto_2

    .line 752
    .end local v4    # "required_sensors":I
    .restart local v6    # "required_sensors":I
    :sswitch_2
    or-int/lit8 v4, v6, 0x1

    .line 753
    .end local v6    # "required_sensors":I
    .restart local v4    # "required_sensors":I
    :try_start_2
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    .line 754
    or-int/lit8 v4, v4, 0x10

    .line 756
    :cond_2
    const/4 v2, 0x1

    .line 757
    move v6, v4

    goto :goto_2

    .line 777
    .end local v4    # "required_sensors":I
    .restart local v6    # "required_sensors":I
    :sswitch_3
    :try_start_3
    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    if-eqz v4, :cond_6

    .line 778
    or-int/lit8 v4, v6, 0x7

    move v6, v4

    .end local v6    # "required_sensors":I
    .restart local v4    # "required_sensors":I
    goto :goto_2

    .line 759
    .end local v4    # "required_sensors":I
    .restart local v6    # "required_sensors":I
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 760
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->enableSmartAlert()Z

    move-result v4

    .line 761
    .local v4, "ret":Z
    if-nez v4, :cond_3

    .line 762
    const-string v5, "MotionRecognitionService"

    const-string v7, "registerCallback(): enable accInt."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->enableAccINT()V

    .line 765
    .end local v4    # "ret":Z
    :cond_3
    goto :goto_2

    .line 766
    :cond_4
    const-string v4, "MotionRecognitionService"

    const-string v5, " smart alert is disabled by setting or ssp is activated : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 768
    goto :goto_2

    .line 770
    :sswitch_5
    or-int/lit8 v4, v6, 0x3

    .line 771
    .end local v6    # "required_sensors":I
    .local v4, "required_sensors":I
    :try_start_4
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_5

    .line 772
    or-int/lit8 v4, v4, 0x10

    .line 774
    :cond_5
    const/4 v2, 0x1

    .line 775
    move v6, v4

    goto :goto_2

    .line 831
    .end local v0    # "i":I
    .end local v1    # "type":I
    :catchall_0
    move-exception v0

    move v1, v4

    goto/16 :goto_7

    .line 746
    .end local v4    # "required_sensors":I
    .restart local v0    # "i":I
    .restart local v6    # "required_sensors":I
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 798
    .end local v0    # "i":I
    :cond_7
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->updateRegisteredMotions()V

    .line 799
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    invoke-direct {v0, p0, p1, v6, p3}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/IBinder;II)V

    move-object v1, v0

    .line 800
    .local v1, "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    const-string v0, ""

    move-object v4, v0

    .line 803
    .local v4, "client":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 806
    :try_start_6
    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v0

    .line 807
    .local v0, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-eqz v0, :cond_8

    .line 808
    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v4, v5

    move-object v7, v4

    goto :goto_3

    .line 807
    :cond_8
    move-object v7, v4

    .line 813
    .end local v0    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    .end local v4    # "client":Ljava/lang/String;
    .local v7, "client":Ljava/lang/String;
    :goto_3
    nop

    .line 815
    :try_start_7
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    const-string v0, "com.samsung.server.telecom"

    .line 816
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 817
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    iget-object v4, v4, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;->mDCMListener:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 818
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 817
    const/4 v9, 0x3

    invoke-virtual {v0, v4, v5, v9, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 821
    :cond_9
    const-string v0, "com.samsung.android.sm.powershare"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 822
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v4, 0x65

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 823
    iput-boolean v10, v1, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mPowerSharedCleint:Z

    .line 825
    :cond_a
    const-string v0, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", required_sensors="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 828
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 829
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    if-eqz v0, :cond_b

    .line 830
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->setAccIntStatus(I)V

    .line 831
    .end local v7    # "client":Ljava/lang/String;
    :cond_b
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 835
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->isScreenOn()Z

    move-result v0

    const/16 v3, 0x59

    if-eqz v0, :cond_c

    .line 836
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 837
    :cond_c
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_d

    .line 838
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 840
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 841
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->getBitmaskSensorsActivated()I

    move-result v3

    .line 842
    .end local v6    # "required_sensors":I
    .local v3, "required_sensors":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_5
    const/4 v0, 0x5

    if-ge v4, v0, :cond_10

    .line 843
    shl-int v5, v10, v4

    .line 844
    .local v5, "target_sensor":I
    and-int v0, v5, v3

    if-eqz v0, :cond_f

    .line 845
    invoke-direct {p0, v5, v10}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    .line 846
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v6

    .line 847
    :try_start_8
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v0, :cond_e

    .line 848
    invoke-direct {p0, v5, v10}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    .line 849
    :cond_e
    monitor-exit v6

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 842
    .end local v5    # "target_sensor":I
    :cond_f
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 852
    .end local v4    # "i":I
    :cond_10
    return-void

    .line 810
    .end local v3    # "required_sensors":I
    .local v4, "client":Ljava/lang/String;
    .restart local v6    # "required_sensors":I
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v5, "MotionRecognitionService"

    const-string v7, "RemoteException : getListenerInfo()"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v5, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v2    # "registerTurnOver":Z
    .end local v6    # "required_sensors":I
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "motion_sensors":I
    .end local p3    # "motionType":I
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 831
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .end local v4    # "client":Ljava/lang/String;
    .restart local v2    # "registerTurnOver":Z
    .restart local v6    # "required_sensors":I
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "motion_sensors":I
    .restart local p3    # "motionType":I
    :catchall_2
    move-exception v0

    move v1, v6

    goto :goto_7

    .end local v6    # "required_sensors":I
    .local v1, "required_sensors":I
    :catchall_3
    move-exception v0

    :goto_7
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x4 -> :sswitch_4
        0x400 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x120405 -> :sswitch_1
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    const-string v0, "MotionRecognitionService"

    const-string v1, " deprecated api, does not support resetMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, -0x1

    return v0
.end method

.method public setMotionAngle(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    const-string v0, "MotionRecognitionService"

    const-string v1, " deprecated api, does not support resetMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 2
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .does not support setMotionTiltLevel "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void
.end method

.method public setTestSensor()Z
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    if-nez v0, :cond_0

    .line 975
    const-string v0, "MotionRecognitionService"

    const-string v1, "SensorChecker isn\'t created!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v0, 0x0

    return v0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 979
    const/4 v0, 0x1

    return v0
.end method

.method public startAdaptiveBrightness()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->startService()V

    .line 990
    return-void
.end method

.method public stopAdaptiveBrightness()V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    if-nez v0, :cond_0

    .line 997
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->stopService()V

    .line 1000
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    const/4 v1, 0x0

    .line 859
    .local v1, "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    const-string v2, ""

    .line 861
    .local v2, "client":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 863
    .local v4, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget-object v5, v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    .line 864
    move-object v1, v4

    .line 865
    goto :goto_1

    .line 867
    .end local v4    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_0
    goto :goto_0

    .line 869
    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eqz v1, :cond_8

    .line 870
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_4

    .line 871
    shl-int v5, v0, v4

    .line 872
    .local v5, "motion_event":I
    iget v6, v1, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_3

    .line 873
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    aget v7, v6, v4

    sub-int/2addr v7, v0

    aput v7, v6, v4

    .line 874
    sparse-switch v5, :sswitch_data_0

    goto :goto_3

    .line 891
    :sswitch_0
    const-string v6, "MotionRecognitionService"

    const-string v7, "Elevator API unregister in MRS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/ElevatorModeEvent;->unregisterElevatorDetector()V

    goto :goto_3

    .line 876
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 877
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableSmartAlert()Z

    move-result v6

    .line 878
    .local v6, "ret":Z
    if-nez v6, :cond_2

    .line 879
    const-string v7, "MotionRecognitionService"

    const-string v8, " disable reactive alert mode "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 882
    .end local v6    # "ret":Z
    :cond_2
    goto :goto_3

    .line 886
    :sswitch_2
    iget-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    if-eqz v6, :cond_3

    .line 887
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    iget-object v7, v7, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;->mDCMListener:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 870
    .end local v5    # "motion_event":I
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 899
    .end local v4    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->updateRegisteredMotions()V

    .line 900
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    if-eqz p1, :cond_6

    .line 903
    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 905
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v4

    .line 906
    .local v4, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-eqz v4, :cond_5

    .line 907
    invoke-interface {v4}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v5

    .line 912
    .end local v4    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    :cond_5
    move-object v7, v2

    goto :goto_4

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MotionRecognitionService"

    const-string v5, "RemoteException : getListenerInfo()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .end local v2    # "client":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .end local p1    # "binder":Landroid/os/IBinder;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 902
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .restart local v2    # "client":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .restart local p1    # "binder":Landroid/os/IBinder;
    :cond_6
    move-object v7, v2

    .line 914
    .end local v2    # "client":Ljava/lang/String;
    .local v7, "client":Ljava/lang/String;
    :goto_4
    :try_start_3
    const-string v2, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .unregisterCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v2, "com.samsung.android.sm.powershare"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 916
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 918
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    iget v6, v1, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 919
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    goto :goto_5

    .line 937
    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_9

    .line 922
    .end local v7    # "client":Ljava/lang/String;
    .restart local v2    # "client":Ljava/lang/String;
    :cond_8
    :goto_5
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->disableUnusedSensors()V

    .line 924
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 925
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    .line 926
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 927
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_c

    .line 928
    const/4 v4, 0x0

    .line 929
    .local v4, "enabledEasyMute":Z
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 930
    .local v6, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget v7, v6, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_a

    .line 931
    const/4 v4, 0x1

    .line 932
    goto :goto_7

    .line 934
    .end local v6    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_a
    goto :goto_6

    .line 935
    :cond_b
    :goto_7
    if-nez v4, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    .line 937
    .end local v4    # "enabledEasyMute":Z
    :cond_c
    :goto_8
    monitor-exit v3

    .line 938
    return-void

    .line 937
    :catchall_1
    move-exception v0

    :goto_9
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public useMotionAlways(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "bUseAlways"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    return-void
.end method
