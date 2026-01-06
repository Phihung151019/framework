.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ANIMATION_BOOST_TIMEOUT:I = 0x96

.field private static final BOOST_ARGUMENT:I = 0x40cd0000

.field static final DEBUG:Z = false

.field private static final GPIS_DISABLE_TIMEOUT:I = 0x7d0

.field private static final HINT_APP_LAUNCH:I = 0x12

.field private static final INCREASE_LOW_LATENCY_THRESHOLD:I = 0x320

.field private static final INTENT_SCREEN_RECORDER_START:Ljava/lang/String; = "com.samsung.android.app.screenrecorder.on"

.field private static final INTENT_SCREEN_RECORDER_STOP:Ljava/lang/String; = "com.samsung.android.app.screenrecorder.off"

.field public static final MODE_CGROUP_V1:I = 0x1

.field public static final MODE_CGROUP_V2:I = 0x2

.field private static final MPCTLV3_SCHED_LOW_LATENCY:I = 0x40cd0000

.field private static final MPCTLV3_SCHED_TASK_BOOST:I = 0x40c80000

.field private static final MPCTLV3_WALT_LOW_LATENCY_TASK_THRESHOLD:I = 0x40cd8000

.field private static final PERF_TUNE_CHECK_DURATION:I = 0x7530

.field private static final PERF_TUNE_CHECK_MAX_COUNT:I = 0x6

.field private static final PROP_PERF_TUNE:Ljava/lang/String; = "persist.sys.perftune.cpugpu"

.field private static final SDHMS_PKG_NAME:Ljava/lang/String; = "com.sec.android.sdhms"

.field static final TAG:Ljava/lang/String;

.field private static final TASKBOOST_MAX_TIMEOUT:I = 0x32a

.field private static final TASKBOOST_SYSFS_ID:I = 0x402611

.field public static final TASK_NAME_APP_HWUI:Ljava/lang/String; = "APP_HWUI"

.field public static final TASK_NAME_APP_RENDERER:Ljava/lang/String; = "APP_RENDERER"

.field public static final TASK_NAME_SF_THREAD:Ljava/lang/String; = "SF_THREAD"

.field public static final TYPE_ALLOW_DUPLICATED_NAME:I = 0x1

.field public static final TYPE_OVERWRITE_PREV_THREAD:I

.field static isLoaded:Z

.field public static mContext:Landroid/content/Context;

.field private static mCurrentDynamicFpsLevel:I

.field public static mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

.field public static mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

.field public static mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

.field public static mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field private static final sIsFactoryBinary:Z

.field private static sfHintAvailable:Z


# instance fields
.field private final allowedUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final disableGpisRunnable:Ljava/lang/Runnable;

.field private enableGpis:Z

.field private gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

.field private final gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

.field private final gpisLock:Ljava/lang/Object;

.field public isLauncherPidInitialized:Z

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

.field mBootComplete:Z

.field private mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

.field mCfmsHandler:Landroid/os/Handler;

.field private mCurrentFGChangedTime:J

.field private mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

.field mGpisHintEndTime:J

.field private mIPm:Landroid/content/pm/IPackageManager;

.field private mIsAspEnabled:Z

.field private mIsTaskBoostExist:Z

.field private final mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBoostTime:J

.field private mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

.field private mPerfTuneCheckCount:I

.field private mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

.field mPerfTuneRunnable:Ljava/lang/Runnable;

.field private mPerfTuneValue:Ljava/lang/String;

.field private mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field public mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field mSOSMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOn:Z

.field private mScreenRecorderEnabled:Z

.field private mSetupWizardObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;

.field private mShutdownReceiver:Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

.field private mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

.field private mTaskBoostFramework:Landroid/util/BoostFramework;

.field private mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

.field mUserPresent:Z

.field private mUsingCgroupVersion:I

.field private mViBoostFramework:Landroid/util/BoostFramework;

.field private sfTid:I

.field private final taskboostLock:Ljava/lang/Object;

.field private final taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;


