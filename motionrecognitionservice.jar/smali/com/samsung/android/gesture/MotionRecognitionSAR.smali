.class public Lcom/samsung/android/gesture/MotionRecognitionSAR;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;
    }
.end annotation


# static fields
.field private static final CLEAR_LEFT_RIGHT_CH:I = 0x64

.field private static final FOLDING_ANGLE_180:I = 0xb4

.field private static final GRIP_DETECT:I = 0x0

.field private static final GRIP_NONE:I = -0x1

.field private static final GRIP_RELEASE:I = 0x5

.field private static final GRIP_UNKNOWN_STATE:I = 0x12c

.field private static final INJECT_GRIP_SAR_MOTION_INIT:F = 300.0f

.field private static final INJECT_GRIP_SAR_MOTION_TRIGGER:F = 200.0f

.field private static final INJECT_GRIP_TRIGGER:F = 100.0f

.field private static final MAIN_TUNER_GRIP_1CH:J = 0x200000000L

.field private static final MAIN_TUNER_GRIP_2CH:J = 0x400000000L

.field private static final RECEIVER_MEDIA_EXTRA:Ljava/lang/String; = "android.samsung.media.extra.receiver"

.field private static final RECEIVER_MEDIA_SAR:Ljava/lang/String; = "android.samsung.media.action.receiver_sar"

.field private static final SARDEVICE_CP:Ljava/lang/String; = "com.sec.intent.action.SARDEVICE_CP"

.field private static final SAR_ALL:I = 0x2f

.field private static final SAR_DEVICES_MASK:J = 0x400868092083L

.field private static final SAR_DEVICE_FOLDING:J = 0x400000000000L

.field private static final SAR_DEVICE_GRIP:J = 0x1L

.field private static final SAR_DEVICE_GRIP_2CH:J = 0x10000L

.field private static final SAR_DEVICE_GRIP_SUB:J = 0x80000L

.field private static final SAR_DEVICE_GRIP_SUB2:J = 0x8000000L

.field private static final SAR_DEVICE_GRIP_SUB2_MULTI_CH:J = 0x800000000L

.field private static final SAR_DEVICE_GRIP_SUB3:J = 0x20000000L

.field private static final SAR_DEVICE_GRIP_SUB_MULTI_CH:J = 0x80L

.field private static final SAR_DEVICE_GRIP_WIFI:J = 0x2000L

.field private static final SAR_DEVICE_GRIP_WIFI_MULTI_CH:J = 0x40000000L

.field private static final SAR_DEVICE_PROX:J = 0x2L

.field private static final SAR_FOLDING:I = 0x2e

.field private static final SAR_GRIP:I = 0x0

.field private static final SAR_GRIP_2CH:I = 0x10

.field private static final SAR_GRIP_SUB:I = 0x13

.field private static final SAR_GRIP_SUB2:I = 0x1b

.field private static final SAR_GRIP_SUB2_MULTI_CH:I = 0x23

.field private static final SAR_GRIP_SUB3:I = 0x1d

.field private static final SAR_GRIP_SUB_MULTI_CH:I = 0x7

.field private static final SAR_GRIP_WIFI:I = 0xd

.field private static final SAR_GRIP_WIFI_MULTI_CH:I = 0x1e

