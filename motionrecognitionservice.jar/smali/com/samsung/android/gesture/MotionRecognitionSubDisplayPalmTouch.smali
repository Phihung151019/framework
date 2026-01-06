.class public Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;
.super Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
.source "MotionRecognitionSubDisplayPalmTouch.java"


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

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmTouchCnt:I

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmScreenOff:Z

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_PALM_COUNT:I

    .line 47
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    .line 55
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    .line 56
    return-void
.end method

.method private checkPalmTouchDown()Z
    .locals 3

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "palmTouchDown":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SUB_PALM_TOUCH] palmTouchDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PalmMotion"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return v0
.end method

.method private injectPalmTouchEvent([ILjava/lang/String;)V
    .locals 4
    .param p1, "data"    # [I
    .param p2, "s"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10032

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 298
    .local v0, "hubSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0, p1}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v1

    .line 300
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    const-string v2, "PalmMotion"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    const-string v3, "[EARSENSE_MOTION]injectSensorData failed (PalmTouchEvent) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_0
    return-void
.end method

.method private sendPalmTouchEvents(I)V
    .locals 6
    .param p1, "action"    # I

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 269
    .local v1, "data":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 270
    const/4 v2, 0x1

    const-string v3, "com.samsung.permission.PALM_MOTION"

    packed-switch p1, :pswitch_data_0

    .line 290
    return-void

    .line 281
    :pswitch_0
    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    if-eqz v4, :cond_0

    .line 282
    const-string v4, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 286
    :cond_0
    const v3, 0x247c1

    aput v3, v1, v2

    .line 287
    const-string v2, "[EARSENSE_MOTION] inject palm down"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->injectPalmTouchEvent([ILjava/lang/String;)V

    .line 288
    goto :goto_0

    .line 272
    :pswitch_1
    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmScreenOff:Z

    if-eqz v4, :cond_2

    .line 273
    :cond_1
    const-string v4, "com.samsung.android.motion.PALM_UP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 277
    :cond_2
    const v3, 0x347c1

    aput v3, v1, v2

    .line 278
    const-string v2, "[EARSENSE_MOTION] inject palm up"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->injectPalmTouchEvent([ILjava/lang/String;)V

    .line 279
    nop

    .line 292
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SUB_PALM_TOUCH] Intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PalmMotion"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPalmTouchCnt()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmTouchCnt:I

    return v0
.end method

.method public getThresholdMajorTouch()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    return v0
.end method

.method public getThresholdPalmCount()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_PALM_COUNT:I

    return v0
.end method

.method public initPalm()V
    .locals 2

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    .line 190
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSubScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSubScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    .line 191
    return-void
.end method

.method public isEnabledPalmTouch()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    return v0
.end method

.method public isReadyPalmTouch()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    return v0
.end method

.method public onPalmEvents(I)V
    .locals 2
    .param p1, "action"    # I

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->checkBootComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "PalmMotion"

    const-string v1, "[SUB_PALM_TOUCH] checkBootComplete is false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->sendPalmTouchEvents(I)V

    .line 264
    return-void
.end method

.method public palmDump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 100
    return-void
.end method

.method public processPalm()V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getFingerCnt()I

    move-result v0

    .line 212
    .local v0, "cntFinger":I
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    add-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 214
    .local v1, "BASE_TOUCH_VAR":F
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_PALM_COUNT:I

    const-string v3, "PalmMotion"

    if-ge v0, v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SUB_PALM_TOUCH] cntFinger "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " < THRESHOLD_PALM_COUNT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_PALM_COUNT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 219
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->checkPalmTouchDown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    .line 221
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    if-eqz v2, :cond_1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SUB_PALM_TOUCH] DOWN [FINGER_CNT: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "][BASE_TOUCH_VAR: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "][PalmFlag: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 224
    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->onPalmEvents(I)V

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    if-eqz v2, :cond_2

    .line 230
    const-string v2, "[SUB_PALM_TOUCH] UP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->onPalmEvents(I)V

    .line 233
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    .line 234
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    .line 236
    :cond_2
    return-void
.end method

.method public readyPalm()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmTouchCnt:I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateSubDisplayInfo()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmTouchCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmTouchCnt:I

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateSimpleReadyPalmInfo()V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    .line 177
    :cond_2
    return-void
.end method

.method public setEnabledPalmTouch(Z)V
    .locals 0
    .param p1, "mIsEnabledPalmTouch"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    .line 79
    return-void
.end method

.method public setPalmTouchDown(Z)V
    .locals 0
    .param p1, "mIsPalmTouchDown"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    .line 63
    return-void
.end method

.method public setReadyPalmTouch(Z)V
    .locals 0
    .param p1, "mIsReadyPalmTouch"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    .line 71
    return-void
.end method

.method public setThresholdMajorTouch(F)V
    .locals 0
    .param p1, "ThresholdMajorTouch"    # F

    .line 94
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    .line 95
    return-void
.end method

.method public setThresholdPalmCount(I)V
    .locals 0
    .param p1, "ThresholdPalmCount"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_PALM_COUNT:I

    .line 87
    return-void
.end method

.method public settingOnChanged()V
    .locals 5

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "settingSubDisplayPalmTouch":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string v3, "surface_palm_touch"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 109
    if-ne v0, v4, :cond_0

    .line 110
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    goto :goto_0

    .line 112
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    .line 115
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM] SETTINGS : [ SUB_PALM_TOUCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PalmMotion"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] ENABLED : [ SUB_TOUCH : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsEnabledPalmTouch:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM] ACCEPTED : SUB_PALM_CNT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->THRESHOLD_PALM_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public startPalm()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 129
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->readyPalm()V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->variableInitialize()V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->initPalm()V

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mPalmTouchCnt:I

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->update(II)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->processPalm()V

    .line 140
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 141
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsPalmTouchDown:Z

    .line 142
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;->mIsReadyPalmTouch:Z

    .line 144
    :cond_4
    return-void
.end method