# direct methods
.method public static synthetic $r8$lambda$33AXk0SmhRAFSS01nBANtqp7uIw(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/IPackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTaskBoostExist(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsolateUidMap(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerfTuneValue(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPmInternal(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenRecorderEnabled(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenRecorderEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mShutdownReceiver:Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskBoostManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/fgapps/TopAppManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViBoostFramework(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/util/BoostFramework;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mViBoostFramework:Landroid/util/BoostFramework;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsfTid(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCPUSetController(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CPUSetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPalmInputEventChecker(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/PalmInputEventChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenRecorderEnabled(Lcom/android/server/ssrm/CustomFrequencyManagerService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenRecorderEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetupWizardObserver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSetupWizardObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mShutdownReceiver:Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    return-void
.end method

.method static bridge synthetic -$$Nest$macquirePerfTune(Lcom/android/server/ssrm/CustomFrequencyManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquirePerfTune(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initPerfettoLogging(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initScrollBooster(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsHandlerThread(Landroid/os/HandlerThread;)V
    .locals 0

    sput-object p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 110
    const-string v0, "GPIS : Exception!!! on Load Library"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    .line 112
    const-class v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    .line 116
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "GPIS : loadLibrary!!!"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "cfms.ssrm.samsung"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 118
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    goto :goto_1

    .line 119
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 122
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    .line 127
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 170
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 172
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    .line 174
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 176
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 212
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    .line 1026
    const/16 v0, 0x63

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    .line 1540
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 307
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUsingCgroupVersion:I

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 144
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 168
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 180
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

    .line 182
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

    .line 184
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    .line 188
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 192
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 196
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 198
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 200
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 202
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsAspEnabled:Z

    .line 210
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    .line 222
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenRecorderEnabled:Z

    .line 481
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    .line 487
    iput v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    .line 491
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneRunnable:Ljava/lang/Runnable;

    .line 625
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 627
    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 629
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 631
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 633
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSOSMap:Ljava/util/Map;

    .line 635
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    .line 657
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1055
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    .line 1299
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 1339
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    .line 1341
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    .line 1388
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    .line 1390
    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    .line 1406
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    .line 1408
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mViBoostFramework:Landroid/util/BoostFramework;

    .line 1542
    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1544
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    .line 1548
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    .line 1580
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1642
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1667
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 309
    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 311
    new-instance v0, Lcom/android/server/ssrm/ProcessCpuUsage;

    invoke-direct {v0}, Lcom/android/server/ssrm/ProcessCpuUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

    .line 312
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 313
    invoke-static {p1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

    .line 315
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "SIOP_LOW_TEMP"

    invoke-static {v0, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 316
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x44c

    invoke-virtual {v0, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 320
    :cond_0
    const-string v0, "sys.perf.asp"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsAspEnabled:Z

    .line 322
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    .line 326
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    .line 327
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->startObserving(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->getInstance()Lcom/android/server/ssrm/fgapps/GameAppUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 331
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-nez v0, :cond_1

    .line 332
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v0}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 334
    invoke-static {p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->run()V

    .line 340
    :cond_1
    const-class v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    monitor-enter v0

    .line 341
    :try_start_0
    sput-object p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registFGObserver()V

    .line 346
    const-class v0, Landroid/os/CustomFrequencyManagerInternal;

    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService-IA;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 349
    new-instance v0, Lcom/android/server/ssrm/fgapps/TopAppManager;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 351
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "CFMS_TASK_BOOST"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 352
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    const v1, 0x402611

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->checkSysfsIdExist(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    .line 355
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 356
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 357
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 358
    return-void

    .line 342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private acquirePerfTune(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    .line 504
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PERF_TUNE_TEST"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "70"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 523
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 524
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_2

    .line 519
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 520
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 521
    goto :goto_2

    .line 515
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 516
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 517
    goto :goto_2

    .line 511
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 512
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 513
    nop

    .line 527
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x65d -> :sswitch_4
        0x69b -> :sswitch_3
        0x6d9 -> :sswitch_2
        0x12944 -> :sswitch_1
        0x1a564 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .locals 1

    .line 217
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    return-object v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 1

    .line 792
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 793
    const/4 v0, 0x0

    return-object v0

    .line 795
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameByPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .line 1479
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1480
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1481
    .local v1, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v2, ""

    .line 1483
    .local v2, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1484
    return-object v2

    .line 1486
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1487
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_1

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 1488
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 1489
    goto :goto_1

    .line 1491
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 1493
    :cond_2
    :goto_1
    return-object v2
.end method

.method private getPidByPackageName(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1497
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1498
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1499
    .local v1, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, -0x1

    .line 1501
    .local v2, "result":I
    if-nez v1, :cond_0

    .line 1502
    return v2

    .line 1504
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1505
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1506
    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 1507
    goto :goto_1

    .line 1509
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 1511
    :cond_2
    :goto_1
    return v2
.end method

.method private initPerfettoLogging(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 622
    new-instance v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    .line 623
    return-void
.end method

.method private initScrollBooster(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 614
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-direct {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 617
    :cond_0
    invoke-static {p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 618
    invoke-static {p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 619
    return-void
.end method

.method private isAllowedUid()Z
    .locals 4

    .line 1099
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1101
    .local v0, "uid":I
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 1102
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Shell is not Allowed"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/4 v1, 0x0

    return v1

    .line 1105
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowedPkg requested UID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPermissionGranted()Z
    .locals 6

    .line 827
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 829
    .local v0, "uid":I
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 830
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Shell is not allowed."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v1, 0x0

    return v1

    .line 834
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isPreloadAppUid(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 835
    return v2

    .line 838
    :cond_1
    const/16 v1, 0x417

    if-ne v0, v1, :cond_2

    .line 839
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Camera is allowed."

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    return v2

    .line 843
    :cond_2
    const/16 v1, 0x411

    if-ne v0, v1, :cond_3

    .line 844
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "audioserver is allowed."

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return v2

    .line 848
    :cond_3
    const/4 v1, 0x1

    .line 850
    .local v1, "hasPermission":Z
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    goto :goto_0

    .line 852
    :catch_0
    move-exception v2

    .line 853
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process with uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v1, 0x0

    .line 856
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 571
    const-string v0, "TYPE_SCROLL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SMOOTH_SCROLL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    const-string v0, "GESTURE_DETECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ANIMATION_BOOST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    return v0

    .line 573
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1546
    return-void
.end method

.method private registFGObserver()V
    .locals 2

    .line 1321
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1323
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    goto :goto_0

    .line 1324
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1327
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static setDynamicFpsLevel(I)V
    .locals 7
    .param p0, "level_"    # I

    .line 1029
    move v0, p0

    .line 1030
    .local v0, "level":I
    sget v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    if-eq v1, v0, :cond_5

    sget v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    const/4 v2, -0x1

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_0

    goto :goto_3

    .line 1035
    :cond_0
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1036
    .local v1, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_4

    .line 1037
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDynamicFpsLevel:: level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    if-eq v0, v2, :cond_2

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 1040
    :cond_1
    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 1041
    const/4 v0, 0x1

    goto :goto_1

    .line 1039
    :cond_2
    :goto_0
    const/16 v0, 0x3c

    .line 1043
    :cond_3
    :goto_1
    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    .line 1044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1045
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x462

    invoke-interface {v1, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1048
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v1    # "surfaceFlinger":Landroid/os/IBinder;
    .end local v2    # "data":Landroid/os/Parcel;
    :cond_4
    goto :goto_2

    .line 1050
    :catch_0
    move-exception v1

    .line 1051
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "setDynamicFpsLevel:: failed: SurfaceFlinger is dead!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 1031
    :cond_5
    :goto_3
    return-void
.end method

.method private setLauncherPromotion(I)V
    .locals 8
    .param p1, "pid"    # I

    .line 1583
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_LAUNCHER_PROMOTION:Z

    if-nez v0, :cond_0

    .line 1584
    return-void

    .line 1586
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1590
    :cond_1
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1591
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    if-nez v0, :cond_2

    .line 1592
    return-void

    .line 1594
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1595
    .local v0, "threadList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1596
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_HWUI"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1597
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_RENDERER"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1599
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1600
    .local v1, "perfLockReqList":[I
    const/4 v2, 0x0

    .line 1601
    .local v2, "idx":I
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1602
    .local v4, "tid":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "idx":I
    .local v5, "idx":I
    const/high16 v6, 0x40cd0000    # 6.40625f

    aput v6, v1, v2

    .line 1603
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "idx":I
    .restart local v2    # "idx":I
    aput v4, v1, v5

    .line 1604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Topapp task boost - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1605
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1606
    .end local v4    # "tid":I
    goto :goto_0

    .line 1608
    :cond_3
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1609
    return-void

    .line 1587
    .end local v0    # "threadList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v1    # "perfLockReqList":[I
    .end local v2    # "idx":I
    :cond_4
    :goto_1
    return-void
.end method

.method private triggerTopAppTaskBoost(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "timeout"    # I

    .line 1612
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-nez v0, :cond_0

    .line 1613
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_1

    .line 1616
    return-void

    .line 1618
    :cond_1
    if-gez p1, :cond_2

    .line 1619
    return-void

    .line 1621
    :cond_2
    if-gtz p2, :cond_3

    .line 1622
    return-void

    .line 1625
    :cond_3
    const/16 v0, 0x32a

    if-le p2, v0, :cond_4

    .line 1626
    const/16 p2, 0x32a

    .line 1629
    :cond_4
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1630
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    if-nez v0, :cond_5

    .line 1631
    return-void

    .line 1634
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1635
    .local v0, "perfLockReqList":[I
    const/4 v1, 0x0

    .line 1636
    .local v1, "idx":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    const v3, 0x40cd8000    # 6.421875f

    aput v3, v0, v1

    .line 1637
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    const/16 v3, 0x320

    aput v3, v0, v2

    .line 1639
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    invoke-virtual {v2, p2, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1640
    return-void
.end method

.method public static unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .locals 9
    .param p0, "fileZip"    # Ljava/io/File;

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 862
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 863
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 866
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 867
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 868
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 869
    const/4 v4, 0x0

    .line 871
    .local v4, "zentry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_1

    .line 872
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "classes.dex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 873
    goto :goto_0

    .line 876
    :cond_0
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 877
    .local v5, "buf":[B
    const/4 v6, 0x0

    .line 879
    .local v6, "len":I
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 880
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 887
    .end local v4    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v5    # "buf":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v4

    .line 888
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 885
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 886
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 889
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    nop

    .line 891
    :goto_2
    if-eqz v2, :cond_2

    .line 893
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 896
    goto :goto_3

    .line 894
    :catch_2
    move-exception v4

    .line 895
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 899
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 901
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 904
    goto :goto_4

    .line 902
    :catch_3
    move-exception v4

    .line 903
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 907
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 909
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 912
    goto :goto_5

    .line 910
    :catch_4
    move-exception v4

    .line 911
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 915
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    return-object v3
.end method


# virtual methods
.method public acquire(IILjava/lang/String;I[I)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 1730
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    return-void

    .line 1734
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerAcquire(IILjava/lang/String;I[I)V

    .line 1735
    move-object v0, p5

    move p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "pid":I
    .local v0, "list":[I
    .local p2, "pid":I
    .local p3, "token":I
    .local p4, "procName":Ljava/lang/String;
    .local p5, "hint":I
    const/16 v1, 0x12

    if-ne p5, v1, :cond_1

    iget-boolean v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    if-nez v2, :cond_1

    .line 1736
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initLauncherPid(I)V

    .line 1737
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-nez v2, :cond_1

    .line 1738
    iget-object v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const/4 v3, 0x4

    invoke-virtual {v2, p2, p2, v3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addThreadToType(III)V

    .line 1742
    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v2, :cond_2

    if-ne p5, v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    if-eqz v1, :cond_2

    .line 1743
    const/16 v1, 0x96

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerAnimationBoost(I)V

    .line 1746
    :cond_2
    return-void
.end method

.method public addDvfsLockAllowedUid(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 1062
    const/16 v0, 0x7d0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 1063
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addDvfsLockAllowedUid - Shell is not allowed"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return v1

    .line 1067
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    .line 1068
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addDvfsLockAllowedUid is allowed for system only"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    return v1

    .line 1072
    :cond_1
    if-lez p1, :cond_2

    .line 1073
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDvfsLockAllowedUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    return p1

    .line 1077
    :cond_2
    return v1
.end method

.method public checkHintExist(I)Z
    .locals 3
    .param p1, "hint"    # I

    .line 1791
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    return v0

    .line 1794
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyPer : checkHintExist - hint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckHintExist(I)Z

    move-result v0

    return v0
.end method

.method public checkResourceExist(I)Z
    .locals 3
    .param p1, "resourceId"    # I

    .line 1800
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1801
    const/4 v0, 0x0

    return v0

    .line 1803
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyPer : checkResourceExist - resourceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckResourceExist(I)Z

    move-result v0

    return v0
.end method

.method public checkSysfsIdExist(I)Z
    .locals 1
    .param p1, "sysfsId"    # I

    .line 1783
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    const/4 v0, 0x0

    return v0

    .line 1786
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckSysfsIdExist(I)Z

    move-result v0

    return v0
.end method

.method public disableGpisHint()V
    .locals 1

    .line 1821
    sget-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->disableGpisSkip:Z

    if-eqz v0, :cond_0

    .line 1822
    return-void

    .line 1824
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setGpisHint(Z)V

    .line 1825
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 580
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    return-void

    .line 588
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getPreMonitorLog()Lcom/android/server/ssrm/CircularBuffer;

    move-result-object v0

    .line 589
    .local v0, "tempBuffer":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 590
    const-string v1, "\nPREMONITOR LOG\n\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "temp":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 593
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 594
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "temp":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/ssrm/ProcessRestrictionManager;->dump(Ljava/io/PrintWriter;)V

    .line 610
    return-void
.end method

.method public enableInteractionHint(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1829
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-nez v0, :cond_0

    .line 1830
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 1833
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-eqz v0, :cond_1

    .line 1834
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->enableInteractionHint(Z)V

    .line 1836
    :cond_1
    return-void
.end method

.method public getBatteryRemainingUsageTime(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 923
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 924
    return v1

    .line 927
    :cond_0
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 928
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 929
    nop

    .line 930
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 931
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_1

    .line 933
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getRemainingUsageTime(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 934
    :catch_0
    move-exception v3

    .line 935
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 940
    .end local v2    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public getGameThrottlingLevel()I
    .locals 3

    .line 969
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    const/4 v0, -0x1

    return v0

    .line 972
    :cond_0
    const-string v0, "sys.siop.level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 977
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 978
    .local v1, "level":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 979
    const/4 v1, 0x3

    goto :goto_0

    .line 980
    :cond_2
    if-gez v1, :cond_3

    .line 981
    const/4 v1, 0x0

    .line 983
    :cond_3
    :goto_0
    return v1

    .line 974
    .end local v1    # "level":I
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public getPreloadList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 288
    return-object v1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

    invoke-virtual {v0}, Lcom/android/server/ssrm/SortingMachine;->getPreloadList()Ljava/util/Hashtable;

    move-result-object v0

    .line 292
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 293
    return-object v1

    .line 296
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 298
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 303
    :cond_2
    return-object v1
.end method

.method public getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;
    .locals 7
    .param p1, "tarPids"    # [I

    .line 236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 237
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 238
    .local v1, "userId":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 242
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p1, v4

    .line 243
    .local v5, "pid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v5    # "pid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ssrm/ProcessCpuUsage;->refresh(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)Landroid/os/CpuTrackerInfo;

    move-result-object v3

    return-object v3

    .line 249
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessCpuUsage is not allowed. (uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSsrmStatus(I)I
    .locals 4
    .param p1, "type"    # I

    .line 401
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_0

    .line 402
    return v1

    .line 404
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v0, :cond_1

    .line 405
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_1
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 409
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 410
    nop

    .line 411
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 412
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_2

    .line 414
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 415
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 417
    return v1

    .line 421
    .end local v2    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public getSupportedFrequency(II)[I
    .locals 1
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 1758
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1759
    const/4 v0, 0x0

    return-object v0

    .line 1761
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerGetSupportedFrequency(II)[I

    move-result-object v0

    .line 1762
    .local v0, "table":[I
    return-object v0
.end method

.method public getUsingCgroupVersion()I
    .locals 3

    .line 227
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUsingCgroupVersion:I

    .line 228
    .local v0, "re":I
    iget v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUsingCgroupVersion:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUsingCgroupVersion:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0
.end method

.method public initLauncherPid(I)V
    .locals 7
    .param p1, "launcherPid"    # I

    .line 1645
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_0

    .line 1646
    return-void

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->setLauncherPid(I)V

    .line 1649
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setLauncherPromotion(I)V

    .line 1651
    const-string v0, "com.android.systemui"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getPidByPackageName(Ljava/lang/String;)I

    move-result v0

    .line 1652
    .local v0, "pid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1653
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_RENDERER"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 1654
    .local v1, "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v0, v3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addThreadToType(III)V

    .line 1655
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1656
    .local v4, "tPid":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v0, v6, v3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addThreadToType(III)V

    .line 1657
    .end local v4    # "tPid":Ljava/lang/Integer;
    goto :goto_0

    .line 1660
    .end local v1    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1661
    return-void
.end method

.method public isGameByGraphic(I)Z
    .locals 5
    .param p1, "pid"    # I

    .line 1516
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsAspEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1517
    return v1

    .line 1519
    :cond_0
    const/4 v0, 0x0

    .line 1521
    .local v0, "res":Z
    const-string v2, "sdhms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1522
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 1523
    invoke-static {v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v3

    .line 1525
    .local v3, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v3, :cond_1

    .line 1527
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->isGameByGraphic(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1531
    goto :goto_0

    .line 1528
    :catch_0
    move-exception v4

    .line 1529
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1530
    return v1

    .line 1535
    .end local v3    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v0
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 780
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 781
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 783
    .local v0, "manager":Landroid/app/ActivityManager;
    nop

    .line 784
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 783
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 785
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    if-eqz p1, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 786
    const/4 v1, 0x1

    return v1

    .line 787
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    goto :goto_0

    .line 788
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public mpdUpdate(I)V
    .locals 0
    .param p1, "mpEnable"    # I

    .line 475
    return-void
.end method

.method native nativeHyPerAcquire(IILjava/lang/String;I[I)V
.end method

.method native nativeHyPerCheckHintExist(I)Z
.end method

.method native nativeHyPerCheckResourceExist(I)Z
.end method

.method native nativeHyPerCheckSysfsIdExist(I)Z
.end method

.method native nativeHyPerGetSupportedFrequency(II)[I
.end method

.method native nativeHyPerRelease(II)V
.end method

.method native nativeHyPerSysfsRead(I)Ljava/lang/String;
.end method

.method native nativeHyPerSysfsWrite(ILjava/lang/String;)V
.end method

.method native nativeSetProfile(IZ)Z
.end method

.method public onTopAppChanged()V
    .locals 5

    .line 1393
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_0

    .line 1394
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onTopAppChanged Error... TopAppManager is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    return-void

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getLauncherPid()I

    move-result v0

    .line 1399
    .local v0, "launcherPid":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    .line 1400
    iget-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1401
    iget-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    .line 1402
    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerTopAppTaskBoost(II)V

    .line 1404
    :cond_1
    return-void
.end method

.method public readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 259
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 260
    .local v0, "mBuffer":[B
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 261
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 263
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 264
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 265
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 267
    if-lez v3, :cond_2

    .line 269
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 270
    aget-byte v5, v0, v4

    if-ne v5, p2, :cond_0

    .line 271
    goto :goto_1

    .line 269
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 280
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    return-object v5

    .line 267
    .end local v3    # "len":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_2

    .line 279
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 280
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 281
    throw v3

    .line 277
    :catch_0
    move-exception v3

    goto :goto_2

    .line 276
    :catch_1
    move-exception v3

    .line 279
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 280
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 281
    nop

    .line 282
    const/4 v3, 0x0

    return-object v3

    .line 257
    .end local v0    # "mBuffer":[B
    .end local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "readFile is allowed for system only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSysfs(I)Ljava/lang/String;
    .locals 1
    .param p1, "sysfsId"    # I

    .line 1775
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1776
    const-string v0, ""

    return-object v0

    .line 1778
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerSysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method registerIntentReceiver()V
    .locals 5

    .line 799
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 800
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v1, "com.samsung.android.app.screenrecorder.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v1, "com.samsung.android.app.screenrecorder.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 811
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 813
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 812
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 816
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 817
    .local v1, "filter1":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 820
    const-string v2, "com.sec.android.sdhms"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 821
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 822
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 821
    :goto_1
    invoke-virtual {v2, v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 824
    return-void
.end method

.method public release(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 1750
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    return-void

    .line 1753
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerRelease(II)V

    .line 1754
    return-void
.end method

.method public removeDvfsLockAllowedUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1085
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1086
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "removeDvfsLockAllowedUid is allowed for system only"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    return v2

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDvfsLockAllowedUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1093
    const/4 v0, 0x1

    return v0

    .line 1095
    :cond_1
    return v2
.end method

.method public requestCPUUpdate(II)V
    .locals 6
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .line 431
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "core "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "send":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 439
    .local v1, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v2, 0x0

    .line 441
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "mpdecision"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 443
    .local v3, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 444
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v2, v4

    .line 445
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 446
    .local v4, "byteString":[B
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "byteString":[B
    if-eqz v2, :cond_1

    .line 455
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v3

    .line 459
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 460
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_0
    nop

    .line 463
    :goto_1
    nop

    .line 464
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    :goto_2
    goto :goto_7

    .line 466
    :catch_1
    move-exception v3

    .line 467
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 469
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_7

    .line 453
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 449
    :catch_2
    move-exception v3

    .line 451
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 455
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 458
    :catch_3
    move-exception v3

    .line 459
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 460
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 463
    :goto_4
    nop

    .line 464
    :try_start_5
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 447
    :catch_4
    move-exception v3

    .line 448
    .local v3, "e1":Ljava/net/UnknownHostException;
    :try_start_6
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 454
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    if-eqz v2, :cond_3

    .line 455
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 458
    :catch_5
    move-exception v3

    .line 459
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 460
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_5
    nop

    .line 463
    :goto_6
    nop

    .line 464
    :try_start_8
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 471
    :goto_7
    return-void

    .line 454
    :goto_8
    if-eqz v2, :cond_4

    .line 455
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    .line 458
    :catch_6
    move-exception v4

    .line 459
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 460
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_9
    nop

    .line 463
    :goto_a
    nop

    .line 464
    :try_start_a
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 468
    goto :goto_b

    .line 466
    :catch_7
    move-exception v4

    .line 467
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 469
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_b
    throw v3
.end method

.method public requestFreezeSlowdown(IIZLjava/lang/String;)I
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "isEnabled"    # Z
    .param p4, "type"    # Ljava/lang/String;

    .line 1268
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1269
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, -0x1

    .line 1271
    .local v1, "result":I
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/ssrm/ProcessRestrictionManager;->manageProcessRestrictionState(IIZLjava/lang/String;)I

    move-result v2

    move v1, v2

    .line 1278
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1279
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFreezeSlowdown : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1285
    nop

    .line 1286
    return v1

    .line 1284
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1285
    throw v2

    .line 1272
    :cond_2
    :goto_0
    return v1
.end method

.method public requestGpis(III)V
    .locals 9
    .param p1, "groupId"    # I
    .param p2, "boostLevel"    # I
    .param p3, "timeout"    # I

    .line 1671
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    goto/16 :goto_0

    .line 1675
    :cond_0
    if-gez p2, :cond_1

    .line 1676
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::Wrong BoostLevel"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    return-void

    .line 1679
    :cond_1
    iget v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    if-gtz v1, :cond_2

    .line 1680
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::SF Tid not set"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    return-void

    .line 1683
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    if-nez v1, :cond_3

    .line 1684
    return-void

    .line 1687
    :cond_3
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPIS : Hint::Add BoostLevel - group : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    boostLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    if-eqz v1, :cond_6

    .line 1691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1692
    .local v1, "now":J
    int-to-long v3, p3

    .line 1693
    .local v3, "qosTimeout":J
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 1694
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    sub-long/2addr v5, v1

    int-to-long v7, p3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1696
    :cond_4
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1697
    iget v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    invoke-virtual {p0, v5, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1698
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v5, "GPIS::SetProfile default Fail"

    invoke-static {v0, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1701
    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 1703
    .end local v1    # "now":J
    .end local v3    # "qosTimeout":J
    :cond_6
    return-void

    .line 1672
    :cond_7
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::Group ID out of range"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 479
    return-void
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "restrictReason"    # I

    .line 1809
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1810
    return-void

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_1

    .line 1813
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1816
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    return-void

    .line 536
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 537
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const-string v1, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v1, "ANIMATION_BOOST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 545
    .local v1, "timeout":I
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerAnimationBoost(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "timeout":I
    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 548
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 549
    :cond_1
    const-string v1, "GESTURE_DETECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const-string v1, "com.sec.android.app.sdhms.GestureDetect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 551
    :cond_2
    const-string v1, "TYPE_SCROLL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 552
    const-string v1, "com.sec.android.app.sdhms.ListScroll"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 553
    :cond_3
    const-string v1, "SMOOTH_SCROLL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 554
    const-string v1, "com.sec.android.app.sdhms.SmoothScroll"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 555
    :cond_4
    const-string v1, "TASK_BOOST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 557
    :try_start_1
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "strs":[Ljava/lang/String;
    if-eqz v1, :cond_5

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 559
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 560
    .local v2, "pid":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 561
    .local v3, "timeout":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerTopAppTaskBoost(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    .end local v1    # "strs":[Ljava/lang/String;
    .end local v2    # "pid":I
    .end local v3    # "timeout":I
    :cond_5
    goto :goto_1

    .line 563
    :catch_1
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 567
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 568
    return-void
.end method

.method public sendDrawingTid(III)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "groupId"    # I

    .line 1345
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_0

    .line 1346
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "sendDrawingTid Error... TopAppManager is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    return-void

    .line 1349
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPIS : sendDrawingTid  pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     JNI loadSuccess? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const/4 v0, 0x0

    .line 1353
    .local v0, "targetGroupId":I
    const/4 v1, 0x0

    .line 1354
    .local v1, "updateType":I
    const-string v2, "UNDEFINED"

    .line 1356
    .local v2, "name":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1363
    :pswitch_0
    const-string v2, "APP_HWUI"

    .line 1364
    const/4 v1, 0x1

    .line 1365
    const/4 v0, 0x1

    .line 1366
    goto :goto_0

    .line 1368
    :pswitch_1
    const-string v2, "SF_THREAD"

    .line 1369
    const/4 v1, 0x0

    .line 1370
    const/4 v0, 0x2

    .line 1371
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    .line 1372
    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    goto :goto_0

    .line 1358
    :pswitch_2
    const-string v2, "APP_RENDERER"

    .line 1359
    const/4 v1, 0x0

    .line 1360
    const/4 v0, 0x1

    .line 1361
    nop

    .line 1376
    :goto_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1377
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 1382
    :pswitch_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThreadWithDuplicatedName(IILjava/lang/String;)V

    goto :goto_1

    .line 1379
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 1380
    nop

    .line 1385
    :goto_1
    monitor-exit v3

    .line 1386
    return-void

    .line 1385
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public sendTid(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "type"    # I

    .line 1464
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1467
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addThreadToType(III)V

    .line 1470
    :goto_0
    monitor-exit v0

    .line 1475
    goto :goto_1

    .line 1470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local p1    # "pid":I
    .end local p2    # "tid":I
    .end local p3    # "type":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1471
    .restart local p0    # "this":Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local p1    # "pid":I
    .restart local p2    # "tid":I
    .restart local p3    # "type":I
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set scheduling policy, thread does not exist or not allowed : \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setFrozenTime(I)V
    .locals 1
    .param p1, "timeMs"    # I

    .line 1296
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/ProcessRestrictionManager;->setFrozenTime(I)V

    .line 1297
    return-void
.end method

.method public setGameFps(I)V
    .locals 1
    .param p1, "level"    # I

    .line 957
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    return-void

    .line 965
    :cond_0
    return-void
.end method

.method public setGamePowerSaving(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 945
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    return-void

    .line 953
    :cond_0
    return-void
.end method

.method public setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "head"    # Ljava/lang/String;
    .param p3, "tail"    # Ljava/lang/String;

    .line 1003
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1011
    return-void
.end method

.method public setGameTurboMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 988
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    return-void

    .line 996
    :cond_0
    return-void
.end method

.method public setGpisHint(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .line 1840
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1841
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1843
    if-eqz p1, :cond_0

    .line 1844
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->requestGpis(III)V

    goto :goto_0

    .line 1846
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenRecorderEnabled:Z

    if-eqz v0, :cond_1

    .line 1847
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "ScreenRecorderEnabled force return"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    return-void

    .line 1851
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    if-eqz v0, :cond_2

    .line 1852
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1853
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1854
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GPIS::SetProfile Disable Fail"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    :cond_2
    :goto_0
    return-void
.end method

.method public setLauncherPidInitialized(Z)V
    .locals 0
    .param p1, "launcherInit"    # Z

    .line 1664
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1665
    return-void
.end method

.method public supportVRTemperaturesInformation(Ljava/lang/String;II)[F
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "source"    # I

    .line 426
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public triggerAnimationBoost(I)V
    .locals 10
    .param p1, "timeout"    # I

    .line 1436
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerAnimationBoostQC(I)V

    .line 1438
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 1446
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1448
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getThreadForType(I)Ljava/util/Vector;

    move-result-object v1

    .line 1450
    .local v1, "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1451
    .local v3, "tid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Launch anim task_boost trigger tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1453
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x402611

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 1455
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1456
    .end local v3    # "tid":I
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1457
    :cond_2
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1458
    nop

    .end local v1    # "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 1459
    return-void

    .line 1458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1442
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Error... TopAppManager or MultiTaskBoost sysfs is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method public triggerAnimationBoostQC(I)V
    .locals 10
    .param p1, "timeout"    # I

    .line 1411
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_0

    .line 1412
    return-void

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mViBoostFramework:Landroid/util/BoostFramework;

    if-nez v0, :cond_1

    .line 1415
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mViBoostFramework:Landroid/util/BoostFramework;

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1418
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1419
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getThreadForType(I)Ljava/util/Vector;

    move-result-object v1

    .line 1420
    .local v1, "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1421
    .local v2, "idx":I
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 1423
    .local v3, "perfLockReqList":[I
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1424
    .local v5, "tid":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App Launch anim task_boost trigger tid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1425
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "idx":I
    .local v6, "idx":I
    const/high16 v9, 0x40cd0000    # 6.40625f

    aput v9, v3, v2

    .line 1426
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "idx":I
    .restart local v2    # "idx":I
    aput v5, v3, v6

    .line 1427
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1428
    .end local v5    # "tid":I
    goto :goto_0

    .line 1430
    :cond_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mViBoostFramework:Landroid/util/BoostFramework;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1431
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1432
    nop

    .end local v1    # "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v2    # "idx":I
    .end local v3    # "perfLockReqList":[I
    monitor-exit v0

    .line 1433
    return-void

    .line 1432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetGameTouchParam()V
    .locals 0

    .line 1018
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1024
    return-void
.end method

.method public updateUsingCgroupVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 1291
    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUsingCgroupVersion:I

    .line 1292
    return-void
.end method

.method public writeSysfs(ILjava/lang/String;)V
    .locals 1
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1767
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    return-void

    .line 1770
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerSysfsWrite(ILjava/lang/String;)V

    .line 1771
    return-void
.end method
