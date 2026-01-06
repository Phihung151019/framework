.class public Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "PedometerImpl.java"


# static fields
.field private static final MODE_USER_INFO:I = 0x0

.field private static final SENSORHUB_INFO_REQUEST_SENSORHUB_RESET:I = -0x13fffc0f

.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider.PedometerImpl"

.field private static mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCumulativeInfo:Landroid/os/Bundle;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private final mDisplay:Landroid/view/Display;

.field private mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

.field private mFdrCount:I

.field private mIsFdrStarted:Z

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private mIsValidTargetResetCmd:Z

.field private final mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private final mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;


# direct methods
.method static bridge synthetic -$$Nest$mrequestToUpdateForce(Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->requestToUpdateForce()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsValidTargetResetCmd:Z

    .line 79
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 82
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 83
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    .line 85
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 88
    :cond_0
    new-instance v1, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$1;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    .line 94
    new-instance v1, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$2;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    .line 105
    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFdrCount:I

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->isValidTargetResetCmd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsValidTargetResetCmd:Z

    .line 107
    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "context"    # Landroid/os/Bundle;

    .line 360
    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    const-string v6, "WalkStepCountDiffArray"

    const-string v7, "RunStepCountDiffArray"

    const-string v0, "Mode"

    const-string v1, "TotalStepCountDiff"

    const-string v2, "WalkStepCountDiff"

    const-string v3, "RunStepCountDiff"

    const-string v4, "LoggingCount"

    const-string v5, "TotalStepCountDiffArray"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "keys":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getLogs(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fdr=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFdrCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContext.CaeProvider.PedometerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private initializeCurrentInfo()V
    .locals 4

    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 369
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v2, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v1, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 374
    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidTargetResetCmd()Z
    .locals 2

    .line 110
    const-string v0, "ro.boot.hardware"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "hardware":Ljava/lang/String;
    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    return v1

    .line 114
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private requestToUpdateForce()V
    .locals 0

    .line 330
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->requestToUpdate()V

    .line 331
    return-void
.end method

.method private saveProfile(Lcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 0
    .param p1, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 334
    sput-object p1, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 335
    return-void
.end method

.method private sendResetCmd()V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mContext:Landroid/content/Context;

    const-string v1, "SemContext.CaeProvider.PedometerImpl"

    if-nez v0, :cond_0

    .line 119
    const-string v0, "reset sensorhub err : context null!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 123
    .local v0, "mSensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_3

    .line 124
    const v2, 0x10032

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 125
    .local v2, "mHubSensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_2

    .line 126
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 127
    .local v3, "data":[I
    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    .line 128
    const v4, -0x13fffc0f

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 129
    invoke-static {v2, v3}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v4

    .line 130
    .local v4, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request Sensorhub reset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    const-string v5, "Request Sensorhub reset failed"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v3    # "data":[I
    .end local v4    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_1
    goto :goto_0

    .line 135
    :cond_2
    const-string v3, "SensorHub is null. "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v2    # "mHubSensor":Landroid/hardware/Sensor;
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public add()V
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, exception mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.CaeProvider.PedometerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    goto :goto_0

    .line 184
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->initializeCurrentInfo()V

    .line 186
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->add()V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    if-eqz v0, :cond_1

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->start()V

    .line 192
    iput-boolean v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    .line 195
    :cond_1
    return-void
.end method

.method public handleDiedBinder()V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.CaeProvider.PedometerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/RestoreManager;->restoreStart()V

    .line 308
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.CaeProvider.PedometerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    if-eqz v0, :cond_0

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->stop()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    .line 293
    :cond_0
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "context"    # Landroid/os/Bundle;

    .line 226
    if-eqz p1, :cond_7

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 228
    const-string v0, "PreviousStepBuffer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v3, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v1, p1, v3, v4}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    goto :goto_0

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    sget-object v5, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v3, v1, v4, v5}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v3, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v1, p1, v3}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 240
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v3, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v1, v3, :cond_1

    .line 241
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v3, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v3, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 244
    :cond_1
    if-eqz p1, :cond_5

    .line 245
    const-string v1, "LoggingCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "Mode"

    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 252
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    goto :goto_2

    .line 257
    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 258
    sget-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v1, p1, v0}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 260
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->display(Landroid/os/Bundle;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 263
    const-wide/16 v0, 0x0

    .line 264
    .local v0, "step":J
    const-string v2, "CumulativeTotalStepCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->setPedometerInfo(J)V

    .line 271
    .end local v0    # "step":J
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    if-nez v0, :cond_8

    .line 272
    const/4 p1, 0x0

    .line 274
    :cond_8
    return-object p1
.end method

.method public remove()V
    .locals 3

    .line 205
    const-string v0, "SemContext.CaeProvider.PedometerImpl"

    const-string v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->requestToUpdate()V

    .line 208
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->remove()V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    if-eqz v1, :cond_0

    .line 212
    iget-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFaultDetector:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->stop()V

    .line 214
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsFdrStarted:Z

    .line 217
    :cond_0
    return-void
.end method

.method public requestToUpdate()V
    .locals 3

    .line 318
    const-string v0, "SemContext.CaeProvider.PedometerImpl"

    const-string v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 321
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->requestToUpdate()V

    .line 327
    :cond_1
    :goto_0
    return-void
.end method

.method public restore()V
    .locals 3

    .line 142
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFdrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mFdrCount:I

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->requestToUpdate()V

    .line 144
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->remove()V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->initializeCurrentInfo()V

    .line 146
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->add()V

    .line 147
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    const-string v1, "SemContext.CaeProvider.PedometerImpl"

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x2

    sget-object v2, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    goto :goto_0

    .line 161
    :cond_0
    const-string v0, "setAttribute : mAttribute is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->mIsValidTargetResetCmd:Z

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->sendResetCmd()V

    .line 165
    const-string v0, "restore : qcom device - try SSR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    :cond_1
    const-string v0, "restore : non-qcom device - no need SSR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_1
    return-void
.end method

.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 3
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 346
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 347
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 348
    const-string v1, "SemContext.CaeProvider.PedometerImpl"

    const-string v2, "setAttribute() : attribute is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 351
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 352
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 353
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->saveProfile(Lcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 356
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 357
    return-void
.end method
