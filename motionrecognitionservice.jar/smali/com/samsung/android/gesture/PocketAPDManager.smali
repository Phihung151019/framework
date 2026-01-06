.class public Lcom/samsung/android/gesture/PocketAPDManager;
.super Ljava/lang/Object;
.source "PocketAPDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;
    }
.end annotation


# static fields
.field public static final APD_BAR:I = 0x1

.field public static final APD_DETECT_IN:I = 0x1

.field public static final APD_DETECT_OUT:I = 0x0

.field public static final APD_DUAL_FLIP:I = 0x5

.field public static final APD_FLIP:I = 0x2

.field public static final APD_FOLD:I = 0x3

.field public static final APD_LIGHT:I = 0x4

.field public static final APD_NONE:I = 0x0

.field public static final APD_REG_LIGHT_THD:I = 0x1f4

.field public static final APD_SHORT_TOUCHED_TIME_MS:I = 0x10

.field public static APD_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APD_UNREG_LIGHT_THD:I = 0x28a

.field public static final POCKET_MODE_IN_STATE:I = 0x3

.field public static final POPUP_NONE:I = 0x0

.field public static final POPUP_REASON_APD:I = 0x2

.field public static final POPUP_REASON_POCKETMODE:I = 0x1

.field public static final POPUP_TIMESTAMP_APD_MODE:I = 0x2

.field public static final POPUP_TIMESTAMP_POCKETMODE:I = 0x1

.field public static final POPUP_TIMESTAMP_SCREEN_ON_MODE:I = 0x0

.field public static final POPUP_TIMESTAMP_TOTAL:I = 0x4

.field public static final SEC_TIMESTAMP:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field public static mPopUpAPDEndTime:J

.field public static mPopUpAPDStartTime:J

.field public static mPopUpPocketModeEndTime:J

.field public static mPopUpPocketModeStartTime:J

.field public static mPopUpScreenOnStartTime:J

.field public static mPopUpTotalEndTime:J

.field public static mPopUpTotalStartTime:J

.field public static mShowAPDPopUpTime:J

.field public static mShowPocketModePopUpTime:J

.field public static mShowTotalPopUpTime:J

.field public static mTouchedTime:J

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager;

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static pocketAPDManager:Lcom/samsung/android/gesture/PocketAPDManager;

.field public static popUpState:I

.field private static ppm:Lcom/samsung/android/gesture/PocketProximityManager;

.field public static touchedCntTotal:I

.field public static touchedCntbyAPD:I

.field public static touchedCntbyBoth:I

.field public static touchedCntbyPocketMode:I

.field public static touchedShortCntTotal:I

.field public static touchedWithPalm:I

.field public static touchedWithPalmCntTotal:I


# instance fields
.field public APDLightEventListener:Landroid/hardware/SensorEventListener;

.field private apdEventData:I

.field private apdListener:Landroid/os/IBinder;

.field private isAPDEventReceived:Z

.field private mAPDFeatureLevel:I

.field public mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

.field private mContext:Landroid/content/Context;

