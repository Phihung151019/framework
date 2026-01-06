.class public Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
.super Ljava/lang/Object;
.source "ExternalApi.java"


# static fields
.field static final ACTION_ISSUE_TRACKER_ON_OFF:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ONOFF"

.field private static final EXTRA_ERROR_CODE:Ljava/lang/String; = "ERRCODE"

.field private static final EXTRA_ERROR_MSG:Ljava/lang/String; = "ERRMSG"

.field private static final EXTRA_ERROR_NAME:Ljava/lang/String; = "ERRNAME"

.field private static final EXTRA_ERROR_PACKAGE:Ljava/lang/String; = "ERRPKG"

.field static final EXTRA_ON_OFF:Ljava/lang/String; = "ONOFF"

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final ISSUE_TRACKER_ACTION_INTENT:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"


# instance fields
.field private final COMONENT_VER:Ljava/lang/String;

.field private final COMPONENT_ID:Ljava/lang/String;

.field private final COM_MANUFACTURE:Ljava/lang/String;

.field private final DEV_CUSTOM_DATA_SET:Ljava/lang/String;

.field private final HIT_TYPE:Ljava/lang/String;

.field private final PRI_CUSTOM_DATA_SET:Ljava/lang/String;

.field private final TAAS_START_DELAY_TIME_MS:I

.field private final TAG:Ljava/lang/String;

.field private final TSP_FEATURE:Ljava/lang/String;

.field private final bigDataBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final bootingDump:Ljava/lang/StringBuilder;

.field private currentDisplayStateLogical:I

.field private currentTime:J

.field private final displayStateListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private hwDefectCnt:J

.field private hwDefectTime:J

.field private intentFilter:Landroid/content/IntentFilter;

.field private isIssueTrackerActive:Z

.field private final issueTrackerOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

.field private mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

.field private mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

.field private final mProcessListener:Landroid/app/ActivityManager$SemProcessListener;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private motionEventListener:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

