.class public Lcom/android/server/ssrm/DynamicLoadDetector;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MONITORING_TEMP:I = 0x154

.field static final MSG_TYPE_LOAD_DETECTED:I = 0x2

.field static final MSG_TYPE_RESTART_LOAD_DETECT:I = 0x3

.field static final MSG_TYPE_START_MONITORING:I = 0x1

.field static final TAG:Ljava/lang/String;

.field static mSiopShift:Z

.field static sHandler:Landroid/os/Handler;


# instance fields
.field final APP_START_DELAY:I

.field MAX_SHIFT_TIME:J

.field final RESTART_MONITORING_DELAY:I

.field final SINGLE_BOOST_SIOP_SHIFT_TIMEOUT:I

.field final SIOP_SHIFT_TIMEOUT:I

.field final TYPE_CPU:I

.field final TYPE_GPU:I

.field final TYPE_NONE:I

.field fakeCount:I

.field mContext:Landroid/content/Context;

.field mForegroundPackageName:Ljava/lang/String;

.field mIsFirstShift:Z

.field mIsGpuSiopTableExist:Z

.field mIsPIDUsed:Z

.field mIsTempSatisfied:Z

.field mIsTimeout:Z

.field mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

.field mNativeMonitoringOn:Z

.field private mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

.field mShiftStartTime:J

.field mShiftTotalTime:J

.field mSiopShiftRunnable:Ljava/lang/Runnable;

.field mTemperatureCheckRunnable:Ljava/lang/Runnable;

.field mTimeInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->APP_START_DELAY:I

    .line 43
    const v0, 0x41eb0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->SIOP_SHIFT_TIMEOUT:I

    .line 45
    const v0, 0x15f90

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->SINGLE_BOOST_SIOP_SHIFT_TIMEOUT:I

    .line 47
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->RESTART_MONITORING_DELAY:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->fakeCount:I

    .line 51
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    .line 53
    const-wide/32 v1, 0x124f80

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    .line 55
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 57
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 59
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsGpuSiopTableExist:Z

    .line 95
    new-instance v1, Lcom/android/server/ssrm/DynamicLoadDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$2;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 146
    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_NONE:I

    .line 148
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_CPU:I

    .line 150
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_GPU:I

    .line 156
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    .line 286
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 307
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    .line 311
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$3;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$3;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/ssrm/LoadDetectMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    .line 69
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$1;

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector$1;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    .line 88
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    .line 91
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    .line 92
    .local v0, "eventManager":Lcom/android/server/ssrm/common/EventManager;
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 93
    return-void
.end method

.method private pauseLoadDetect()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->pauseLoadDetect()V

    .line 399
    return-void
.end method

.method public static reportLoadState(I)V
    .locals 2
    .param p0, "state"    # I

    .line 405
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 408
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 409
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static reportSingleBoostState(I)V
    .locals 2
    .param p0, "state"    # I

    .line 416
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 417
    return-void

    .line 420
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 421
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 422
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 423
    if-nez p0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 427
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private stopMonitoring()V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 358
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(Z)V

    .line 364
    :cond_1
    return-void
.end method

