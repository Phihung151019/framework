.class public abstract Lcom/samsung/android/hardware/context/util/FaultDetector;
.super Ljava/lang/Object;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;,
        Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;
    }
.end annotation


# static fields
.field private static final FD_ACTION:Ljava/lang/String; = "com.samsung.android.PEDOMETER_FAULT_DETECTION"

.field private static final FD_DURATION_CHECKT_PEDOMETER:I = 0x1b7740

.field private static final FD_DURATION_SET_ALARM:I = 0xea60

.field private static final FD_NAN:I = -0x1

.field private static final FD_RETRY_COUNT:I = 0x3

.field private static final MIN_TO_MILLISECONDS:I = 0xea60

.field private static final MSG_FIN:I = 0x2

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_NONE:I = 0x0

.field private static final MSG_PEDOMETER_CHECK:I = 0x5

.field private static final MSG_PEDOMETER_CHECK_END:I = 0x9

.field private static final MSG_PEDOMETER_CHECK_START:I = 0x8

.field private static final MSG_PEDOMETER_UPDATED:I = 0x6

.field private static final MSG_SC_UPDATED:I = 0x7

.field private static final MSG_START:I = 0x3

.field private static final MSG_STOP:I = 0x4

.field private static final SEC_TO_MILLISECONDS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FaultDetector[1.6]"

.field private static final version:Ljava/lang/String; = "[1.6]"


# instance fields
.field private mAlarm:Z

.field private mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private mFdAlarm:Landroid/app/AlarmManager;

.field public final mFdReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastPedoUpdateTime:J

.field private mLooper:Landroid/os/Looper;

.field private mPedoCount:J

.field private mPedoCountInit:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStarted:Z

.field private mStepCounter:Landroid/hardware/Sensor;

.field private mStepListener:Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;

.field private mStepSensorCount:I

.field private mStepSensorCountInit:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mErrorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFdAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPedoUpdateTime(Lcom/samsung/android/hardware/context/util/FaultDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLastPedoUpdateTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPedoCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPedoCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCountInit:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStarted(Lcom/samsung/android/hardware/context/util/FaultDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepSensorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepSensorCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCountInit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mErrorCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFdAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;Landroid/app/AlarmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPedoUpdateTime(Lcom/samsung/android/hardware/context/util/FaultDetector;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLastPedoUpdateTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPedoCount(Lcom/samsung/android/hardware/context/util/FaultDetector;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPedoCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCountInit:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStepSensorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStepSensorCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCountInit:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->cancelAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->setAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFaultDetector(Lcom/samsung/android/hardware/context/util/FaultDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->startFaultDetector()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopFaultDetector(Lcom/samsung/android/hardware/context/util/FaultDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->stopFaultDetector()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mInitialized:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStarted:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    .line 65
    new-instance v1, Lcom/samsung/android/hardware/context/util/FaultDetector$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/util/FaultDetector$1;-><init>(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    .line 91
    const-string v1, "FaultDetector[1.6]"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    .line 94
    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLooper:Landroid/os/Looper;

    .line 95
    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mInitialized:Z

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStarted:Z

    .line 99
    return-void
.end method

.method private cancelAlarm()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.PEDOMETER_FAULT_DETECTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 131
    .local v2, "pIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 132
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 134
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    .line 135
    return-void
.end method

.method private fin()V
    .locals 2

    .line 240
    const-string v0, "FaultDetector finalize"

    const-string v1, "FaultDetector[1.6]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mInitialized:Z

    .line 243
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    .line 247
    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLooper:Landroid/os/Looper;

    .line 248
    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 250
    :cond_0
    const-string v0, "mThread is null, stop failed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const-string v1, "FaultDetector[1.6]"

    if-nez v0, :cond_0

    .line 211
    const-string v0, "context null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 214
    :cond_0
    const-string v0, "FaultDetector initialize"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 217
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "PedoFaultDetector"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLooper:Landroid/os/Looper;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mThread:Landroid/os/HandlerThread;

    .line 223
    const-string v0, "looper null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 226
    :cond_1
    new-instance v0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;-><init>(Lcom/samsung/android/hardware/context/util/FaultDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 233
    :cond_3
    const-string v0, "initialize: handler null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mInitialized:Z

    .line 237
    return-void
.end method

.method private registerReceiver()V
    .locals 9

    .line 144
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const-string v1, "FaultDetector[1.6]"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v0

    .line 147
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "com.samsung.android.PEDOMETER_FAULT_DETECTION"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 151
    const-string v0, "register receiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v5    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 154
    :cond_0
    const-string v0, "register receiver fail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void
.end method

.method private resetAlarm()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->cancelAlarm()V

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->setAlarm()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mErrorCount:I

    .line 141
    return-void
.end method

.method private setAlarm()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    .line 107
    .local v2, "nextAlarmTime":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.PEDOMETER_FAULT_DETECTION"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4000000

    invoke-static {v4, v1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 112
    .local v1, "pIntent":Landroid/app/PendingIntent;
    nop

    .line 113
    iget-object v4, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdAlarm:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 119
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pIntent":Landroid/app/PendingIntent;
    .end local v2    # "nextAlarmTime":J
    goto :goto_0

    .line 121
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    .line 122
    const-string v0, "FaultDetector[1.6]"

    const-string v1, "alarm manger null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void
.end method

.method private startFaultDetector()V
    .locals 6

    .line 169
    const-string v0, "FaultDetector[1.6]"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLastPedoUpdateTime:J

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCount:J

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCount:I

    .line 173
    iput v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mErrorCount:I

    .line 174
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCountInit:J

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCountInit:I

    .line 177
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;-><init>(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepListener:Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;

    .line 180
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepCounter:Landroid/hardware/Sensor;

    .line 181
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepListener:Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepCounter:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 184
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStarted:Z

    .line 185
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mAlarm:Z

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->registerReceiver()V

    .line 188
    return-void
.end method

.method private stopFaultDetector()V
    .locals 3

    .line 191
    const-string v0, "FaultDetector[1.6]"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStarted:Z

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->cancelAlarm()V

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->unregisterReceiver()V

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mLastPedoUpdateTime:J

    .line 198
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCount:J

    .line 199
    iput v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCount:I

    .line 200
    iput v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mErrorCount:I

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mPedoCountInit:J

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepSensorCountInit:I

    .line 204
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStepListener:Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 207
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    const-string v1, "FaultDetector[1.6]"

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mFdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const-string v0, "unregister receiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_0
    const-string v0, "unregister receiver fail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract requestPedometer()V
.end method

.method public abstract restorePedometer()V
.end method

.method public setPedometerInfo(J)V
    .locals 2
    .param p1, "total_step"    # J

    .line 281
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 286
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 287
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 288
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 289
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    :cond_1
    return-void

    .line 282
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    :goto_0
    const-string v0, "FaultDetector[1.6]"

    const-string v1, "setPedometerInfo: fdr not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public start()V
    .locals 2

    .line 255
    const-string v0, "FaultDetector start"

    const-string v1, "FaultDetector[1.6]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mInitialized:Z

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->init()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 265
    :cond_1
    const-string v0, "start: handler null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 270
    const-string v0, "FaultDetector stop"

    const-string v1, "FaultDetector[1.6]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 276
    :cond_0
    const-string v0, "stop: handler null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void
.end method