.field private mFeatureLevel:I

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private mIsInitialized:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mlux:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAPDFeatureLevel(Lcom/samsung/android/gesture/PocketAPDManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmlux(Lcom/samsung/android/gesture/PocketAPDManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmlux(Lcom/samsung/android/gesture/PocketAPDManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 42
    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 43
    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 44
    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 45
    const-class v0, Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketAPDManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pocketAPDManager:Lcom/samsung/android/gesture/PocketAPDManager;

    .line 94
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APD_NONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APD_BAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APD_FLIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APD_FOLD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APD_LIGHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APD_DUAL_FLIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mFeatureLevel:I

    .line 39
    iput v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mIsInitialized:Z

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->isAPDEventReceived:Z

    .line 50
    iput v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->apdEventData:I

    .line 51
    iput v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    .line 91
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    .line 231
    new-instance v0, Lcom/samsung/android/gesture/PocketAPDManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketAPDManager$1;-><init>(Lcom/samsung/android/gesture/PocketAPDManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->apdListener:Landroid/os/IBinder;

    .line 270
    new-instance v0, Lcom/samsung/android/gesture/PocketAPDManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketAPDManager$2;-><init>(Lcom/samsung/android/gesture/PocketAPDManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->APDLightEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketAPDManager;
    .locals 1

    .line 103
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pocketAPDManager:Lcom/samsung/android/gesture/PocketAPDManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketAPDManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pocketAPDManager:Lcom/samsung/android/gesture/PocketAPDManager;

    .line 106
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pocketAPDManager:Lcom/samsung/android/gesture/PocketAPDManager;

    return-object v0
.end method


# virtual methods
.method public checkAPDType(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureLevel"    # I
    .param p3, "APDFeatureLevel"    # I

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mIsInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 145
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Fail to get mSensorManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10033

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mLightSensor:Landroid/hardware/Sensor;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 153
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Fail to get Light TYPE_LIGHT_CCT"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_2
    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-nez v0, :cond_3

    .line 159
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Fail to get mInputDeviceManager "

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 162
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mContext:Landroid/content/Context;

    .line 163
    iput p2, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mFeatureLevel:I

    .line 164
    iput p3, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    .line 165
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[APD] FeatureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mIsInitialized:Z

    .line 168
    return-void
.end method

.method public checkRegisterAPD()V
    .locals 2

    .line 202
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    if-eq v0, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketAPDManager;->registerAPD()V

    goto :goto_0

    .line 205
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    const/16 v1, 0x28a

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    if-ne v0, v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketAPDManager;->unregisterAPD()V

    .line 208
    :cond_1
    :goto_0
    return-void
.end method

.method public countInputTouch(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 389
    .local v0, "event":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 390
    .local v1, "N":I
    const/4 v2, 0x0

    .line 392
    .local v2, "palmstate":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 393
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 394
    const/4 v2, 0x1

    .line 396
    goto :goto_1

    .line 392
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    .end local v3    # "i":I
    :cond_1
    :goto_1
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    add-int/2addr v3, v2

    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    .line 401
    if-nez v0, :cond_2

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    goto/16 :goto_2

    .line 405
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    if-lez v5, :cond_4

    .line 406
    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalmCntTotal:I

    add-int/2addr v5, v4

    sput v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalmCntTotal:I

    .line 407
    sget-boolean v5, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-ne v5, v4, :cond_3

    .line 408
    sget-object v4, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP++ But Do Not Count! touchedWithPalm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " touchedWithPalmCntTotal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalmCntTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_3
    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    goto/16 :goto_2

    .line 411
    :cond_4
    if-ne v0, v4, :cond_9

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    if-nez v5, :cond_9

    .line 412
    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    add-int/2addr v5, v4

    sput v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    .line 413
    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    sub-long/2addr v5, v7

    sput-wide v5, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    .line 416
    sget-boolean v3, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-ne v3, v4, :cond_5

    .line 417
    sget-object v3, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP++, touchedCntTotal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTouchedTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_5
    sget-wide v5, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    const-wide/16 v7, 0x10

    cmp-long v3, v5, v7

    if-gez v3, :cond_6

    .line 421
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedShortCntTotal:I

    add-int/2addr v3, v4

    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedShortCntTotal:I

    .line 422
    sget-boolean v3, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-ne v3, v4, :cond_6

    .line 423
    sget-object v3, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP++ But Short Touch! mTouchedTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " touchedShortCntTotal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/gesture/PocketAPDManager;->touchedShortCntTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_6
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    if-ne v3, v4, :cond_7

    .line 427
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    add-int/2addr v3, v4

    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    goto :goto_2

    .line 429
    :cond_7
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    .line 430
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    add-int/2addr v3, v4

    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    goto :goto_2

    .line 432
    :cond_8
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    .line 433
    sget v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    add-int/2addr v3, v4

    sput v3, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    .line 436
    :cond_9
    :goto_2
    return-void
.end method

.method public getAPDEventData()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->apdEventData:I

    return v0
.end method

.method public initBlockedTouchInfo()V
    .locals 2

    .line 337
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    .line 338
    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    .line 339
    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    .line 340
    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    .line 341
    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalm:I

    .line 342
    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalmCntTotal:I

    .line 343
    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->touchedShortCntTotal:I

    .line 344
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpScreenOnStartTime:J

    .line 345
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeStartTime:J

    .line 346
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDStartTime:J

    .line 347
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeEndTime:J

    .line 348
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDEndTime:J

    .line 349
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mShowPocketModePopUpTime:J

    .line 350
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mShowAPDPopUpTime:J

    .line 351
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalStartTime:J

    .line 352
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalEndTime:J

    .line 353
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    .line 354
    sput-wide v0, Lcom/samsung/android/gesture/PocketAPDManager;->mTouchedTime:J

    .line 355
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 110
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    .line 114
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 115
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketLogManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->getInstance()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 122
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 129
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v0, :cond_2

    .line 130
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 135
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 136
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    if-nez v0, :cond_3

    .line 137
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketMotionManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_3
    return-void
.end method

.method public isAPDEventReceived()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->isAPDEventReceived:Z

    return v0
.end method

.method public printTouchData()V
    .locals 29

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "blockedratetotal":I
    const/4 v1, 0x0

    .line 361
    .local v1, "blockedratebypocketmode":I
    const/4 v2, 0x0

    .line 362
    .local v2, "blockedratebyapd":I
    const/4 v3, 0x0

    .line 364
    .local v3, "blockedratebyboth":I
    sget v4, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    if-lez v4, :cond_0

    .line 365
    sget v4, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    add-int/2addr v4, v5

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x64

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    div-int v0, v4, v5

    .line 366
    sget v4, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    mul-int/lit8 v4, v4, 0x64

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    div-int v1, v4, v5

    .line 367
    sget v4, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    mul-int/lit8 v4, v4, 0x64

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    div-int v2, v4, v5

    .line 368
    sget v4, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    mul-int/lit8 v4, v4, 0x64

    sget v5, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    div-int v3, v4, v5

    move v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    goto :goto_0

    .line 364
    :cond_0
    move v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    .line 370
    .end local v0    # "blockedratetotal":I
    .end local v1    # "blockedratebypocketmode":I
    .end local v2    # "blockedratebyapd":I
    .end local v3    # "blockedratebyboth":I
    .local v11, "blockedratetotal":I
    .local v12, "blockedratebypocketmode":I
    .local v13, "blockedratebyapd":I
    .local v14, "blockedratebyboth":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpScreenOnStartTime:J

    sub-long/2addr v0, v2

    .line 371
    .local v0, "screenOnDuration":J
    sget-wide v2, Lcom/samsung/android/gesture/PocketAPDManager;->mShowPocketModePopUpTime:J

    sget-wide v4, Lcom/samsung/android/gesture/PocketAPDManager;->mShowAPDPopUpTime:J

    add-long/2addr v2, v4

    sget-wide v4, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    sub-long/2addr v2, v4

    .line 372
    .local v2, "overlabTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 373
    const-wide/16 v2, 0x0

    .line 375
    :cond_1
    sget-boolean v4, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 376
    sget-object v4, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PopUp touch Count, Total : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pocketmode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", APD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PocketMode&APD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v4, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PopUp touch Blocked Rate, Total : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%, (pocketmode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%, APD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%, PocketMode&APD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v4, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PopUp Show Time, Screen on Duration : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, (Total.T : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, P.T : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mShowPocketModePopUpTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, A.T : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mShowAPDPopUpTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, O.T : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v4, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PopUp touch Count option, touchedWithPalmCntTotal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalmCntTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", touchedShortCntTotal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedShortCntTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    sget-object v4, Lcom/samsung/android/gesture/PocketAPDManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    move-object v6, v4

    new-instance v4, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;

    move v8, v5

    move-object v7, v6

    sget-wide v5, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpScreenOnStartTime:J

    move-object v9, v7

    sget v7, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntTotal:I

    move v10, v8

    sget v8, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyPocketMode:I

    move-object v15, v9

    sget v9, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyAPD:I

    move/from16 v16, v10

    sget v10, Lcom/samsung/android/gesture/PocketAPDManager;->touchedCntbyBoth:I

    sget-wide v17, Lcom/samsung/android/gesture/PocketAPDManager;->mShowPocketModePopUpTime:J

    sget-wide v19, Lcom/samsung/android/gesture/PocketAPDManager;->mShowAPDPopUpTime:J

    sget-wide v23, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    sget v25, Lcom/samsung/android/gesture/PocketAPDManager;->touchedWithPalmCntTotal:I

    sget v26, Lcom/samsung/android/gesture/PocketAPDManager;->touchedShortCntTotal:I

    move-wide/from16 v21, v2

    move-wide/from16 v27, v0

    move-object v0, v15

    move/from16 v1, v16

    move-wide/from16 v15, v27

    .end local v0    # "screenOnDuration":J
    .end local v2    # "overlabTime":J
    .local v15, "screenOnDuration":J
    .local v21, "overlabTime":J
    invoke-direct/range {v4 .. v26}, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;-><init>(JIIIIIIIIJJJJJII)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 384
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 385
    return-void
.end method

.method public registerAPD()V
    .locals 4

    .line 171
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Can\'t register because setting is off"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v0, :cond_1

    .line 177
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->apdListener:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    .line 179
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    .line 180
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APD] register APD Listener, lux : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    return-void
.end method

.method registerLightSensorForAPD()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Fail to get mSensorManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 214
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 218
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Fail to get Light TYPE_LIGHT_CCT"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10033

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mLightSensor:Landroid/hardware/Sensor;

    .line 220
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->APDLightEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 223
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Start Light Listener for APD"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setAPDEventData(I)V
    .locals 0
    .param p1, "result"    # I

    .line 441
    iput p1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->apdEventData:I

    return-void
.end method

.method public setAPDEventReceived(Z)V
    .locals 0
    .param p1, "isAPDEventReceived"    # Z

    .line 439
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->isAPDEventReceived:Z

    return-void
.end method

.method public setEndTimeEachMode(JI)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "mode"    # I

    .line 309
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 313
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeEndTime:J

    .line 314
    sget-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 315
    sget-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mShowPocketModePopUpTime:J

    sget-wide v5, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeEndTime:J

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeStartTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    sput-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mShowPocketModePopUpTime:J

    .line 316
    sput-wide v1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeStartTime:J

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 320
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDEndTime:J

    .line 321
    sget-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 322
    sget-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mShowAPDPopUpTime:J

    sget-wide v5, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDEndTime:J

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDStartTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    sput-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mShowAPDPopUpTime:J

    .line 323
    sput-wide v1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDStartTime:J

    goto :goto_0

    .line 326
    :cond_2
    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    .line 327
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalEndTime:J

    .line 328
    sget-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 329
    sget-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    sget-wide v5, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalEndTime:J

    sget-wide v7, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalStartTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    sput-wide v3, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    .line 330
    sput-wide v1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalStartTime:J

    .line 331
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total End Time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/samsung/android/gesture/PocketAPDManager;->mShowTotalPopUpTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_3
    :goto_0
    return-void
.end method

.method public setStartTimeEachMode(JI)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "mode"    # I

    .line 289
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    if-nez p3, :cond_1

    .line 293
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpScreenOnStartTime:J

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 296
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpPocketModeStartTime:J

    goto :goto_0

    .line 298
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 299
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpAPDStartTime:J

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 302
    sput-wide p1, Lcom/samsung/android/gesture/PocketAPDManager;->mPopUpTotalStartTime:J

    .line 303
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "TotalStartTime"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_4
    :goto_0
    return-void
.end method

.method public unregisterAPD()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v0, :cond_1

    .line 187
    iget v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDFeatureLevel:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->apdListener:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    .line 189
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;->DISABLED:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mAPDState:Lcom/samsung/android/gesture/PocketAPDManager$APD_STATE;

    .line 190
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APD] un-register APD Listener, lux : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mlux:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] REMOVE_POPUP Request by APD"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 195
    :cond_0
    sget v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    .line 198
    :cond_1
    return-void
.end method

.method unregisterLightSensorForAPD()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketAPDManager;->APDLightEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 228
    sget-object v0, Lcom/samsung/android/gesture/PocketAPDManager;->TAG:Ljava/lang/String;

    const-string v1, "[APD] Stop Light Listener for APD"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method