.method private stopNativeMonitoring()V
    .locals 2

    .line 376
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "!@# Monitoring OFF"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 378
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->stopLoadMonitor()V

    .line 379
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # [I

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 454
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method enableHeavyuser(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "type"    # I

    .line 242
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 243
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 244
    nop

    .line 245
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 246
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_2

    .line 248
    :try_start_0
    const-string v2, "Heavyuser"

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/LoadDetectMonitor;->setHeavyModeState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_2

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 255
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-void
.end method

.method isHeavyuserTargetApp()Z
    .locals 4

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "isNotHeavyuserTargetApp":Z
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isSetupWizardFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isHeavyDetectDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 272
    .end local v0    # "isNotHeavyuserTargetApp":Z
    .local v1, "isNotHeavyuserTargetApp":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isMlPidModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isPreloadApp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    or-int/2addr v0, v1

    .end local v1    # "isNotHeavyuserTargetApp":Z
    .restart local v0    # "isNotHeavyuserTargetApp":Z
    goto :goto_3

    .line 275
    .end local v0    # "isNotHeavyuserTargetApp":Z
    .restart local v1    # "isNotHeavyuserTargetApp":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isPreloadApp()Z

    move-result v0

    or-int/2addr v0, v1

    .line 278
    .end local v1    # "isNotHeavyuserTargetApp":Z
    .restart local v0    # "isNotHeavyuserTargetApp":Z
    :goto_3
    if-nez v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method isMlPidModel()Z
    .locals 2

    .line 282
    const-string v0, "dev.ssrm.gamelevel"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isPreloadApp()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 259
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 262
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method isSiopShifted()Z
    .locals 1

    .line 143
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    return v0
.end method

.method onFgAppChanged()V
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring()V

    .line 305
    return-void
.end method

.method protected onLoadDetected(I)V
    .locals 13
    .param p1, "state"    # I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "STATE_CPU_HIGH_LOAD_END":I
    const/4 v1, 0x1

    .line 115
    .local v1, "STATE_CPU_HIGH_LOAD_START":I
    const/4 v2, 0x2

    .line 116
    .local v2, "STATE_GPU_HIGH_LOAD_END":I
    const/4 v3, 0x3

    .line 117
    .local v3, "STATE_GPU_HIGH_LOAD_START":I
    const/4 v4, 0x4

    .line 118
    .local v4, "STATE_MODERATELY_HEAVY_LOAD_START":I
    const/4 v5, 0x5

    .line 119
    .local v5, "STATE_CPU_SINGLE_BOOST_END":I
    const/4 v6, 0x6

    .line 121
    .local v6, "STATE_CPU_SINGLE_BOOST_START":I
    sget-object v7, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 122
    .local v7, "msg":Landroid/os/Message;
    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 126
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 127
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne p1, v8, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 128
    sget-object v9, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 129
    const/4 v11, 0x6

    if-ne p1, v11, :cond_1

    const-wide/32 v11, 0x15f90

    goto :goto_1

    .line 130
    :cond_1
    const-wide/32 v11, 0x41eb0

    .line 128
    :goto_1
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    iput v8, v7, Landroid/os/Message;->what:I

    .line 132
    sget-object v8, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->pauseLoadDetect()V

    .line 134
    nop

    .line 138
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onScreenOff()V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopMonitoring()V

    .line 449
    return-void
.end method

.method public onScreenOn()V
    .locals 3

    .line 432
    nop

    .line 433
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 434
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, -0x3e7

    .line 435
    .local v1, "lrp":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    if-nez v2, :cond_1

    const/16 v2, 0x154

    if-ge v1, v2, :cond_1

    .line 436
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onFgAppChanged()V

    .line 442
    return-void
.end method

.method removeMessagesAndCallbackForLoadDetect()V
    .locals 2

    .line 215
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    return-void
.end method

.method resumeLoadDetect()V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->resumeLoadDetect()V

    .line 392
    return-void
.end method

.method scheduleMonitoring()V
    .locals 3

    .line 333
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isHeavyuserTargetApp()Z

    move-result v0

    .line 339
    .local v0, "needToMonitorLoad":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 340
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->startNativeMonitoring()V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isPreloadApp()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(Z)V

    goto :goto_0

    .line 348
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopMonitoring()V

    .line 351
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 352
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 354
    :cond_4
    :goto_0
    return-void
.end method

.method setCondition(ZI)V
    .locals 4
    .param p1, "isShift"    # Z
    .param p2, "type"    # I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isHeavyuserTargetApp()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 224
    invoke-virtual {p0, v3, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 225
    iput-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 226
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 230
    return-void

    .line 233
    :cond_0
    if-nez p1, :cond_1

    .line 234
    invoke-virtual {p0, v3, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 235
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 239
    :goto_0
    return-void
.end method

.method shiftSiopTable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 154
    return-void
.end method

.method shiftSiopTable(ZI)V
    .locals 9
    .param p1, "enable"    # Z
    .param p2, "type"    # I

    .line 165
    sput-boolean p1, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    .line 167
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 170
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 176
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 181
    iput-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 182
    .end local v3    # "time":J
    goto :goto_0

    .line 184
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 187
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    if-nez v0, :cond_3

    .line 188
    const-string v0, "dev.sdhms.hp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "hp":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    .line 193
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    .line 197
    .end local v0    # "hp":Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    if-nez v0, :cond_4

    .line 198
    iget-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 199
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 200
    invoke-virtual {p0, v1, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->setCondition(ZI)V

    .line 204
    return-void

    .line 208
    :cond_4
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ssrm/DynamicLoadDetector;->setCondition(ZI)V

    .line 209
    return-void
.end method

.method startNativeMonitoring()V
    .locals 2

    .line 367
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "!@# Monitoring ON"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 372
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->startLoadMonitor()V

    .line 373
    return-void
.end method
