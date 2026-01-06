.class public Lcom/samsung/android/gesture/PocketModeEvent;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;,
        Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;,
        Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;,
        Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;,
        Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;
    }
.end annotation


# static fields
.field private static final ACC_YDATA_THD:D = -6.5

.field private static final ACTION_CAR_CONNECTION_UPDATED:Ljava/lang/String; = "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

.field public static final AOD_MODE_CUSTOM_TIME:I = 0x3

.field public static final AOD_MODE_OFF:I = 0x0

.field public static final AOD_MODE_SHOW_ALWAYS:I = 0x1

.field public static final AOD_MODE_TAP_TO_SHOW:I = 0x2

.field public static AOD_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final INJECT_EL_OFF:F = 100.0f

.field private static final INJECT_EL_ON:F = 101.0f

.field private static final INJECT_POCEKT_FLAG_DISABLE:I = 0x30047c1

.field private static final INJECT_POCEKT_FLAG_ENABLE:I = 0x20047c1

.field private static final INTENT_ACTION_FACE_UNLOCK:Ljava/lang/String; = "com.samsung.keyguard.FACE_UNLOCK_STATE"

.field private static final INTENT_BIXBY_UPDATED:Ljava/lang/String; = "com.samsung.android.bixby.intent.action.POCKET_MODE_CHECK"

.field private static final INTENT_EDGE_LIGHTING_REMOVE:Ljava/lang/String; = "com.android.systemui.edgelighting.stop"

.field private static final INTENT_EDGE_LIGHTING_SHOW:Ljava/lang/String; = "com.android.systemui.edgelighting.start"

.field private static final INTENT_KSO_CLICK_OK:Ljava/lang/String; = "com.samsung.intent.action.KSO_CLICK_OK"

.field private static final INTENT_KSO_IRIS_LED_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_LED_OFF"

.field private static final INTENT_KSO_IRIS_LED_ON:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_LED_ON"

.field private static final INTENT_KSO_REMOVE_POPUP:Ljava/lang/String; = "com.samsung.intent.action.KSO_CLOSE_POPUP"

.field private static final INTENT_KSO_REMOVE_POPUP_SUB:Ljava/lang/String; = "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

.field private static final INTENT_KSO_SHOW_POPUP:Ljava/lang/String; = "com.samsung.intent.action.KSO_SHOW_POPUP"

.field private static final INTENT_KSO_SHOW_POPUP_SUB:Ljava/lang/String; = "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

.field private static final INTENT_RECOG_POCKET_MODE:Ljava/lang/String; = "com.samsung.intent.action.RECOG_POCKET_MODE"

.field private static final INTENT_RELEASE_POCKET_MODE:Ljava/lang/String; = "com.samsung.intent.action.RELEASE_POCKET_MODE"

.field private static final INTENT_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field private static final INTENT_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field private static final IRIS_CHECK_TIME:I = 0x7d0

.field private static final LIGHT_SENSOR_MONITORING_TIME:J = 0x64L

.field private static final LIGHT_SENSOR_WAIT_TIME:I = 0x1f4

.field private static final LUMI_REDZONE_THD:I = 0xd7

.field public static final MIN_LIGHT_POCKET_OUT:I = 0x5

.field public static final MIN_LIGHT_POCKET_OUT_FOR_MOTION:I = 0x14

.field private static final MIN_LIGHT_POCKET_OUT_FOR_REDZONE:I = 0x1f4

.field public static final MIN_LIGHT_POCKET_OUT_FOR_UNDERDISPLAY:I = 0xa

.field public static final MSG_TYPE_CLICK_POPUP_OK:I = 0x3

.field public static final MSG_TYPE_DISABLE_INSENSITIVE_MODE:I = 0x12

.field public static final MSG_TYPE_DISABLE_TIMEOUT_DELAY_INVALID:I = 0x14

.field public static final MSG_TYPE_DUMP_LOG_FOR_BLOCKED_TOUCH:I = 0x17

.field public static final MSG_TYPE_ENABLE_INSENSITIVE_MODE:I = 0x11

.field public static final MSG_TYPE_ENABLE_TIMEOUT_DELAY_INVALID:I = 0x13

.field public static final MSG_TYPE_HOVER_RECHECK_DISABLE:I = 0xa

.field public static final MSG_TYPE_PHYSICAL_PROX_DISABLE:I = 0xb

.field public static final MSG_TYPE_POCKET_RECOGNITION_TIMEOUT:I = 0x6

.field public static final MSG_TYPE_RECOG_POCKET_MODE:I = 0xd

.field public static final MSG_TYPE_REGISTER_POCKET_POSITION_SENSOR:I = 0xf

.field public static final MSG_TYPE_REGISTER_POCKET_SENSOR:I = 0x8

.field public static final MSG_TYPE_RELEASE_POCKET_MODE:I = 0xe

.field public static final MSG_TYPE_REMOVE_POPUP:I = 0x4

.field public static final MSG_TYPE_SCREEN_OFF:I = 0x19

.field public static final MSG_TYPE_SCREEN_ON:I = 0x18

.field public static final MSG_TYPE_SHOW_POPUP:I = 0x2

.field public static final MSG_TYPE_START_EDGE_LIGHTING:I = 0x15

.field public static final MSG_TYPE_START_SENSING:I = 0x1

.field public static final MSG_TYPE_STOP_EDGE_LIGHTING:I = 0x16

.field public static final MSG_TYPE_STOP_SENSING:I = 0x5

.field public static final MSG_TYPE_SUBDISPLAY_RECHECK_DISABLE:I = 0x9

.field public static final MSG_TYPE_UNREGISTER_LIGHT_SENSOR:I = 0xc

.field public static final MSG_TYPE_UNREGISTER_POCKET_POSITION_SENSOR:I = 0x10

.field public static final MSG_TYPE_UNREGISTER_POCKET_SENSOR:I = 0x7

.field private static final POCKET_APD_FEATURE:Ljava/lang/String; = "com.sec.feature.pocketapdmode"

