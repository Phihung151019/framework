.class public Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
.super Ljava/lang/Object;
.source "MotionRecognitionBrightnessHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessHandler"


# instance fields
.field private mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensor(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 30
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    .line 26
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    .line 28
    return-void
.end method


# virtual methods
.method public startWritingBrightness()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "BrightnessHandler"

    if-nez v0, :cond_0

    .line 51
    const-string v0, "not support Light Sensor "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    .line 55
    const-string v0, "This version doesn\'t support brightness handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_2

    .line 60
    const-string v0, "pmstemp: mDisplayManagerInternal : null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pmstemp: mDisplayManagerInternal : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_3

    .line 67
    const-string v0, "pmstemp: mDisplayManagerInternal: register  "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 71
    .local v0, "bright":[F
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    move-result v2

    .line 72
    .local v2, "brightness":F
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 74
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    const/high16 v5, 0x10000000

    invoke-static {v3, v5, v0}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 75
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inject initial brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v4, v0, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tempBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 77
    const-string v4, "initial brightness injectSensorData failed "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "bright":[F
    .end local v2    # "brightness":F
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_3
    return-void
.end method