.field private motionEventRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$WBq7hg83AajD_VIIkIrnAQpQtK4(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->lambda$checkGameMode$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbootingDump(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->bootingDump:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDispatcher(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHqmLoggingData(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmotionEventListener(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentDisplayStateLogical(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentDisplayStateLogical:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisIssueTrackerActive(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->isIssueTrackerActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckGameMode(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->checkGameMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunEvent(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->runEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalEventRegister"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "SemInputExternalApi"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->TAG:Ljava/lang/String;

    .line 39
    const-string v1, "TAAS"

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->TSP_FEATURE:Ljava/lang/String;

    .line 40
    const-string v1, "TSP"

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->COMPONENT_ID:Ljava/lang/String;

    .line 41
    const-string v1, "sm"

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->HIT_TYPE:Ljava/lang/String;

    .line 42
    const-string v1, "0.0"

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->COMONENT_VER:Ljava/lang/String;

    .line 43
    const-string v1, "sec"

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->COM_MANUFACTURE:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->DEV_CUSTOM_DATA_SET:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->PRI_CUSTOM_DATA_SET:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 47
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->listeners:Ljava/util/List;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->bootingDump:Ljava/lang/StringBuilder;

    .line 50
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handlerThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    .line 52
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    .line 53
    const/16 v2, 0xfa0

    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->TAAS_START_DELAY_TIME_MS:I

    .line 54
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->intentFilter:Landroid/content/IntentFilter;

    .line 57
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mContext:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mActivityManager:Landroid/app/ActivityManager;

    .line 60
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectTime:J

    .line 61
    iput-wide v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectCnt:J

    .line 62
    iput-wide v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentTime:J

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentDisplayStateLogical:I

    .line 99
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->bigDataBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$2;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->issueTrackerOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->displayStateListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 178
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$4;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mProcessListener:Landroid/app/ActivityManager$SemProcessListener;

    .line 225
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$5;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 75
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-direct {v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 76
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    invoke-direct {v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    .line 77
    const-string v1, "HqmManagerService"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 78
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TaasHandlerThread"

    const/4 v3, -0x8

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handlerThread:Landroid/os/HandlerThread;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mContext:Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->bigDataBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    .line 87
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->displayStateListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;->registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z

    .line 89
    if-eqz p2, :cond_0

    .line 90
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->displayStateListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;->registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z

    .line 91
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mActivityManager:Landroid/app/ActivityManager;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mProcessListener:Landroid/app/ActivityManager$SemProcessListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    goto :goto_0

    .line 94
    :cond_0
    const-string v1, "externalEventRegister is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    const-string v1, "start external api for taas"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private checkGameMode()V
    .locals 10

    .line 191
    new-instance v0, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {v0}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    .line 192
    .local v0, "gameManager":Lcom/samsung/android/game/SemGameManager;
    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z

    move-result v1

    .line 193
    .local v1, "isGameMode":Z
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentDisplayStateLogical:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 194
    const-string v2, "\n"

    const-string v3, "- ExternalApi registerMotionEvent about Taas exception: "

    const-string v4, "register"

    const-string v5, "SemInputExternalApi"

    if-eqz v1, :cond_1

    .line 196
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v6

    .line 201
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v5, v4, v6}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 202
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 206
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    :cond_2
    new-instance v6, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    iput-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    .line 215
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    goto :goto_1

    .line 216
    :catch_1
    move-exception v6

    .line 217
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v5, v4, v6}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 218
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method public static getInHouse()Z
    .locals 1

    .line 309
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_IN_HOUSE_PROJECT:Z

    return v0
.end method

.method private synthetic lambda$checkGameMode$0()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    .line 213
    return-void
.end method

.method private runEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 239
    .local v1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 240
    .end local v1    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public SendBroadcastIssueTrackerTaasDump(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendBroadcastIssueTrackerTaasDump reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isIssueTrackerActive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->isIssueTrackerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputExternalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->isIssueTrackerActive:Z

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ERRPKG"

    const-string v2, "TAAS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "ERRCODE"

    const/16 v2, -0x8d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v1, "ERRNAME"

    const-string v2, "TAAS-CASEA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Touch is okay, but Display is not working"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERRMSG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 136
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    const-string v1, "SemInputExternalApi"

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    const-string v0, "removed callbacks handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    if-eqz v0, :cond_1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mDispatcher:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->destroy()V

    .line 326
    return-void
.end method

.method public getHwDefectCnt()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectCnt:J

    return-wide v0
.end method

.method public getSurfaceTimerStates()J
    .locals 5

    .line 246
    :try_start_0
    invoke-static {}, Landroid/view/SemSurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 247
    .local v0, "displayToken":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/SurfaceControl;->getIdleBeginTime(Landroid/os/IBinder;)Landroid/view/SurfaceControl$IdleBeginTime;

    move-result-object v1

    .line 248
    .local v1, "timerStates":Landroid/view/SurfaceControl$IdleBeginTime;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v1, Landroid/view/SurfaceControl$IdleBeginTime;->beginTimeIdle:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 249
    .end local v0    # "displayToken":Landroid/os/IBinder;
    .end local v1    # "timerStates":Landroid/view/SurfaceControl$IdleBeginTime;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfaceTimerStates() Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputExternalApi"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "displayToken must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getmHqmLoggingData()Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 305
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public registerMotionEventListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendHwParamToHqm(Ljava/lang/String;)V
    .locals 12
    .param p1, "basic_customDataSet"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLoggingDataToHQM() Server update !!! basic_custom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputExternalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v9, ""

    const-string v11, ""

    const/4 v3, 0x0

    const-string v4, "TSP"

    const-string v5, "TAAS"

    const-string v6, "sm"

    const-string v7, "0.0"

    const-string v8, "sec"

    move-object v10, p1

    .end local p1    # "basic_customDataSet":Ljava/lang/String;
    .local v10, "basic_customDataSet":Ljava/lang/String;
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 139
    .end local v10    # "basic_customDataSet":Ljava/lang/String;
    .restart local p1    # "basic_customDataSet":Ljava/lang/String;
    :cond_0
    move-object v10, p1

    .line 144
    .end local p1    # "basic_customDataSet":Ljava/lang/String;
    .restart local v10    # "basic_customDataSet":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public setCaseACount(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->setCaseACount(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public setCaseBCount()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->setCaseBCount()V

    .line 287
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .line 266
    iput-wide p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentTime:J

    .line 267
    return-void
.end method

.method public setHwDefectCnt(J)V
    .locals 0
    .param p1, "hwDefectCnt"    # J

    .line 274
    iput-wide p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectCnt:J

    .line 275
    return-void
.end method

.method public setHwDefectTime(J)V
    .locals 0
    .param p1, "hwDefectTime"    # J

    .line 270
    iput-wide p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectTime:J

    .line 271
    return-void
.end method

.method public setLoggingData(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 290
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->setLoggingData(Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method public writeForCaseToEfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "getTime"    # Ljava/lang/String;
    .param p2, "TaasLog"    # Ljava/lang/String;
    .param p3, "taasCase"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->writeForCaseToEfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public writePerfLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 256
    const/16 v0, 0x11

    invoke-static {v0, p1}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 257
    return-void
.end method

.method public writePerfLogOfHwDefect(Ljava/lang/String;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentTime:J

    iget-wide v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectCnt:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    invoke-static {v3, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->currentTime:J

    iget-wide v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectTime:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->hwDefectCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputExternalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method
