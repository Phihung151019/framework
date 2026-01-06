.class public Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;
.super Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
.source "MotionRecognitionPalmTouch.java"


# static fields
.field private static final INJECT_PALM_DOWN:I = 0x247c1

.field private static final INJECT_PALM_UP:I = 0x347c1

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final TYPE_SENSORHUB:I = 0x10032


# instance fields
.field private BASE_SCREEN_WIDTH_TOUCH:F

.field private THRESHOLD_MAJOR_TOUCH:F

.field private THRESHOLD_PALM_COUNT:I

.field private mIsEnabledPalmScreenOff:Z

.field private mIsEnabledPalmTouch:Z

.field private mIsLargePalmTouchDown:Z

.field private mIsPalmTouchDown:Z

.field private mIsReadyPalmTouch:Z

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mPalmTouchCnt:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "palmData"    # Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    .line 58
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    .line 67
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    .line 68
    return-void
.end method

.method private checkLargePalmTouchDown()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPalmTouchDown(IF)Z
    .locals 4
    .param p1, "cntFinger"    # I
    .param p2, "BASE_TOUCH_VAR"    # F

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "palmTouchDown":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 294
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x1

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM_TOUCH] sumEccen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PalmMotion"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_TOUCH] varianceX: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " varianceY: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    return v0
.end method

.method private injectPalmTouchEvent([ILjava/lang/String;)V
    .locals 4
    .param p1, "data"    # [I
    .param p2, "s"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10032

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 372
    .local v0, "hubSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 373
    invoke-static {v0, p1}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v1

    .line 374
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    const-string v2, "PalmMotion"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    const-string v3, "[EARSENSE_MOTION]injectSensorData failed (PalmTouchEvent) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_0
    return-void
.end method

.method private sendPalmTouchEvents(I)V
    .locals 8
    .param p1, "action"    # I

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 328
    .local v1, "data":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 329
    const-string v2, "[PALM_TOUCH] Intent : "

    const/4 v3, 0x1

    const-string v4, "PalmMotion"

    const-string v5, "com.samsung.android.motion.PALM_DOWN"

    const-string v6, "com.samsung.permission.PALM_MOTION"

    packed-switch p1, :pswitch_data_0

    .line 364
    return-void

    .line 350
    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v3, "com.samsung.android.motion.PALM_SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    if-eqz v3, :cond_4

    .line 358
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 360
    const-string v3, "[PALM_TOUCH] mIsEnabledPalmScreenOff is not set. mIsEnabledPalmTouch is set."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :pswitch_1
    iget-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    if-eqz v7, :cond_1

    .line 341
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 345
    :cond_1
    const v5, 0x247c1

    aput v5, v1, v3

    .line 346
    const-string v3, "[EARSENSE_MOTION] inject palm down"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->injectPalmTouchEvent([ILjava/lang/String;)V

    .line 347
    goto :goto_0

    .line 331
    :pswitch_2
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    if-eqz v5, :cond_3

    .line 332
    :cond_2
    const-string v5, "com.samsung.android.motion.PALM_UP"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 336
    :cond_3
    const v5, 0x347c1

    aput v5, v1, v3

    .line 337
    const-string v3, "[EARSENSE_MOTION] inject palm up"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->injectPalmTouchEvent([ILjava/lang/String;)V

    .line 338
    nop

    .line 366
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPalmTouchCnt()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    return v0
.end method

.method public getThresholdMajorTouch()F
    .locals 1

    .line 115
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    return v0
.end method

.method public getThresholdPalmCount()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    return v0
.end method

.method public initPalm()V
    .locals 2

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 230
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 231
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    .line 232
    return-void
.end method

.method public isEnabledPalmScreenOff()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    return v0
.end method

.method public isEnabledPalmTouch()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    return v0
.end method

.method public isReadyPalmTouch()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    return v0
.end method

.method public onPalmEvents(I)V
    .locals 2
    .param p1, "action"    # I

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->checkBootComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "PalmMotion"

    const-string v1, "[PALM_TOUCH] checkBootComplete is false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 322
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->sendPalmTouchEvents(I)V

    .line 323
    return-void
.end method

.method public palmDump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THRESHOLD_PALM_COUNT            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THRESHOLD_MAJOR_TOUCH           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public processPalm()V
    .locals 8

    .line 251
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getFingerCnt()I

    move-result v0

    .line 253
    .local v0, "cntFinger":I
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    add-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 255
    .local v1, "BASE_TOUCH_VAR":F
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    const-string v3, "PalmMotion"

    if-ge v0, v2, :cond_0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_TOUCH] cntFinger "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " < THRESHOLD_PALM_COUNT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 260
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    const-string v4, "]"

    const-string v5, "][PalmFlag: "

    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->checkPalmTouchDown(IF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 262
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    if-eqz v2, :cond_1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM_TOUCH] DOWN [FINGER_CNT: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "][BASE_TOUCH_VAR: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 265
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->onPalmEvents(I)V

    .line 270
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    if-nez v2, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->checkLargePalmTouchDown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 272
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    if-eqz v2, :cond_2

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM_TOUCH] Large Palm [FINGER_CNT: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 274
    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->onPalmEvents(I)V

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    if-eqz v2, :cond_4

    .line 281
    :cond_3
    const-string v2, "[PALM_TOUCH] UP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->onPalmEvents(I)V

    .line 284
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 285
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 286
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 288
    :cond_4
    return-void
.end method

.method public readyPalm()V
    .locals 3

    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateScreenInfo()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateSimpleReadyPalmInfo()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 213
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 216
    :cond_3
    return-void
.end method

.method public setEnabledPalmScreenOff(Z)V
    .locals 0
    .param p1, "mIsEnabledPalmScreenOff"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    .line 104
    return-void
.end method

.method public setEnabledPalmTouch(Z)V
    .locals 0
    .param p1, "mIsEnabledPalmTouch"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    .line 96
    return-void
.end method

.method public setLargePalmTouchDown(Z)V
    .locals 0
    .param p1, "mIsLargePalmTouchDown"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 84
    return-void
.end method

.method public setPalmTouchDown(Z)V
    .locals 0
    .param p1, "mIsPalmTouchDown"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 76
    return-void
.end method

.method public setReadyPalmTouch(Z)V
    .locals 0
    .param p1, "mIsReadyPalmTouch"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 88
    return-void
.end method

.method public setThresholdMajorTouch(F)V
    .locals 0
    .param p1, "ThresholdMajorTouch"    # F

    .line 119
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    .line 120
    return-void
.end method

.method public setThresholdPalmCount(I)V
    .locals 0
    .param p1, "ThresholdPalmCount"    # I

    .line 111
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    .line 112
    return-void
.end method

.method public settingOnChanged()V
    .locals 7

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "settingPalmTouch":I
    const/4 v1, 0x0

    .line 133
    .local v1, "settingPalmScreenOff":I
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "surface_palm_touch"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 135
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "palm_touch_to_sleep"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 138
    if-ne v0, v4, :cond_0

    .line 139
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    goto :goto_0

    .line 141
    :cond_0
    iput-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    .line 152
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM] SETTINGS : [ PALM_TOUCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PALM_TOUCH_TO_SLEEP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PalmMotion"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM] ENABLED : [ TOUCH : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", PALM_SCREEN_OFF : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM] ACCEPTED : PALM_CNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", M_TOUCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public startPalm()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 167
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->readyPalm()V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->variableInitialize()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->initPalm()V

    .line 172
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getPalmTouchCnt()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->update(II)V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->processPalm()V

    .line 176
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 177
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 179
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 181
    :cond_4
    return-void
.end method