.field private static final POCKET_FEATURE:Ljava/lang/String; = "com.sec.feature.pocketmode"

.field private static final POCKET_POSITION_FEATURE:Ljava/lang/String; = "com.sec.feature.pocketsensitivitymode"

.field private static final POCKET_TOUCH_RECHECK_TIME:J = 0x4e20L

.field public static final POPUP_RELEASE_REASON_DRAG_BY_USER:I = 0x5

.field public static final POPUP_RELEASE_REASON_LIGHT_CONDITION:I = 0x2

.field public static final POPUP_RELEASE_REASON_NONE:I = 0x0

.field public static final POPUP_RELEASE_REASON_PROXY_CONDITION:I = 0x3

.field public static final POPUP_RELEASE_REASON_SCREEN_TIMEOUT:I = 0x1

.field public static final POPUP_RELEASE_REASON_TILT_CONDITION:I = 0x4

.field public static final SENSOR_TYPE_LIGHT:I = 0x0

.field public static final SENSOR_TYPE_LIGHT_CAMERA:I = 0x2

.field public static final SENSOR_TYPE_LIGHT_CCT:I = 0x1

.field private static final STATE_NOT_POCKET:I = 0x1

.field private static final STATE_POCKET_RECOG:I = 0x2

.field private static final STATE_POCKET_TOUCH:I = 0x3

.field private static final STATE_SHOW_POPUP:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final THD_LIGHT_POCKET_OUT_FOR_ACC_AT:I = 0x32

.field public static final THD_LIGHT_POCKET_OUT_FOR_POSITIONSENSOR:I = 0x96

.field private static final TIME_1_SEC_COUNT:I = 0x3e8

.field private static final TIME_300_MS_COUNT:I = 0x12c

.field private static final TIME_500_MS_COUNT:I = 0x1f4

.field private static final TYPE_SENSORHUB:I = 0x10032

.field public static final VER:D = 8.0

.field private static final VER_LOG:Ljava/lang/String; = "b"

.field private static elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE; = null

.field public static isPopUpShowing:Z = false

.field public static isTimeoutDelayInvalidEnabled:Z = false

.field public static mAPDFeatureLevel:I = 0x0

.field private static mDebug:Z = false

.field public static mFeatureLevel:I = 0x0

.field private static mInstance:Lcom/samsung/android/gesture/PocketModeEvent; = null

.field public static mIsPocketOutSubDisp:Z = false

.field public static mIsSettingEnabled:Z = false

.field private static final mPocketLock:Ljava/lang/Object;

.field public static mPopupReleaseReason:I = 0x0

.field public static mSensitivityFeatureLevel:I = 0x0

.field public static mSensorPocketInState:I = 0x0

.field private static pam:Lcom/samsung/android/gesture/PocketAPDManager; = null

.field private static pbdm:Lcom/samsung/android/gesture/PocketBigDataManager; = null

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager; = null

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager; = null

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager; = null

.field public static pocketPosState:Z = false

.field private static pocketState:Z = false

.field private static ppm:Lcom/samsung/android/gesture/PocketProximityManager; = null

.field public static final proxyClose:I = 0x2

.field private static psm:Lcom/samsung/android/gesture/PocketSensitivityManager;


# instance fields
.field private batteryTemp:I

.field private carConnection:Landroidx/car/app/connection/CarConnection;

.field private currentState:I

.field public inputLidEventListenerForDualFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

.field public inputLidEventListenerForFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

.field public inputLidEventListenerForFolder:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field private isRunning:Z

.field private final lightDark:I

.field private lightReCheckCnt:I

.field private lightTotalCnt:I

.field private mAodShowState:Z

.field private final mContext:Landroid/content/Context;

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIrisLedOffTime:J

.field private mIsAvailableTiltUse:Z

.field private mIsDualDisplayFolder:Z

.field private mIsInitalized:Z

.field private mIsLockScreenState:Z

.field private mIsOccurTouch:Z

.field private mIsPocketOutHover:Z

.field private mIsSettingEnabledPrev:Z

.field private mIsWriteLuxLog:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorType:I

.field private final mLockProxInt:Ljava/lang/Object;

.field private mLuminance:I

.field private mLux:I

.field private mLuxDump:I

.field private mLuxOutDump:I

.field private mLuxSysfs:I

.field private mPhysicalProxUseFlag:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSendRecogPocketInt:Z

.field private mSendReleasePocketInt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegisterTime:J

.field private mShowOverlayTime:J

.field private mWakeUpReason:I

.field private mWriteDumpTime:J

.field public sensorLightEventListener:Landroid/hardware/SensorEventListener;

.field public sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

.field private sysfsCnt:I

.field private sysfsProx:I

.field private final touchCheck:I

