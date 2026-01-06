.class public Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;
.super Lcom/samsung/android/hardware/context/provider/miscprovider/MiscProvider;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemContext.MiscProvider.PedometerImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCumulativeInfo:Landroid/os/Bundle;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private final mDisplay:Landroid/view/Display;

.field private final mHandler:Landroid/os/Handler;

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private final mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

.field private mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStarted(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPedometer(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;
    .param p3, "vendor"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/miscprovider/MiscProvider;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    .line 61
    new-instance v1, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$1;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 85
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 87
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 88
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 89
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    .line 90
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 91
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 94
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$2;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->registerScreenReceiver()V

    .line 101
    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "context"    # Landroid/os/Bundle;

    .line 298
    if-nez p1, :cond_0

    return-void

    .line 299
    :cond_0
    const-string v10, "WalkStepCountDiffArray"

    const-string v11, "RunStepCountDiffArray"

    const-string v0, "Mode"

    const-string v1, "StepStatus"

    const-string v2, "CalorieDiff"

    const-string v3, "DistanceDiff"

    const-string v4, "WalkingFrequency"

    const-string v5, "TotalStepCountDiff"

    const-string v6, "WalkStepCountDiff"

    const-string v7, "RunStepCountDiff"

    const-string v8, "LoggingCount"

    const-string v9, "TotalStepCountDiffArray"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 303
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContext.MiscProvider.PedometerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method private initializeCurrentInfo()V
    .locals 4

    .line 268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 269
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v2, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 273
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v1, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 274
    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

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

.method private registerScreenReceiver()V
    .locals 3

    .line 280
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl-IA;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    return-void
.end method

.method private unregisterScreenReceiver()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mScreenReceiver:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public add()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->register()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->initializeCurrentInfo()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 120
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 121
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    .line 126
    :cond_2
    :goto_0
    return-void
.end method

.method public handleDiedBinder()V
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.MiscProvider.PedometerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/RestoreManager;->restoreStart()V

    .line 241
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.MiscProvider.PedometerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context"    # Landroid/os/Bundle;

    .line 173
    if-eqz p1, :cond_7

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 175
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 177
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    sget-object v6, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v2, p1, v4, v6}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v6, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    sget-object v7, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v4, v2, v6, v7}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v2, p1, v4}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 187
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v4, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v2, v4, :cond_1

    .line 188
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v4, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v4, v2, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 191
    :cond_1
    if-eqz p1, :cond_5

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 193
    const-string v2, "LoggingCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    goto :goto_2

    .line 202
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 203
    sget-object v0, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    invoke-static {v2, p1, v0}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 204
    if-eqz p1, :cond_5

    .line 205
    const-string v0, "StepStatus"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_6

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->display(Landroid/os/Bundle;)V

    goto :goto_3

    .line 211
    :cond_6
    const/4 p1, 0x0

    .line 214
    :cond_7
    :goto_3
    return-object p1
.end method

.method public remove()V
    .locals 2

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->unregister()V

    .line 143
    return-void
.end method

.method public requestHistoryData()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->getHistoryData()V

    .line 265
    return-void
.end method

.method public requestToUpdate()V
    .locals 3

    .line 251
    const-string v0, "SemContext.MiscProvider.PedometerImpl"

    const-string v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 254
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->requestToUpdate()V

    .line 260
    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 9
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 154
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SemContext.MiscProvider.PedometerImpl"

    if-nez v0, :cond_0

    .line 156
    const-string v2, "setProperty() : attribute is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 159
    :cond_0
    const-string v2, "gender"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "gender":I
    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 161
    .local v5, "height":D
    const-string v2, "weight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 162
    .local v7, "weight":D
    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->mPedometer:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->setProperty(IDD)V

    .line 163
    const-string v2, "setProperty()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method