.field private static final SAR_NAMES:[Ljava/lang/String;

.field private static final SAR_PROX:I = 0x1

.field private static final SET_LEFT_CH:I = 0x66

.field private static final SET_RIGHT_CH:I = 0x65

.field private static final SUB1_TUNER_GRIP_1CH:J = 0x10000000000L

.field private static final SUB1_TUNER_GRIP_2CH:J = 0x20000000000L

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final TA_USB_STATE:J = 0x8000L

.field private static final USB_OTG_CABLE_CONNECTION:Ljava/lang/String; = "com.samsung.UsbOtgCableConnection"

.field private static instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# instance fields
.field private mActiveDevices:J

.field private final mContext:Landroid/content/Context;

.field private mEnabledGripMotion:Z

.field private mFoldingSAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

.field private mGripMotionSensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

.field private final mIsKoreaPhoneType:Z

.field mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field private mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

.field private final mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

.field private mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

.field private mRequestedChannelList:J

.field private final mSarReceiver:Landroid/content/BroadcastReceiver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field private final mTriggerListener:Landroid/hardware/TriggerEventListener;

.field mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGripMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIsKoreaPhoneType:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnabledGripMotion(Lcom/samsung/android/gesture/MotionRecognitionSAR;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallSARDeviceID(Lcom/samsung/android/gesture/MotionRecognitionSAR;JLjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->callSARDeviceID(JLjava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableGripMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->enableGripMotionSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->setTransmitPower(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSysfs(Lcom/samsung/android/gesture/MotionRecognitionSAR;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->writeSysfs(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 48

    .line 77
    const-string v46, ""

    const-string v47, "SARFOLDING"

    const-string v1, "GRIP"

    const-string v2, "PROX"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, "SUBMULTI"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, "WIFI"

    const-string v15, ""

    const-string v16, ""

    const-string v17, "GRIP2CH"

    const-string v18, ""

    const-string v19, ""

    const-string v20, "SUB"

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, "SUB2"

    const-string v29, ""

    const-string v30, "SUB3"

    const-string v31, "WIFIMULTI"

    const-string v32, ""

    const-string v33, ""

    const-string v34, "MAINTUNERGRIP1CH"

    const-string v35, "MAINTUNERGRIP2CH"

    const-string v36, "SUB2MULTI"

    const-string v37, ""

    const-string v38, ""

    const-string v39, ""

    const-string v40, ""

    const-string v41, "SUB1TUNERGRIP1CH"

    const-string v42, "SUB1TUNERGRIP1CH"

    const-string v43, ""

    const-string v44, ""

    const-string v45, ""

    filled-new-array/range {v1 .. v47}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    .line 152
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    .line 153
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    .line 571
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    .line 572
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mFoldingSAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

    .line 573
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 574
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 575
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 576
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 577
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 595
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSarReceiver:Landroid/content/BroadcastReceiver;

    .line 1061
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$4;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mTriggerListener:Landroid/hardware/TriggerEventListener;

    .line 903
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    .line 904
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    .line 905
    const-string v0, "[SAR] MotionRecognitionSAR()"

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->isKoreaPhoneType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIsKoreaPhoneType:Z

    .line 909
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "sensorSarThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 910
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 911
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    .line 913
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_7

    .line 914
    const-string v2, "[SAR] Check sensors."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 917
    .local v2, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const v3, 0x10018

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 918
    const v5, 0x10064

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 919
    const v6, 0x10065

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 920
    const v7, 0x10066

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 921
    const v8, 0x10027

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Integer;

    move-result-object v4

    .line 917
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 923
    .local v4, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/gesture/MotionRecognitionSAR$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 924
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 925
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 927
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ", "

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 928
    .local v7, "sensor":Landroid/hardware/Sensor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SAR] Check: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-direct {p0, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->registerGripSensor(Landroid/hardware/Sensor;)V

    .line 930
    .end local v7    # "sensor":Landroid/hardware/Sensor;
    goto :goto_0

    .line 932
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    .line 933
    .local v6, "prox":Landroid/hardware/Sensor;
    if-eqz v6, :cond_1

    .line 934
    invoke-direct {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->isSupportProxSar(Landroid/hardware/Sensor;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 935
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v7, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 936
    .local v3, "gripSensor":Landroid/hardware/Sensor;
    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    invoke-direct {v7, p0, v6, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    .line 937
    const-string v7, "[SAR] Sensor configuration for PROX is done."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v3    # "gripSensor":Landroid/hardware/Sensor;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x24

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 942
    .local v3, "folding":Landroid/hardware/Sensor;
    if-eqz v3, :cond_2

    .line 943
    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

    invoke-direct {v7, p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;)V

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mFoldingSAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

    .line 944
    const-string v7, "[SAR] Sensor configuration for FoldingSAR is done."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    .line 948
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    .line 949
    iput-wide v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    .line 951
    iget-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIsKoreaPhoneType:Z

    if-nez v7, :cond_6

    .line 952
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const v9, 0x1006b

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    .line 953
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_3

    .line 954
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    .line 957
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_4

    .line 958
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAR] Motion for Grip: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 960
    :cond_4
    const-string v7, "[SAR] Motion for Grip: Not supported."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const v8, 0x1006d

    invoke-virtual {v7, v8, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v7

    .line 964
    .local v7, "gripNotifierSensor":Landroid/hardware/Sensor;
    if-eqz v7, :cond_5

    .line 965
    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    .line 978
    .local v8, "gripNotifierListener":Landroid/hardware/SensorEventListener;
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8, v7, v10, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v9

    .line 981
    .local v9, "gripNotifierEnable":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SAR] Enable grip notifier sensor : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v7    # "gripNotifierSensor":Landroid/hardware/Sensor;
    .end local v8    # "gripNotifierListener":Landroid/hardware/SensorEventListener;
    .end local v9    # "gripNotifierEnable":Z
    :cond_5
    goto :goto_2

    .line 984
    :cond_6
    const-string v7, "[SAR] Not support Grip Unknown Mode (KOR_PHONE)"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v2    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "folding":Landroid/hardware/Sensor;
    .end local v4    # "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v6    # "prox":Landroid/hardware/Sensor;
    :cond_7
    :goto_2
    const-string v2, "[SAR] Sensor configuration is done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->setupIntentFilter()V

    .line 991
    const-string v2, "[SAR] SarService is ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void
.end method

.method private callSARDeviceID(JLjava/lang/String;II)V
    .locals 21
    .param p1, "deviceID"    # J
    .param p3, "callAction"    # Ljava/lang/String;
    .param p4, "slot"    # I
    .param p5, "deviceIDExt"    # I

    .line 680
    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    const-string v0, "on"

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 681
    .local v5, "on":Z
    if-lez v3, :cond_0

    .line 682
    int-to-long v6, v3

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long v6, p1, v6

    .end local p1    # "deviceID":J
    .local v6, "deviceID":J
    goto :goto_0

    .line 681
    .end local v6    # "deviceID":J
    .restart local p1    # "deviceID":J
    :cond_0
    move-wide/from16 v6, p1

    .line 684
    .end local p1    # "deviceID":J
    .restart local v6    # "deviceID":J
    :goto_0
    iget-wide v8, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    .line 685
    .local v8, "chlist":J
    iget-wide v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    .line 686
    .local v10, "activeIds":J
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v12, ""

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 687
    .local v12, "sbDevices":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    move v13, v0

    .local v13, "type":I
    :goto_1
    const/16 v0, 0x2f

    if-ge v13, v0, :cond_10

    .line 688
    const-wide/16 v14, 0x1

    shl-long/2addr v14, v13

    .line 689
    .local v14, "sar_type":J
    and-long v16, v14, v6

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-eqz v0, :cond_e

    .line 690
    sparse-switch v13, :sswitch_data_0

    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .local v16, "on":Z
    .local v17, "deviceID":J
    goto/16 :goto_9

    .line 750
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :sswitch_0
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mFoldingSAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

    if-eqz v0, :cond_3

    .line 751
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge v13, v0, :cond_1

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    :cond_1
    if-eqz v5, :cond_2

    .line 755
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mFoldingSAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->enable()V

    .line 756
    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    or-long/2addr v3, v14

    iput-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    move/from16 v16, v5

    move-wide/from16 v17, v6

    goto/16 :goto_9

    .line 758
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mFoldingSAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->disable()V

    .line 759
    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    move-wide/from16 v16, v3

    not-long v3, v14

    and-long v3, v16, v3

    iput-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    move/from16 v16, v5

    move-wide/from16 v17, v6

    goto/16 :goto_9

    .line 750
    :cond_3
    move/from16 v16, v5

    move-wide/from16 v17, v6

    goto/16 :goto_9

    .line 717
    :sswitch_1
    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 718
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 719
    .local v4, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    move-object/from16 p1, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->getSarDevice(I)J

    move-result-wide v16

    cmp-long v16, v16, v14

    if-nez v16, :cond_6

    .line 720
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ge v13, v0, :cond_4

    .line 721
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v5

    .end local v5    # "on":Z
    .restart local v16    # "on":Z
    :try_start_2
    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v13

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 733
    .end local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v6

    goto :goto_5

    .end local v16    # "on":Z
    .restart local v5    # "on":Z
    :catchall_1
    move-exception v0

    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "on":Z
    .restart local v16    # "on":Z
    goto :goto_5

    .line 720
    .end local v16    # "on":Z
    .restart local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .restart local v5    # "on":Z
    :cond_4
    move/from16 v16, v5

    .line 723
    .end local v5    # "on":Z
    .restart local v16    # "on":Z
    :goto_3
    if-eqz v16, :cond_5

    .line 724
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->enable(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 725
    move-wide/from16 v17, v6

    .end local v6    # "deviceID":J
    .restart local v17    # "deviceID":J
    :try_start_4
    iget-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    or-long/2addr v5, v14

    iput-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    goto :goto_4

    .line 733
    .end local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .end local v17    # "deviceID":J
    .restart local v6    # "deviceID":J
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v6

    .end local v6    # "deviceID":J
    .restart local v17    # "deviceID":J
    goto :goto_5

    .line 728
    .end local v17    # "deviceID":J
    .restart local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .restart local v6    # "deviceID":J
    :cond_5
    move-wide/from16 v17, v6

    .end local v6    # "deviceID":J
    .restart local v17    # "deviceID":J
    const/4 v0, 0x1

    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->disable(II)V

    .line 729
    iget-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    move-object/from16 p2, v4

    move-wide/from16 v19, v5

    .end local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .local p2, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    not-long v4, v14

    and-long v4, v19, v4

    iput-wide v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    goto :goto_4

    .line 719
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .end local p2    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .restart local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :cond_6
    move-object/from16 p2, v4

    move/from16 v16, v5

    move-wide/from16 v17, v6

    .line 732
    .end local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    :goto_4
    move-object/from16 v0, p1

    move/from16 v5, v16

    move-wide/from16 v6, v17

    goto :goto_2

    .line 733
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :cond_7
    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    monitor-exit v3

    .line 734
    goto/16 :goto_9

    .line 733
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :catchall_3
    move-exception v0

    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 736
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :sswitch_2
    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    if-eqz v0, :cond_f

    .line 737
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge v13, v0, :cond_8

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    :cond_8
    if-eqz v16, :cond_9

    .line 741
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->enable(I)V

    .line 742
    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    or-long/2addr v3, v14

    iput-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    goto/16 :goto_9

    .line 744
    :cond_9
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->disable(I)V

    .line 745
    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    not-long v5, v14

    and-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    goto/16 :goto_9

    .line 696
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :sswitch_3
    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 697
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 698
    .restart local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->getSarDevice(I)J

    move-result-wide v6

    cmp-long v6, v6, v14

    if-nez v6, :cond_c

    .line 699
    sget-object v6, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v13, v6, :cond_a

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    :cond_a
    if-eqz v16, :cond_b

    .line 703
    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->enable(II)V

    .line 704
    iget-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    or-long/2addr v5, v14

    iput-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    move-object v7, v3

    goto :goto_7

    .line 706
    :cond_b
    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->disable(II)V

    .line 707
    iget-wide v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v7, v3

    not-long v2, v14

    and-long/2addr v2, v5

    :try_start_6
    iput-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    goto :goto_7

    .line 698
    :cond_c
    move-object v7, v3

    .line 710
    .end local v4    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :goto_7
    move/from16 v2, p4

    move-object v3, v7

    goto :goto_6

    .line 711
    :cond_d
    move-object v7, v3

    monitor-exit v7

    .line 712
    goto :goto_9

    .line 711
    :catchall_5
    move-exception v0

    move-object v7, v3

    :goto_8
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_8

    .line 689
    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :cond_e
    move/from16 v16, v5

    move-wide/from16 v17, v6

    .line 687
    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .end local v14    # "sar_type":J
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    :cond_f
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v5, v16

    move-wide/from16 v6, v17

    goto/16 :goto_1

    .end local v16    # "on":Z
    .end local v17    # "deviceID":J
    .restart local v5    # "on":Z
    .restart local v6    # "deviceID":J
    :cond_10
    move/from16 v16, v5

    move-wide/from16 v17, v6

    .line 768
    .end local v5    # "on":Z
    .end local v6    # "deviceID":J
    .end local v13    # "type":I
    .restart local v16    # "on":Z
    .restart local v17    # "deviceID":J
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 769
    const-string v0, "MotionRecognitionService"

    const-string v2, "[SAR] callSARDeviceID does not support this ID"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_11
    const-wide v2, 0x400868092083L

    if-nez v16, :cond_12

    .line 772
    iget-wide v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    and-long v2, v17, v2

    not-long v2, v2

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    .line 773
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 774
    const-string v0, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] callSARDeviceID Off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 777
    :cond_12
    iget-wide v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    and-long v2, v17, v2

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    .line 778
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 779
    const-string v0, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] callSARDeviceID On"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_13
    :goto_a
    const-string v0, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] callSARDeviceID IDs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mRequestedChannelList:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") , Active IDs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 783
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mActiveDevices:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0xd -> :sswitch_3
        0x10 -> :sswitch_1
        0x13 -> :sswitch_3
        0x1b -> :sswitch_3
        0x1d -> :sswitch_3
        0x1e -> :sswitch_1
        0x23 -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 857
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 860
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object v0
.end method

.method private enableGripMotionSensor()V
    .locals 6

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 1038
    return-void

    .line 1041
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    const/4 v1, 0x1

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mTriggerListener:Landroid/hardware/TriggerEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 1043
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    .line 1044
    const-string v0, "[SAR] Trigger start (enable)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 1047
    .local v0, "type":I
    const v3, 0x1006b

    if-ne v0, v3, :cond_3

    .line 1048
    new-array v1, v1, [F

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 1049
    .local v1, "data":[F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SAR] setOperationParameter SBM INJECT_GRIP_SAR_MOTION_INIT: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    const/high16 v4, 0x10000000

    invoke-static {v3, v4, v1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 1052
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1053
    const-string v4, "[SAR] injectSensorData failed "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .end local v1    # "data":[F
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_2
    goto :goto_0

    .line 1056
    :cond_3
    const-string v1, "[SAR] already Triggered"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .end local v0    # "type":I
    :goto_0
    return-void
.end method

.method private getDeviceName(J)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # J

    .line 1466
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_0
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1467
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1468
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSAR;->SAR_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 1466
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    .end local v0    # "type":I
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .locals 2

    .line 867
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-nez v0, :cond_0

    .line 868
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR] MotionRecognitionSAR is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object v0
.end method

.method private isKoreaPhoneType()Z
    .locals 4

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MotionRecognitionService"

    if-eqz v0, :cond_0

    .line 1009
    const-string v0, "[SAR] Device type is Tablet"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v1

    .line 1012
    :cond_0
    const-string v0, "[SAR] Device type is phone"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v0, "ro.csc.country_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "countryCode":Ljava/lang/String;
    const-string v3, "KOREA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1016
    const-string v1, "[SAR] Country code is KOREA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v1, 0x1

    return v1

    .line 1019
    :cond_1
    return v1
.end method

.method private isSupportProxSar(Landroid/hardware/Sensor;)Z
    .locals 4
    .param p1, "proximitySensor"    # Landroid/hardware/Sensor;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] ProximitySensor Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Palm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ear Hover Proximity Lite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    return v2

    .line 1025
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "A908"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    const-string v0, "[SAR] Prox SAR for R3"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return v2

    .line 1029
    :cond_2
    const-string v0, "[SAR] This type doesn\'t support Prox SAR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$new$0(Ljava/util/List;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p0, "filter"    # Ljava/util/List;
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 924
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerGripSensor(Landroid/hardware/Sensor;)V
    .locals 14
    .param p1, "s"    # Landroid/hardware/Sensor;

    .line 813
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 814
    .local v0, "type":I
    const v1, 0x10018

    if-ne v0, v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_0

    .line 816
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x10000

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JJ)V

    move-object v9, v3

    iput-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    goto :goto_0

    .line 815
    :cond_0
    move-object v9, p0

    .line 818
    :goto_0
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 819
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;

    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 820
    .local v1, "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 821
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_1
    move-object v9, p0

    const v1, 0x10064

    if-ne v0, v1, :cond_3

    .line 822
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_2

    .line 823
    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const-wide/32 v10, 0x80000

    const-wide/16 v12, 0x80

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JJ)V

    iput-object v8, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 825
    :cond_2
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 826
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;

    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 827
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 828
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_3
    const v1, 0x10065

    if-ne v0, v1, :cond_5

    .line 829
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_4

    .line 830
    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const-wide/32 v10, 0x8000000

    const-wide v12, 0x800000000L

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JJ)V

    iput-object v8, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 832
    :cond_4
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 833
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;

    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 834
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 835
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_5
    const v1, 0x10066

    if-ne v0, v1, :cond_7

    .line 836
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_6

    .line 837
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const-wide/32 v2, 0x20000000

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;J)V

    iput-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 839
    :cond_6
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 840
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;

    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 841
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x10027

    if-ne v1, v2, :cond_9

    .line 843
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_8

    .line 844
    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const-wide/16 v10, 0x2000

    const-wide/32 v12, 0x40000000

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JJ)V

    iput-object v8, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 846
    :cond_8
    iget-object v1, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 847
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;

    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 848
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, v9, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_9
    :goto_1
    return-void
.end method

.method private setTransmitPower(JZ)V
    .locals 9
    .param p1, "device"    # J
    .param p3, "enable"    # Z

    .line 787
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_0

    .line 788
    const-string v0, "[SAR] transmitPower Try to get SemTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    if-nez v0, :cond_1

    .line 792
    const-string v0, "[SAR] transmitPower SemTelephonyService is null."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void

    .line 795
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "SET"

    goto :goto_0

    :cond_2
    const-string v0, "CLEAR"

    .line 797
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    const-wide v2, 0x200000000L

    cmp-long v2, p1, v2

    const-string v3, ") : "

    const-string v4, " ("

    const-string v5, " "

    const-string v6, "[SAR] "

    if-eqz v2, :cond_4

    const-wide v7, 0x400000000L

    cmp-long v2, p1, v7

    if-eqz v2, :cond_4

    const-wide v7, 0x10000000000L

    cmp-long v2, p1, v7

    if-eqz v2, :cond_4

    const-wide v7, 0x20000000000L

    cmp-long v2, p1, v7

    if-eqz v2, :cond_4

    const-wide v7, 0x800000000L

    cmp-long v2, p1, v7

    if-eqz v2, :cond_4

    const-wide v7, 0x400000000000L

    cmp-long v2, p1, v7

    if-nez v2, :cond_3

    goto :goto_1

    .line 803
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    long-to-int v7, p1

    invoke-interface {v2, v7, p3}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerWithFlag(IZ)Z

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->getDeviceName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 800
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->getDeviceName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_2
    goto :goto_3

    .line 806
    :catch_0
    move-exception v2

    .line 807
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "[SAR] RemoteException occurs in transmitPower"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private setupIntentFilter()V
    .locals 8

    .line 995
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 996
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v0, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 999
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1002
    const-string v0, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSarReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1004
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR] Intent registration is done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method

.method private writeSysfs(Ljava/lang/String;I)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 583
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 585
    const/16 v1, 0x31

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 587
    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 589
    :goto_0
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EARJACK] write state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 592
    .end local v0    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 583
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "state":I
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 590
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .restart local p1    # "file":Ljava/lang/String;
    .restart local p2    # "state":I
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 593
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1103
    :try_start_0
    const-string v0, "\n===== SAR Service Previous Registrations ====="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    const-string v0, "===== SAR + RCV Intent ====="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    const-string v0, "\n===== Latest SAR Intent ======"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->miniDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    monitor-exit p0

    return-void

    .line 1102
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public enableSARDevice(ZJII)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "deviceId"    # J
    .param p4, "slot"    # I
    .param p5, "extId"    # I

    .line 877
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;

    move-object v2, p0

    move v6, p1

    move-wide v3, p2

    move v7, p4

    move v5, p5

    .end local p1    # "enable":Z
    .end local p2    # "deviceId":J
    .end local p4    # "slot":I
    .end local p5    # "extId":I
    .local v3, "deviceId":J
    .local v5, "extId":I
    .local v6, "enable":Z
    .local v7, "slot":I
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JIZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 877
    .end local v3    # "deviceId":J
    .end local v5    # "extId":I
    .end local v6    # "enable":Z
    .end local v7    # "slot":I
    .restart local p1    # "enable":Z
    .restart local p2    # "deviceId":J
    .restart local p4    # "slot":I
    .restart local p5    # "extId":I
    :cond_0
    move v6, p1

    move-wide v3, p2

    move v7, p4

    move v5, p5

    .line 900
    .end local p1    # "enable":Z
    .end local p2    # "deviceId":J
    .end local p4    # "slot":I
    .end local p5    # "extId":I
    .restart local v3    # "deviceId":J
    .restart local v5    # "extId":I
    .restart local v6    # "enable":Z
    .restart local v7    # "slot":I
    :goto_0
    return-void
.end method

.method public updateSpeakerStatus(Z)V
    .locals 0
    .param p1, "speaker"    # Z

    .line 1100
    return-void
.end method