.field private validLightCnt:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->batteryTemp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetirisState(Lcom/samsung/android/gesture/PocketModeEvent;)Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunning(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDualDisplayFolder(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInitalized(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSettingEnabledPrev(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabledPrev:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockProxInt(Lcom/samsung/android/gesture/PocketModeEvent;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuminance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxDump(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxDump:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxOutDump(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxOutDump:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxSysfs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorRegisterTime(Lcom/samsung/android/gesture/PocketModeEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->batteryTemp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentState(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputirisState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIrisLedOffTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIrisLedOffTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAvailableTiltUse(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLockScreenState(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsLockScreenState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOccurTouch(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPocketOutHover(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxSysfs:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/PocketModeEvent;->changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAutoBrightnessSetting(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAutoBrightnessSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIrisState(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkIrisState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFlipFolded(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isFlipFolded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isInPocket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOutPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isOutPocket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopVirtualPocketOperation(Lcom/samsung/android/gesture/PocketModeEvent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/PocketModeEvent;->stopVirtualPocketOperation(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetelState()Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    .line 150
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 151
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 153
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    .line 157
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 165
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mDebug:Z

    .line 168
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->pocketState:Z

    .line 169
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->pocketPosState:Z

    .line 181
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 190
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 191
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    .line 192
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    .line 193
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    .line 198
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->mPocketLock:Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    .line 245
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 246
    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 247
    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 248
    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 249
    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 250
    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 251
    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    .line 254
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "OFF"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHOW_ALWAYS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAP_TO_SHOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CUSTOM_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightDark:I

    .line 136
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->touchCheck:I

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabledPrev:Z

    .line 152
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 156
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    .line 159
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    .line 161
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    .line 162
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    .line 163
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mAodShowState:Z

    .line 164
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    .line 166
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    .line 167
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 170
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsLockScreenState:Z

    .line 173
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 174
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIrisLedOffTime:J

    .line 175
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    .line 178
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    .line 179
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    .line 180
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    .line 184
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxOutDump:I

    .line 188
    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    .line 839
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$2;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    .line 1087
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$3;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    .line 1126
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$4;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 1147
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$5;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForDualFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 1181
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$6;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFolder:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 1204
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$7;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2021
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketModeEvent$8;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    .line 271
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "sensorThread"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 273
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/gesture/PocketModeEvent$1;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    .line 516
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 517
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    if-nez v3, :cond_0

    .line 518
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketLogManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void

    .line 521
    :cond_0
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1f"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->setVersion(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/samsung/android/gesture/PocketBigDataManager;->getInstance()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 525
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    if-nez v3, :cond_1

    .line 526
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketBigDataManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void

    .line 531
    :cond_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 532
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v3, :cond_2

    .line 533
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketDeviceManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void

    .line 536
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->setHandler(Landroid/os/Handler;)V

    .line 537
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->setContext(Landroid/content/Context;)V

    .line 538
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->initialize()V

    .line 542
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->getInstance()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 543
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    if-nez v3, :cond_3

    .line 544
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketProximityManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void

    .line 547
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setHandler(Landroid/os/Handler;)V

    .line 548
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->initialize()V

    .line 552
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 553
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    if-nez v3, :cond_4

    .line 554
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketMotionManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void

    .line 557
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketMotionManager;->setContext(Landroid/content/Context;)V

    .line 561
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getInstance()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 562
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-nez v3, :cond_5

    .line 563
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketSensitivityManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void

    .line 566
    :cond_5
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->initialize()V

    .line 570
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->getInstance()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    .line 571
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    if-nez v3, :cond_6

    .line 572
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get instance of PocketAPDManager"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void

    .line 575
    :cond_6
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketAPDManager;->initialize()V

    .line 578
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v3

    .line 579
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v3, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v3, "com.samsung.android.intent.action.IRIS_LED_ON"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v3, "com.samsung.android.intent.action.IRIS_LED_OFF"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v3, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v3, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v3, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v3, "com.samsung.android.bixby.intent.action.POCKET_MODE_CHECK"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v3, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string v3, "com.android.systemui.edgelighting.start"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    const-string v3, "com.android.systemui.edgelighting.stop"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    const-string v3, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->intentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    .line 600
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V

    .line 601
    .local v3, "mPocketModeSettingObserver":Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_off_pocket"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 603
    new-instance v4, Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V

    .line 604
    .local v4, "mAodSettingObserver":Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "aod_show_state"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 606
    new-instance v5, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V

    .line 607
    .local v5, "mAutoBrightObserver":Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;
    iget-object v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 609
    return-void
.end method

.method private changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    .line 1083
    sput-object p1, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    .line 1084
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EL_STATE is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method private checkAutoBrightnessSetting()V
    .locals 5

    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "autoBrightnessSetting":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 1318
    .end local v0    # "autoBrightnessSetting":Z
    .local v4, "autoBrightnessSetting":Z
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoBrightnessSetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->setAutoBrightnessEnabled(Z)V

    .line 1320
    return-void
.end method

.method private checkIrisState()Z
    .locals 7

    .line 1065
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1066
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIrisLedOn, MLux is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    return v2

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    if-ne v0, v1, :cond_2

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIrisLedOffTime:J

    sub-long/2addr v0, v3

    .line 1070
    .local v0, "irisDelayTime":J
    const-wide/16 v3, 0x7d0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    .line 1071
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MLux : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IrisDelayTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return v2

    .line 1075
    :cond_1
    cmp-long v2, v0, v3

    if-ltz v2, :cond_2

    .line 1076
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 1079
    .end local v0    # "irisDelayTime":J
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent;

    monitor-enter v0

    .line 713
    :try_start_0
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->mInstance:Lcom/samsung/android/gesture/PocketModeEvent;

    if-nez v1, :cond_0

    .line 714
    new-instance v1, Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/PocketModeEvent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->mInstance:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 717
    :cond_0
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PocketModeEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->mInstance:Lcom/samsung/android/gesture/PocketModeEvent;

    if-eqz v3, :cond_1

    const-string v3, "enabled"

    goto :goto_0

    :cond_1
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    monitor-exit v0

    return-void

    .line 712
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2215
    :try_start_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gesture/PocketLogManager;->dumpData(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    goto :goto_0

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "DUMP_EXCEPTION"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getLIDState()I
    .locals 2

    .line 2162
    const/4 v0, -0x1

    .line 2163
    .local v0, "isFolderClosed":I
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_0

    .line 2164
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v0

    .line 2167
    :cond_0
    return v0
.end method

.method public static getLightThreshold()I
    .locals 7

    .line 1890
    const/4 v0, 0x5

    .line 1891
    .local v0, "light_limit":I
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->getAccYData()D

    move-result-wide v1

    .line 1892
    .local v1, "accY":D
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    sget-boolean v3, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-nez v3, :cond_1

    .line 1893
    const/16 v0, 0xa

    .line 1895
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 1896
    const-wide/high16 v5, -0x3fe6000000000000L    # -6.5

    cmpg-double v3, v1, v5

    if-lez v3, :cond_0

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketMotionManager;->getATStatus()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1897
    const/16 v0, 0x14

    .line 1901
    :cond_1
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isPocketPosSensorReceived()Z

    move-result v3

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getLightDynmTHD()Z

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1902
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v3

    .line 1903
    .local v3, "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    if-eqz v3, :cond_2

    .line 1904
    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v5

    if-ne v5, v4, :cond_2

    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 1905
    const/16 v0, 0x96

    .line 1910
    .end local v3    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    :cond_2
    return v0
.end method

.method private isExceptionCase()Z
    .locals 4

    .line 1964
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1965
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Cover is closed now"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    return v1

    .line 1969
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isNotUsedPocketModeInFoldable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    return v1

    .line 1973
    :cond_1
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    sparse-switch v0, :sswitch_data_0

    .line 1984
    const/4 v0, 0x0

    return v0

    .line 1979
    :sswitch_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not run by WakeUpReason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    return v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x67 -> :sswitch_0
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method private isFlipDevice()Z
    .locals 2

    .line 2000
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x137

    if-eq v0, v1, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x138

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2003
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2001
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isFlipFolded()Z
    .locals 2

    .line 2015
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x138

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x14c

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2016
    return v1

    .line 2018
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isFoldFolded()Z
    .locals 2

    .line 2008
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x14b

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2009
    return v1

    .line 2011
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInPocket()Z
    .locals 10

    .line 1794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1795
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    sub-long v2, v0, v2

    .line 1797
    .local v2, "diff":J
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-eq v4, v9, :cond_1

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-ne v4, v9, :cond_0

    sget-boolean v4, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-eq v4, v7, :cond_1

    :cond_0
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1798
    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-ne v4, v9, :cond_3

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1799
    :cond_1
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 1800
    return v8

    .line 1803
    :cond_2
    iget v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    iget v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    if-eq v4, v5, :cond_3

    .line 1805
    return v8

    .line 1808
    :cond_3
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 1809
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_4

    goto :goto_0

    :cond_4
    move v7, v8

    :goto_0
    return v7

    .line 1811
    :cond_5
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    if-ne v4, v9, :cond_6

    goto :goto_1

    :cond_6
    move v7, v8

    :goto_1
    return v7
.end method

.method private isNotUsedPocketModeInFoldable()Z
    .locals 3

    .line 1988
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1989
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Do not run by closing flip... "

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    return v1

    .line 1991
    :cond_0
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x14b

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1992
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Do not run by opening folder... "

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    return v1

    .line 1995
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isOutPocket()Z
    .locals 19

    .line 1816
    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v1

    .line 1817
    .local v1, "light_limit":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1818
    .local v2, "curTime":J
    iget-wide v4, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    sub-long v4, v2, v4

    .line 1819
    .local v4, "diff":J
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 1820
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v8, "isScreenOn false"

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return v7

    .line 1823
    :cond_0
    const-wide/16 v8, 0xc8

    cmp-long v6, v4, v8

    const/4 v8, 0x0

    if-gez v6, :cond_1

    .line 1824
    return v8

    .line 1826
    :cond_1
    iget v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    const/4 v9, 0x6

    const/4 v10, 0x2

    if-le v6, v1, :cond_4

    .line 1828
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    const-string v8, " light_limit : "

    const-string v11, "OutPocket lux : "

    if-ne v6, v9, :cond_2

    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_2

    iget-boolean v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    if-ne v6, v7, :cond_2

    .line 1829
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    :cond_2
    iget-boolean v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    if-nez v6, :cond_3

    .line 1832
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iput-boolean v7, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    .line 1834
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_3

    .line 1835
    sput v10, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1836
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v10}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1839
    :cond_3
    return v7

    .line 1841
    :cond_4
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    const-string v11, "OutPocket prox "

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v6, v7, :cond_5

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1842
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v13, :cond_5

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1843
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v12, :cond_5

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1844
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 1845
    :cond_5
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v6

    if-ne v6, v10, :cond_7

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxDelayTime()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v15, v15, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v6, v15, v17

    if-gtz v6, :cond_7

    .line 1847
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_6

    .line 1849
    sput v14, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1850
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v14}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1852
    :cond_6
    return v7

    .line 1855
    :cond_7
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v13, :cond_8

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1856
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v12, :cond_8

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1857
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-ne v6, v10, :cond_c

    .line 1858
    :cond_8
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v6

    const/16 v9, 0x33

    if-ne v6, v9, :cond_9

    iget-boolean v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    if-ne v6, v7, :cond_9

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketMotionManager;->isTiltChanged()Z

    move-result v6

    if-eq v6, v7, :cond_a

    :cond_9
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketMotionManager;->isTiltDetectorFlag()Z

    move-result v6

    if-ne v6, v7, :cond_c

    .line 1859
    :cond_a
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v8, "Tilt occured!! - out pocket"

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_b

    .line 1861
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v13}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1863
    :cond_b
    sput v13, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1864
    return v7

    .line 1868
    :cond_c
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-ne v6, v14, :cond_e

    .line 1869
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v6

    if-ne v6, v10, :cond_e

    .line 1870
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_d

    .line 1872
    sput v14, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1873
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v14}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1875
    :cond_d
    return v7

    .line 1879
    :cond_e
    iget v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    iget v9, v0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    if-eq v6, v9, :cond_f

    .line 1881
    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v6

    if-ne v6, v7, :cond_f

    sget v6, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v6, v10

    if-ne v6, v10, :cond_f

    .line 1882
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "light sensor count PocketInState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    return v7

    .line 1886
    :cond_f
    return v8
.end method

.method private readPartialOffInt()I
    .locals 6

    .line 1929
    const/4 v0, 0x0

    .line 1930
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, -0x1

    .line 1931
    .local v1, "data":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v2

    .line 1934
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1937
    goto :goto_0

    .line 1957
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 1946
    :catch_0
    move-exception v3

    goto :goto_2

    .line 1935
    :catch_1
    move-exception v3

    .line 1936
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "File not found! - Read"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-nez v0, :cond_0

    .line 1939
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v4, "Output file is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1941
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 1942
    .end local v1    # "data":I
    .local v3, "data":I
    add-int/lit8 v1, v3, -0x30

    .line 1943
    .end local v3    # "data":I
    .restart local v1    # "data":I
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read proximity data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1956
    :goto_1
    goto :goto_4

    .line 1947
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1948
    if-eqz v0, :cond_1

    .line 1950
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1953
    goto :goto_3

    .line 1951
    :catch_2
    move-exception v4

    .line 1952
    .local v4, "err":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1955
    .end local v4    # "err":Ljava/io/IOException;
    :cond_1
    :goto_3
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "File read fail!!"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    monitor-exit v2

    .line 1958
    return v1

    .line 1957
    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method private stopVirtualPocketOperation(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 2144
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2146
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 2148
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 2149
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2150
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 2152
    :cond_1
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2153
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 2156
    :cond_2
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v3, :cond_3

    .line 2157
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Remove Popup from stopVirtualPocketOperation"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 2160
    :cond_3
    return-void
.end method


# virtual methods
.method public checkAodCurTime()Z
    .locals 9

    .line 1280
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAodModeSetting()I

    move-result v0

    .line 1281
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode_start_time"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1282
    .local v1, "aodStartTime":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aod_mode_end_time"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1283
    .local v2, "aodEndTime":I
    const/4 v4, 0x0

    .line 1285
    .local v4, "aodCurTime":I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 1286
    return v3

    .line 1288
    :cond_0
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->setAodTime(II)V

    .line 1290
    if-ne v0, v5, :cond_1

    if-le v1, v2, :cond_1

    .line 1291
    add-int/lit16 v2, v2, 0x5a0

    .line 1294
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1295
    .local v5, "curDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v7

    add-int/2addr v6, v7

    .line 1297
    .end local v4    # "aodCurTime":I
    .local v6, "aodCurTime":I
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AOD start : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cur : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    if-gt v1, v6, :cond_2

    if-gt v6, v2, :cond_2

    .line 1300
    const/4 v3, 0x1

    return v3

    .line 1303
    :cond_2
    return v3
.end method

.method public checkAodModeSetting()I
    .locals 10

    .line 1240
    const/4 v0, 0x0

    .line 1241
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 1242
    .local v1, "aodStartTime":I
    const/4 v2, 0x0

    .line 1243
    .local v2, "aodEndTime":I
    const/4 v3, 0x0

    .line 1244
    .local v3, "aodSetting":Z
    const/4 v4, 0x0

    .line 1252
    .local v4, "aodTabToShow":Z
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aod_mode"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 1255
    .end local v3    # "aodSetting":Z
    .local v5, "aodSetting":Z
    :goto_0
    if-ne v5, v6, :cond_4

    .line 1256
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "aod_tap_to_show_mode"

    invoke-static {v3, v9, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    move v4, v3

    .line 1257
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "aod_mode_start_time"

    invoke-static {v3, v9, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1258
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "aod_mode_end_time"

    invoke-static {v3, v9, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1260
    if-ne v4, v6, :cond_2

    .line 1261
    const/4 v0, 0x2

    .line 1262
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_tab_to_show"

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1264
    :cond_2
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 1265
    const/4 v0, 0x1

    .line 1266
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_show_always"

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1268
    :cond_3
    const/4 v0, 0x3

    .line 1269
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_show_custom_time"

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1272
    :cond_4
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_setting : off"

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_2
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->setAodType(Ljava/lang/String;)V

    .line 1276
    return v0
.end method

.method public checkRegisterProximitySensor()V
    .locals 8

    .line 783
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 784
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-ne v0, v3, :cond_0

    .line 785
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    .line 786
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Tsp : Write 1"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerHoverSensor()V

    goto :goto_0

    .line 790
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    .line 791
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Tsp : Write 0"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterHoverSensor()V

    .line 795
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v0

    const/4 v1, -0x1

    const/4 v4, 0x2

    if-eq v0, v1, :cond_3

    .line 796
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-ne v0, v3, :cond_2

    .line 797
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 798
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    goto :goto_1

    .line 801
    :cond_2
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 802
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 805
    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 806
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    const/4 v2, 0x7

    const-wide/16 v5, 0x0

    if-nez v0, :cond_7

    .line 807
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 808
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 810
    :cond_4
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    const/4 v2, 0x5

    if-eq v0, v3, :cond_5

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-eq v0, v4, :cond_5

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-eq v0, v1, :cond_5

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-ne v0, v2, :cond_6

    .line 812
    :cond_5
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 815
    :cond_6
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_3

    .line 817
    :cond_7
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-ne v0, v3, :cond_d

    .line 818
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isAodOnTheScreen()Z

    move-result v0

    .line 819
    .local v0, "aodState":Z
    if-ne v0, v3, :cond_9

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    const/16 v7, 0x1f

    if-ne v1, v7, :cond_9

    .line 820
    :cond_8
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 822
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-ne v1, v3, :cond_c

    .line 823
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2

    .line 826
    :cond_9
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-nez v1, :cond_c

    .line 827
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x14b

    if-ne v1, v2, :cond_a

    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    if-ne v1, v2, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 828
    :cond_a
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x138

    if-ne v1, v2, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    if-eq v1, v3, :cond_c

    .line 829
    :cond_b
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 834
    :cond_c
    :goto_2
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enablePocketPositionSensor(I)V

    .line 837
    .end local v0    # "aodState":Z
    :cond_d
    :goto_3
    return-void
.end method

.method checkSensorType()V
    .locals 9

    .line 613
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    .line 617
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFolderType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    .line 620
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 621
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.pocketmode"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    .line 623
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeaturePocketlevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_1
    const-string v2, "com.sec.feature.pocketsensitivitymode"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 626
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    .line 627
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeaturePocketPositionlevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_2
    const-string v2, "com.sec.feature.pocketapdmode"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 630
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    .line 631
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeaturePocketAPDlevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_3
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->checkProximityType(Landroid/content/Context;I)V

    .line 635
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/gesture/PocketSensitivityManager;->checkSensitivityType(Landroid/content/Context;II)V

    .line 636
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/gesture/PocketAPDManager;->checkAPDType(Landroid/content/Context;II)V

    .line 638
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10033

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    .line 639
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_5

    .line 640
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    .line 641
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_4

    .line 642
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10044

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    .line 643
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Sensor.TYPE_LIGHT_CAMERA"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    goto :goto_0

    .line 647
    :cond_4
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Sensor.TYPE_LIGHT"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    goto :goto_0

    .line 651
    :cond_5
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Sensor.TYPE_LIGHT_CCT"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    .line 655
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 656
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    sget v7, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    sget v8, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/gesture/PocketLogManager;->setSensorType(IIIII)V

    .line 657
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    .line 658
    return-void
.end method

.method public checkSettingEnable()V
    .locals 4

    .line 1234
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabledPrev:Z

    .line 1235
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "screen_off_pocket"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    sput-boolean v3, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    .line 1237
    return-void
.end method

.method public getLuminance()I
    .locals 3

    .line 1426
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1427
    .local v0, "luminance":I
    return v0
.end method

.method getPopUpState()Z
    .locals 1

    .line 709
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    return v0
.end method

.method handleBootComplete()V
    .locals 9

    .line 1542
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSensorType()V

    .line 1543
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAutoBrightnessSetting()V

    .line 1545
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    .line 1546
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    .line 1547
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "mInputManager is null "

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1548
    :cond_0
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x137

    if-eq v0, v1, :cond_3

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x138

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1551
    :cond_1
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x14c

    if-ne v0, v1, :cond_2

    .line 1552
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForDualFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 1554
    :cond_2
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x14b

    if-ne v0, v1, :cond_4

    .line 1555
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFolder:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 1549
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 1558
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isAodOnTheScreen()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v0, v6, :cond_7

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v8, 0x20

    if-eq v0, v8, :cond_7

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v8, 0x21

    if-eq v0, v8, :cond_7

    .line 1559
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1560
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1561
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v6, :cond_a

    .line 1562
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2

    .line 1565
    :cond_5
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1566
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1567
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    goto :goto_2

    .line 1569
    :cond_6
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1570
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    goto :goto_2

    .line 1574
    :cond_7
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 1575
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1576
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1577
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1578
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2

    .line 1581
    :cond_8
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 1582
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1583
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    goto :goto_2

    .line 1585
    :cond_9
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1586
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1591
    :cond_a
    :goto_2
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enablePocketPositionSensor(I)V

    .line 1592
    return-void
.end method

.method handlePocketIn()V
    .locals 9

    .line 1432
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v0

    .line 1434
    .local v0, "light_limit":I
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 1435
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1436
    iput-boolean v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    .line 1439
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-gt v1, v4, :cond_5

    .line 1440
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v1

    if-eq v1, v6, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 1445
    :cond_1
    iput v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    goto :goto_1

    .line 1441
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1442
    iput v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1447
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    if-eq v1, v4, :cond_3

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v1

    const/4 v7, 0x6

    if-ne v1, v7, :cond_4

    .line 1448
    :cond_3
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1450
    :cond_4
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePocketIn lux:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prox state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " light_limit lux: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    if-ne v1, v6, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    if-ne v1, v4, :cond_6

    .line 1454
    iput v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1456
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    if-ne v1, v5, :cond_8

    .line 1457
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v1, :cond_7

    .line 1458
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1460
    :cond_7
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1461
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 1462
    sget v1, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    or-int/2addr v1, v4

    sput v1, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    .line 1463
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketAPDManager;->setStartTimeEachMode(JI)V

    .line 1466
    :cond_8
    return-void
.end method

.method handlePocketOut()V
    .locals 10

    .line 1470
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxOutDump:I

    .line 1471
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    .line 1473
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1474
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    goto :goto_0

    .line 1477
    :cond_0
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-nez v0, :cond_1

    .line 1478
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1481
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    if-nez v0, :cond_2

    .line 1482
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1483
    iput-boolean v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 1486
    :cond_2
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-ne v0, v6, :cond_5

    .line 1492
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->alertProxAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1493
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "Proximity Alert release!!"

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 1496
    :cond_3
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    const/16 v6, 0x32

    if-ge v0, v6, :cond_4

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1497
    :cond_4
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Acc, AT is unregister by condition "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1499
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    goto :goto_1

    .line 1503
    :cond_5
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v7, :cond_6

    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    const/16 v6, 0x67

    if-ne v0, v6, :cond_6

    .line 1504
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "handlePocketOut - cover open"

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->unregisterLightSensor()V

    .line 1508
    :cond_6
    :goto_1
    iput v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1510
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v5, :cond_b

    .line 1511
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    if-ne v0, v1, :cond_8

    .line 1512
    sget v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    and-int/2addr v0, v8

    if-nez v0, :cond_7

    .line 1513
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Popup release by Pocket mode "

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v7, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1516
    :cond_7
    sget v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    .line 1517
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    goto :goto_2

    .line 1520
    :cond_8
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Remove Popup from handlePocketOut"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v7, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1524
    :goto_2
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-ne v0, v5, :cond_b

    .line 1525
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 1527
    sput v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    goto :goto_3

    .line 1529
    :cond_9
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1531
    sput v8, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1533
    :cond_a
    :goto_3
    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1534
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1535
    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    .line 1538
    :cond_b
    return-void
.end method

.method handleScreenOff()V
    .locals 13

    .line 1659
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    if-eqz v0, :cond_0

    .line 1661
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    new-instance v1, Lcom/samsung/android/gesture/PocketDumpScreenOff;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v2

    iget v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    iget v7, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxDump:I

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/gesture/PocketDumpScreenOff;-><init>(JJII)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 1664
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOn(Z)V

    .line 1665
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 1666
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setPocketSensorReceived(Z)V

    .line 1667
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setPocketPosSensorReceived(Z)V

    .line 1668
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setLightLimitByCallmin(Z)V

    .line 1669
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    .line 1670
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    .line 1671
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    .line 1672
    sput-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 1673
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/PocketModeEvent;->changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 1675
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isAodOnTheScreen()Z

    move-result v0

    .line 1676
    .local v0, "aodState":Z
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v4, v8, :cond_d

    .line 1677
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v10, 0x138

    if-ne v4, v10, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v4

    if-eq v4, v9, :cond_2

    .line 1678
    :cond_1
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1679
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1681
    :cond_2
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v4

    const/16 v11, 0x20

    const/16 v12, 0x8

    if-eq v4, v11, :cond_6

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v4

    const/16 v11, 0x21

    if-ne v4, v11, :cond_3

    goto :goto_0

    .line 1697
    :cond_3
    if-ne v0, v9, :cond_4

    .line 1698
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1700
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v4

    if-ne v4, v9, :cond_c

    .line 1701
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v10, 0x7

    invoke-virtual {v4, v10, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_1

    .line 1704
    :cond_4
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1706
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1707
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v10, 0x137

    if-ne v4, v10, :cond_5

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    if-ne v4, v10, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v4

    if-nez v4, :cond_c

    .line 1708
    :cond_5
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v4, v12, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_1

    .line 1682
    :cond_6
    :goto_0
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1684
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1685
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v11, 0x14b

    if-ne v4, v11, :cond_7

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    if-ne v4, v11, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v4

    if-ne v4, v9, :cond_9

    .line 1686
    :cond_7
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    if-ne v4, v10, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v4

    if-eq v4, v9, :cond_9

    .line 1687
    :cond_8
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v4, v12, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1691
    :cond_9
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-eq v4, v9, :cond_a

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-eq v4, v8, :cond_a

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-ne v4, v6, :cond_b

    .line 1692
    :cond_a
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v10, 0x12

    invoke-virtual {v4, v10, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1694
    :cond_b
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enablePocketPositionSensor(I)V

    .line 1713
    :cond_c
    :goto_1
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v4

    if-ne v4, v9, :cond_10

    .line 1714
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    goto :goto_3

    .line 1717
    :cond_d
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-eq v4, v7, :cond_e

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-ne v4, v6, :cond_10

    .line 1718
    :cond_e
    if-eqz v0, :cond_f

    .line 1719
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 1720
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1721
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v10, "Sensor change : AOD is on"

    invoke-static {v4, v10}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1723
    :cond_f
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 1724
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    sget-object v10, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v10}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1726
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    .line 1729
    :cond_10
    :goto_3
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v4, v6, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1730
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->registerCoverListener()V

    .line 1732
    sget-boolean v4, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v4, v9, :cond_11

    .line 1733
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v4, v9}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1734
    sput v9, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1735
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v10, "Remove Popup from handleScreenOff"

    invoke-static {v4, v10}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v4, v7, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1739
    :cond_11
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    const/4 v10, 0x0

    if-ne v4, v6, :cond_12

    .line 1740
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 1741
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->registerLiteProxSensor()V

    .line 1742
    if-nez v0, :cond_15

    .line 1743
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v11, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4, v11, v10}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1744
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensor()V

    goto :goto_4

    .line 1747
    :cond_12
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-ne v4, v7, :cond_14

    .line 1748
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v4

    if-ne v4, v9, :cond_15

    .line 1749
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    if-ne v4, v7, :cond_13

    .line 1750
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v11, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4, v11, v10}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1751
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensor()V

    .line 1753
    :cond_13
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    iget-object v11, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4, v10, v11, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1754
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v10, "register light sensor_Scrren_off"

    invoke-static {v4, v10}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1757
    :cond_14
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    const/4 v10, 0x6

    if-ne v4, v10, :cond_15

    .line 1758
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 1761
    :cond_15
    :goto_4
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-ne v4, v7, :cond_16

    .line 1762
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1764
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    sget-object v7, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v4, v7}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 1765
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v7, "UNKNOWN_INSENSITIVE_MODE"

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_16
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    if-ne v4, v6, :cond_17

    .line 1770
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "[APD] unregister by Screen off"

    invoke-static {v4, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketAPDManager;->unregisterLightSensorForAPD()V

    .line 1772
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketAPDManager;->unregisterAPD()V

    .line 1773
    sput v1, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    .line 1774
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v9}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 1775
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v5}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 1776
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v6, 0x17

    invoke-virtual {v4, v6, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1780
    :cond_17
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v2

    if-ne v2, v9, :cond_18

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v5, :cond_18

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v2

    if-nez v2, :cond_18

    .line 1781
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2, v8}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1783
    :cond_18
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->initVirtualPocketData()V

    .line 1785
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x14c

    if-ne v2, v3, :cond_19

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v2

    if-ne v2, v9, :cond_19

    .line 1786
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    .line 1787
    sput-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->pocketState:Z

    .line 1788
    sput-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->pocketPosState:Z

    .line 1790
    :cond_19
    return-void
.end method

.method handleScreenOn()V
    .locals 7

    .line 1596
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOn(Z)V

    .line 1597
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1598
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    .line 1599
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLuminance()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuminance:I

    .line 1600
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsLockScreenState:Z

    .line 1601
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 1602
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketAPDManager;->initBlockedTouchInfo()V

    .line 1603
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/samsung/android/gesture/PocketAPDManager;->setStartTimeEachMode(JI)V

    .line 1605
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 1608
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    const/16 v4, 0x67

    if-ne v0, v4, :cond_1

    .line 1609
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v4, "Cover open, reset pocket sensor"

    invoke-static {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 1613
    :cond_1
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v4, 0x138

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1614
    :cond_2
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerAccelSensor()Z

    .line 1615
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerActivityTracker()V

    .line 1619
    :cond_3
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v3, :cond_4

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1620
    :cond_4
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxy()Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1621
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensor()V

    .line 1622
    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsCnt:I

    .line 1623
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1624
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "unregister display manager listener"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :cond_5
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v5, 0x33

    if-ne v0, v5, :cond_6

    .line 1627
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerAccelSensor()Z

    .line 1628
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    .line 1632
    :cond_6
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    .line 1633
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Hover recheck start"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    .line 1635
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v2, 0xa

    const-wide/16 v5, 0x4e20

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1638
    :cond_7
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-ne v0, v4, :cond_8

    .line 1639
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerActivityTracker()V

    .line 1641
    :cond_8
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    if-ne v0, v3, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 1642
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketAPDManager;->registerLightSensorForAPD()V

    .line 1645
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isExceptionCase()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1646
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1647
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1648
    return-void

    .line 1651
    :cond_a
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->SHOWN:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    if-ne v0, v2, :cond_b

    .line 1652
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->ACTIVE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/PocketModeEvent;->changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 1654
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1655
    return-void
.end method

.method injectDataToSensorHub(F)V
    .locals 6
    .param p1, "injectData"    # F

    .line 687
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 689
    .local v0, "data":[F
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2

    .line 690
    const/4 v1, 0x0

    .line 691
    .local v1, "pocket":Landroid/hardware/Sensor;
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 692
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 694
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10045

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    goto :goto_0

    .line 696
    :cond_0
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 697
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10048

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 699
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 700
    const v3, 0x10000003

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4, v0}, Landroid/hardware/SensorAdditionalInfo;->createSamsungCustomInfo(Landroid/hardware/Sensor;II[I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 701
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 702
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v4, "inject Data failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v1    # "pocket":Landroid/hardware/Sensor;
    .end local v2    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_2
    return-void
.end method

.method injectProxyState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 684
    return-void
.end method

.method public isAodOnTheScreen()Z
    .locals 3

    .line 1308
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAodModeSetting()I

    move-result v0

    .line 1309
    .local v0, "mode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAodCurTime()Z

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 1312
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1310
    :cond_1
    :goto_0
    return v1
.end method

.method reRegisterSensorForSubDisplay()V
    .locals 4

    .line 1915
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "sub display re-register sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 1917
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1918
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1919
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 1920
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1921
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    .line 1923
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1924
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerNormalProxSensor()V

    .line 1925
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x9

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1926
    return-void
.end method

.method public readInputEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2172
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2173
    .local v0, "N":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2174
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    if-ne v1, v2, :cond_0

    .line 2175
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    :cond_0
    const/4 v1, 0x0

    .line 2178
    .local v1, "palmstate":Z
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    .line 2179
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2180
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2181
    return-void

    .line 2183
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2184
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 2185
    const/4 v1, 0x1

    .line 2186
    goto :goto_1

    .line 2183
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2190
    .end local v3    # "i":I
    :cond_3
    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4

    if-eqz v1, :cond_5

    .line 2191
    :cond_4
    sget v3, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 2194
    :cond_5
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    if-ne v3, v2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v3

    if-ne v3, v2, :cond_6

    sget-boolean v3, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-ne v3, v2, :cond_6

    .line 2196
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/lit8 v2, v2, 0x8

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    .end local v0    # "N":I
    .end local v1    # "palmstate":Z
    :cond_6
    goto :goto_2

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "readInputEvent exception"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public readSubDisplayInputEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2204
    :try_start_0
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2205
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsLockScreenState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2206
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pam:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/PocketAPDManager;->countInputTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :cond_0
    goto :goto_0

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "read SubDisplay InputEvent exception"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method registerSensor()V
    .locals 7

    .line 1323
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1324
    return-void

    .line 1326
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 1327
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1328
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 1331
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_2

    .line 1332
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1333
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_0

    .line 1336
    :cond_1
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 1339
    :cond_2
    :goto_0
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v2, v4, :cond_5

    .line 1340
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxLiteState()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1341
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1342
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/2addr v0, v6

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    goto :goto_1

    .line 1344
    :cond_3
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxLiteState()I

    move-result v2

    if-le v2, v1, :cond_4

    .line 1345
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1346
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    goto :goto_1

    .line 1348
    :cond_4
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1350
    :goto_1
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerTiltSensor()V

    goto :goto_2

    .line 1352
    :cond_5
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1353
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerNormalProxSensor()V

    goto :goto_2

    .line 1355
    :cond_6
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 1356
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->startCheckingTouchMonitoring()V

    .line 1357
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerTiltSensor()V

    goto :goto_2

    .line 1359
    :cond_7
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v0

    .line 1361
    :try_start_0
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    .line 1362
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read Proximity data in register : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerTiltSensor()V

    goto :goto_2

    .line 1363
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1366
    :cond_8
    :goto_2
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register prox type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-eq v0, v5, :cond_9

    .line 1369
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 1371
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "register light sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_9
    return-void
.end method

.method unregisterLightSensor()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 664
    :cond_0
    return-void
.end method

.method unregisterSensor()V
    .locals 5

    .line 1376
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    if-nez v0, :cond_0

    .line 1377
    return-void

    .line 1379
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 1380
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1381
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 1384
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 1385
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setRunningTouchSensor(Z)V

    .line 1386
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 1387
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1388
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 1389
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1390
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 1391
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    .line 1392
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    .line 1393
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 1394
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxDump:I

    .line 1395
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    .line 1397
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterSensor L : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1402
    :cond_2
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1403
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterNormalProxSensor()V

    goto :goto_0

    .line 1404
    :cond_3
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1405
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterLiteProxSensor()V

    goto :goto_0

    .line 1406
    :cond_4
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1407
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1408
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1411
    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterTiltSensor()V

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_6

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1416
    :cond_6
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_7

    .line 1417
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1418
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensorForA71_5g()V

    .line 1419
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1423
    :cond_7
    return-void
.end method
