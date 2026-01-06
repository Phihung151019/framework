.class public Lcom/qualcomm/qti/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;,
        Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;
    }
.end annotation


# static fields
.field private static blacklist ACTION_GRE_LAUNCH:Ljava/lang/String; = null

.field private static final blacklist ACTIVITY_LAUNCH_BOOST:I = 0xa

.field private static final blacklist BOOST_V1:I = 0x1

.field private static final blacklist BOOST_V1_ARGS:I = 0x2

.field private static final blacklist DEBUG:Z = false

.field private static blacklist DEF_PERF_HAL:D = 0.0

.field public static final blacklist FD_COUNT_HINT_CAP:I = 0x12

.field public static final blacklist GAME:I = 0x2

.field private static blacklist GRE_ENABLE:Ljava/lang/Boolean; = null

.field private static final blacklist LL_FB_TYP_FD_THRD_STATE:I = 0x5

.field private static final blacklist PERF_SERVICE_BINDER_NAME:Ljava/lang/String; = "vendor.perfservice"

.field private static blacklist PKGNAME_GENSHIN:Ljava/lang/String; = null

.field private static blacklist PKGNAME_GRE:Ljava/lang/String; = null

.field private static final blacklist PROP_GRE_ENABLE:Ljava/lang/String; = "vendor.perf.gre.enable"

.field public static final blacklist REQUEST_FAILED:I = -0x1

.field public static final blacklist REQUEST_SUCCEEDED:I = 0x0

.field private static blacklist RestrictUnTrustedAppAccess:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "Perf"

.field private static final blacklist THRD_STATE_VALID:I = 0x1

.field public static final blacklist TYPE_START_PROC:I = 0x65

.field public static final blacklist VENDOR_APP_LAUNCH_HINT:I = 0x1081

.field public static final blacklist VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final blacklist VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final blacklist VENDOR_HINT_FD_COUNT:I = 0x1007

.field private static blacklist clientBinder:Landroid/os/IBinder; = null

.field private static blacklist mContext:Landroid/content/Context; = null

.field private static blacklist mIntent:Landroid/content/Intent; = null

.field private static final blacklist mLALPerfProp:Ljava/lang/String; = "ro.vendor.perf.lal"

.field private static final blacklist mLGLPerfProp:Ljava/lang/String; = "ro.vendor.perf.lgl"

.field private static blacklist mLaunchPropAcq:I = 0x0

.field private static blacklist mMaxLLCallTries:I = 0x0

.field private static blacklist sIsChecked:Ljava/lang/Boolean; = null

.field private static blacklist sIsPlatformOrPrivApp:Z = false

.field private static blacklist sIsUntrustedDomain:Z = false

.field private static blacklist sLoaded:Z = false

.field private static blacklist sPerfService:Lcom/qualcomm/qti/IPerfManager; = null

.field private static blacklist sPerfServiceBinder:Landroid/os/IBinder; = null

.field private static blacklist sPerfServiceDeathRecipient:Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient; = null

.field private static final blacklist sPerfServiceDisabled:Z = false


# instance fields
.field private final blacklist PID_REQ_TH:I

.field private blacklist UXE_EVENT_BINDAPP:I

.field private blacklist mAppSample:I

.field private blacklist mFDCountData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGameSample:I

.field private blacklist mHandle:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mLLFeatureStateLock:Ljava/lang/Object;

.field private blacklist mLastPid:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPIDWaitSleepTime:I

.field private final blacklist mPidLock:Ljava/lang/Object;

.field private blacklist mSleepTime:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppSample(Lcom/qualcomm/qti/Performance;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/Performance;->mAppSample:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFDCountData(Lcom/qualcomm/qti/Performance;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGameSample(Lcom/qualcomm/qti/Performance;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/Performance;->mGameSample:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastPid(Lcom/qualcomm/qti/Performance;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/qualcomm/qti/Performance;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPIDWaitSleepTime(Lcom/qualcomm/qti/Performance;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/Performance;->mPIDWaitSleepTime:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPidLock(Lcom/qualcomm/qti/Performance;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSleepTime(Lcom/qualcomm/qti/Performance;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/Performance;->mSleepTime:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastPid(Lcom/qualcomm/qti/Performance;I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDirectoryFileCount(Lcom/qualcomm/qti/Performance;Ljava/io/File;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->getDirectoryFileCount(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLaunchFeatureInitState(Lcom/qualcomm/qti/Performance;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->getLaunchFeatureInitState(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLaunchFeatureThreadStatePid(Lcom/qualcomm/qti/Performance;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->getLaunchFeatureThreadStatePid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessFDInfo(Lcom/qualcomm/qti/Performance;IILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/Performance;->processFDInfo(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForPID(Lcom/qualcomm/qti/Performance;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/Performance;->waitForPID(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_GRE_LAUNCH()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->ACTION_GRE_LAUNCH:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetGRE_ENABLE()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->GRE_ENABLE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPKGNAME_GENSHIN()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->PKGNAME_GENSHIN:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPKGNAME_GRE()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->PKGNAME_GRE:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsPerfServiceBinder()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputGRE_ENABLE(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/Performance;->GRE_ENABLE:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsPerfService(Lcom/qualcomm/qti/IPerfManager;)V
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsPerfServiceBinder(Landroid/os/IBinder;)V
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 45
    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 45
    sput-boolean v0, Lcom/qualcomm/qti/Performance;->sLoaded:Z

    .line 48
    const/4 v2, 0x1

    sput-boolean v2, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    .line 49
    sput-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    .line 51
    sput-object v1, Lcom/qualcomm/qti/Performance;->sIsChecked:Ljava/lang/Boolean;

    .line 56
    sput-boolean v0, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    .line 57
    const-wide v2, 0x40019999a0000000L    # 2.200000047683716

    sput-wide v2, Lcom/qualcomm/qti/Performance;->DEF_PERF_HAL:D

    .line 65
    const-string v0, "com.qualcomm.qti.gameruntimeengine"

    sput-object v0, Lcom/qualcomm/qti/Performance;->PKGNAME_GRE:Ljava/lang/String;

    .line 66
    const-string v0, "com.miHoYo.Yuanshen"

    sput-object v0, Lcom/qualcomm/qti/Performance;->PKGNAME_GENSHIN:Ljava/lang/String;

    .line 67
    const-string v0, "com.qualcomm.qti.gameruntimeengine.APP_LAUNCH"

    sput-object v0, Lcom/qualcomm/qti/Performance;->ACTION_GRE_LAUNCH:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/qualcomm/qti/Performance;->GRE_ENABLE:Ljava/lang/Boolean;

    .line 89
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    .line 91
    const/4 v0, 0x5

    sput v0, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/Performance;->UXE_EVENT_BINDAPP:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    .line 75
    const/16 v1, 0x1e

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mSleepTime:I

    .line 76
    const/16 v1, 0x78

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mPIDWaitSleepTime:I

    .line 77
    const/4 v1, 0x3

    iput v1, p0, Lcom/qualcomm/qti/Performance;->PID_REQ_TH:I

    .line 78
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mGameSample:I

    .line 79
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mAppSample:I

    .line 85
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    .line 130
    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/Performance;->UXE_EVENT_BINDAPP:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    .line 75
    const/16 v1, 0x1e

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mSleepTime:I

    .line 76
    const/16 v1, 0x78

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mPIDWaitSleepTime:I

    .line 77
    const/4 v1, 0x3

    iput v1, p0, Lcom/qualcomm/qti/Performance;->PID_REQ_TH:I

    .line 78
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mGameSample:I

    .line 79
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mAppSample:I

    .line 85
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    .line 130
    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    .line 99
    sput-object p1, Lcom/qualcomm/qti/Performance;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    .line 101
    sget-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    sget-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.workloadclassifier.APP_LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    sget-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.workloadclassifier"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :cond_0
    const-class v0, Lcom/qualcomm/qti/Performance;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sLoaded:Z

    if-nez v1, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/qualcomm/qti/Performance;->connectPerfServiceLocked()V

    .line 111
    sget-object v1, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-nez v1, :cond_1

    .line 112
    const-string v1, "Perf"

    const-string v2, "Perf service is unavailable."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/qti/Performance;->sLoaded:Z

    .line 116
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->checkAppPlatformSigned(Landroid/content/Context;)V

    .line 119
    return-void

    .line 116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public constructor blacklist <init>(Z)V
    .locals 2
    .param p1, "isUntrusterdDomain"    # Z

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/Performance;->UXE_EVENT_BINDAPP:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    .line 75
    const/16 v1, 0x1e

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mSleepTime:I

    .line 76
    const/16 v1, 0x78

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mPIDWaitSleepTime:I

    .line 77
    const/4 v1, 0x3

    iput v1, p0, Lcom/qualcomm/qti/Performance;->PID_REQ_TH:I

    .line 78
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mGameSample:I

    .line 79
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mAppSample:I

    .line 85
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    .line 130
    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    .line 123
    sput-boolean p1, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    .line 124
    return-void
.end method

.method private blacklist checkAppPlatformSigned(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 508
    sget-object v0, Lcom/qualcomm/qti/Performance;->sIsChecked:Ljava/lang/Boolean;

    monitor-enter v0

    .line 509
    if-eqz p1, :cond_5

    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/Performance;->sIsChecked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 512
    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 514
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 516
    .local v3, "sys":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 519
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 520
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v4, v1

    :cond_3
    sput-boolean v4, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    .line 523
    if-eqz v2, :cond_4

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 525
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 527
    sput-boolean v1, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "sys":Landroid/content/pm/PackageInfo;
    :cond_4
    goto :goto_0

    .line 529
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v3, "Perf"

    const-string v4, "packageName is not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sput-boolean v1, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    .line 533
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/qti/Performance;->sIsChecked:Ljava/lang/Boolean;

    .line 536
    monitor-exit v0

    .line 537
    return-void

    .line 509
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist connectPerfServiceLocked()V
    .locals 4

    .line 134
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-nez v0, :cond_3

    .line 137
    const-string v0, "Connecting to perf service."

    const-string v1, "Perf"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "vendor.perfservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    .line 140
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "Perf service is now down, set sPerfService as null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;-><init>(Lcom/qualcomm/qti/Performance;Lcom/qualcomm/qti/Performance-IA;)V

    sput-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceDeathRecipient:Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;

    .line 148
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfServiceDeathRecipient:Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    nop

    .line 154
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/qualcomm/qti/IPerfManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/IPerfManager;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    .line 157
    :cond_1
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_2

    .line 159
    :try_start_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/Performance;->clientBinder:Landroid/os/IBinder;

    .line 160
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    sget-object v1, Lcom/qualcomm/qti/Performance;->clientBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/IPerfManager;->setClientBinder(Landroid/os/IBinder;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "Perf service is now down, leave sPerfService as null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    return-void
.end method

.method private blacklist deInitLLHandlerCallback()V
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const-string v0, "Perf"

    const-string v1, "Exiting LL handler Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;

    .line 840
    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    .line 842
    :cond_0
    return-void
.end method

.method private blacklist getDirectoryFileCount(Ljava/io/File;)I
    .locals 5
    .param p1, "folder"    # Ljava/io/File;

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "size":I
    const/4 v1, 0x0

    .line 593
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 594
    return v2

    .line 596
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 597
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 598
    return v2

    .line 599
    :cond_1
    array-length v2, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 602
    .end local v3    # "files":[Ljava/io/File;
    goto :goto_0

    .line 600
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFolderSize () : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Perf"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    return v0
.end method

.method private blacklist getLaunchFeatureInitState(I)Z
    .locals 7
    .param p1, "immediate"    # I

    .line 753
    invoke-virtual {p0}, Lcom/qualcomm/qti/Performance;->perfGetHalVer()D

    move-result-wide v0

    sget-wide v2, Lcom/qualcomm/qti/Performance;->DEF_PERF_HAL:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 754
    return v1

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 757
    return v1

    .line 759
    :cond_1
    const/4 v0, 0x0

    .line 760
    .local v0, "retVal":Z
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 761
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    :try_start_0
    sget v4, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    if-gez v4, :cond_6

    sget v4, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    if-lez v4, :cond_6

    .line 762
    const-string v4, "ro.vendor.perf.lal"

    const-string v5, "none"

    invoke-virtual {p0, v4, v5}, Lcom/qualcomm/qti/Performance;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, "lalProp":Ljava/lang/String;
    const-string v5, "ro.vendor.perf.lgl"

    const-string v6, "none"

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/Performance;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 764
    .local v5, "lglProp":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 768
    :cond_2
    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 773
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 769
    :cond_4
    :goto_0
    sput v1, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    .line 770
    sput v1, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    .line 771
    const/4 v0, 0x0

    goto :goto_2

    .line 765
    :cond_5
    :goto_1
    sput v3, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    .line 766
    sput v1, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    .line 767
    const/4 v0, 0x1

    .line 775
    :goto_2
    sget v1, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    if-lez v1, :cond_7

    .line 776
    sget v1, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    sub-int/2addr v1, v3

    sput v1, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    goto :goto_3

    .line 778
    .end local v4    # "lalProp":Ljava/lang/String;
    .end local v5    # "lglProp":Ljava/lang/String;
    :cond_6
    sget v1, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    if-ne v1, v3, :cond_7

    .line 779
    const/4 v0, 0x1

    goto :goto_4

    .line 778
    :cond_7
    :goto_3
    nop

    .line 781
    :goto_4
    if-gez p1, :cond_9

    .line 782
    sget v1, Lcom/qualcomm/qti/Performance;->mMaxLLCallTries:I

    if-gtz v1, :cond_8

    sget v1, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    if-gtz v1, :cond_8

    .line 783
    invoke-direct {p0}, Lcom/qualcomm/qti/Performance;->deInitLLHandlerCallback()V

    .line 784
    const/4 v0, 0x0

    goto :goto_5

    .line 786
    :cond_8
    const/4 v0, 0x1

    .line 789
    :cond_9
    :goto_5
    monitor-exit v2

    .line 790
    return v0

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getLaunchFeatureThreadStatePid(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 819
    const/4 v0, -0x1

    .line 820
    .local v0, "retval":I
    invoke-virtual {p0}, Lcom/qualcomm/qti/Performance;->perfGetHalVer()D

    move-result-wide v1

    sget-wide v3, Lcom/qualcomm/qti/Performance;->DEF_PERF_HAL:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 821
    return v0

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 824
    return v0

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mLLFeatureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_0
    sget v2, Lcom/qualcomm/qti/Performance;->mLaunchPropAcq:I

    if-lez v2, :cond_2

    .line 828
    const/4 v2, 0x5

    filled-new-array {v2}, [I

    move-result-object v2

    const/16 v3, 0x1602

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/qualcomm/qti/Performance;->perfGetFeedbackExtn(ILjava/lang/String;I[I)I

    move-result v2

    move v0, v2

    .line 831
    :cond_2
    monitor-exit v1

    .line 832
    return v0

    .line 831
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist initLLHandlerCallback(Landroid/os/HandlerThread;)V
    .locals 4
    .param p1, "handlerThread"    # Landroid/os/HandlerThread;

    .line 609
    :try_start_0
    new-instance v0, Lcom/qualcomm/qti/Performance$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/Performance$1;-><init>(Lcom/qualcomm/qti/Performance;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Starting Handler Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Perf"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private native blacklist native_perf_event(ILjava/lang/String;I[I)V
.end method

.method private native blacklist native_perf_get_feedback(ILjava/lang/String;)I
.end method

.method private native blacklist native_perf_get_feedback_extn(ILjava/lang/String;I[I)I
.end method

.method private native blacklist native_perf_get_hal_ver()D
.end method

.method private native blacklist native_perf_get_prop(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native blacklist native_perf_hint(ILjava/lang/String;II)I
.end method

.method private native blacklist native_perf_hint_acq_rel(IILjava/lang/String;III[I)I
.end method

.method private native blacklist native_perf_hint_rel(I)I
.end method

.method private native blacklist native_perf_hint_renew(IILjava/lang/String;III[I)I
.end method

.method private native blacklist native_perf_io_prefetch_start(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native blacklist native_perf_io_prefetch_stop()I
.end method

.method private native blacklist native_perf_lock_acq(II[I)I
.end method

.method private native blacklist native_perf_lock_acq_rel(IIII[I)I
.end method

.method private native blacklist native_perf_lock_rel(I)I
.end method

.method private native blacklist native_perf_sync_request(I)Ljava/lang/String;
.end method

.method private native blacklist native_perf_uxEngine_events(IILjava/lang/String;I)I
.end method

.method private native blacklist native_perf_uxEngine_trigger(I)Ljava/lang/String;
.end method

.method private blacklist processFDInfo(IILjava/lang/String;)I
    .locals 5
    .param p1, "pid"    # I
    .param p2, "count"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 570
    return v0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 574
    new-array v1, v2, [I

    .line 575
    .local v1, "list":[I
    nop

    .line 578
    const/4 v3, 0x0

    .line 579
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 580
    iget-object v4, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_1
    const/16 v2, 0x1007

    invoke-virtual {p0, v2, p3, v3, v1}, Lcom/qualcomm/qti/Performance;->perfEvent(ILjava/lang/String;I[I)V

    .line 583
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mFDCountData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "list":[I
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in processFDInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Perf"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private varargs blacklist processLaunchHint(ILjava/lang/String;II[I)I
    .locals 7
    .param p1, "hint"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "numArgs"    # I
    .param p5, "list"    # [I

    .line 709
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/Performance;->getLaunchFeatureInitState(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 710
    return v1

    .line 712
    :cond_0
    const/16 v0, 0x1081

    if-ne p1, v0, :cond_4

    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    const/4 v2, 0x2

    if-ne p4, v2, :cond_4

    .line 713
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    .line 716
    :try_start_1
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Perf-FDM"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    .line 717
    iget-object v3, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    .line 718
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 720
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 721
    iget-object v3, p0, Lcom/qualcomm/qti/Performance;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/Performance;->initLLHandlerCallback(Landroid/os/HandlerThread;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 724
    goto :goto_0

    .line 722
    :catch_0
    move-exception v3

    .line 723
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Perf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in Starting Handler Thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 727
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    .line 728
    const-string v0, "Perf"

    const-string v2, "Handler is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 730
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    aget v3, p5, v0

    if-eq v2, v3, :cond_4

    .line 731
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_5
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 733
    .local v3, "msg":Landroid/os/Message;
    nop

    .line 734
    aget v4, p5, v0

    iput v4, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    .line 735
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 737
    iput p3, v3, Landroid/os/Message;->arg2:I

    .line 738
    aget v0, p5, v0

    iput v0, v3, Landroid/os/Message;->what:I

    .line 739
    aget v0, p5, v1

    iput v0, v3, Landroid/os/Message;->sendingUid:I

    .line 740
    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    .end local v3    # "msg":Landroid/os/Message;
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 726
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 746
    :cond_4
    :goto_1
    return v1
.end method

.method private blacklist waitForPID(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 794
    const/4 v0, 0x1

    .line 795
    .local v0, "extPid":I
    const/4 v1, 0x0

    .local v1, "pidReqCount":I
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 796
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->getLaunchFeatureThreadStatePid(Ljava/lang/String;)I

    move-result v0

    .line 797
    if-le v0, v3, :cond_0

    .line 798
    goto :goto_2

    .line 801
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/qualcomm/qti/Performance;->mPIDWaitSleepTime:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    goto :goto_1

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 795
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    .end local v1    # "pidReqCount":I
    :cond_1
    :goto_2
    if-le v0, v3, :cond_2

    if-eq v0, p2, :cond_2

    .line 808
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mPidLock:Ljava/lang/Object;

    monitor-enter v1

    .line 809
    :try_start_1
    iput v0, p0, Lcom/qualcomm/qti/Performance;->mLastPid:I

    .line 810
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 812
    :cond_2
    :goto_3
    return v0
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    .line 844
    invoke-direct {p0}, Lcom/qualcomm/qti/Performance;->deInitLLHandlerCallback()V

    .line 845
    return-void
.end method

.method public varargs blacklist perfEvent(ILjava/lang/String;I[I)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "numArgs"    # I
    .param p4, "list"    # [I

    .line 427
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/Performance;->native_perf_event(ILjava/lang/String;I[I)V

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    goto :goto_0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_1

    .line 433
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    .end local p1    # "eventId":I
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .local v3, "eventId":I
    .local v4, "pkg_name":Ljava/lang/String;
    .local v6, "numArgs":I
    .local v7, "list":[I
    :try_start_1
    invoke-interface/range {v2 .. v7}, Lcom/qualcomm/qti/IPerfManager;->perfEvent(ILjava/lang/String;II[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    nop

    .line 440
    :try_start_2
    monitor-exit v1

    .line 442
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 435
    .end local v3    # "eventId":I
    .end local v4    # "pkg_name":Ljava/lang/String;
    .end local v6    # "numArgs":I
    .end local v7    # "list":[I
    .restart local p1    # "eventId":I
    .restart local p2    # "pkg_name":Ljava/lang/String;
    .restart local p3    # "numArgs":I
    .restart local p4    # "list":[I
    :cond_1
    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    .end local p1    # "eventId":I
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .restart local v3    # "eventId":I
    .restart local v4    # "pkg_name":Ljava/lang/String;
    .restart local v6    # "numArgs":I
    .restart local v7    # "list":[I
    monitor-exit v1

    return-void

    .line 440
    .end local v3    # "eventId":I
    .end local v4    # "pkg_name":Ljava/lang/String;
    .end local v6    # "numArgs":I
    .end local v7    # "list":[I
    .restart local p1    # "eventId":I
    .restart local p2    # "pkg_name":Ljava/lang/String;
    .restart local p3    # "numArgs":I
    .restart local p4    # "list":[I
    :catchall_0
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "eventId":I
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .restart local v3    # "eventId":I
    .restart local v4    # "pkg_name":Ljava/lang/String;
    .restart local v6    # "numArgs":I
    .restart local v7    # "list":[I
    goto :goto_2

    .line 436
    .end local v3    # "eventId":I
    .end local v4    # "pkg_name":Ljava/lang/String;
    .end local v6    # "numArgs":I
    .end local v7    # "list":[I
    .restart local p1    # "eventId":I
    .restart local p2    # "pkg_name":Ljava/lang/String;
    .restart local p3    # "numArgs":I
    .restart local p4    # "list":[I
    :catch_1
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move-object p1, v0

    .line 437
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .restart local v3    # "eventId":I
    .restart local v4    # "pkg_name":Ljava/lang/String;
    .restart local v6    # "numArgs":I
    .restart local v7    # "list":[I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1
    const-string p2, "Perf"

    const-string p3, "Error calling perfEvent"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    monitor-exit v1

    return-void

    .line 440
    .end local p1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public blacklist perfGetFeedback(ILjava/lang/String;)I
    .locals 2
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .line 339
    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qualcomm/qti/Performance;->perfGetFeedbackExtn(ILjava/lang/String;I[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfGetFeedbackExtn(ILjava/lang/String;I[I)I
    .locals 10
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "numArgs"    # I
    .param p4, "list"    # [I

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "mInfo":I
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/Performance;->native_perf_get_feedback_extn(ILjava/lang/String;I[I)I

    move-result v0

    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object v9, p4

    .end local v1    # "mInfo":I
    .local v0, "mInfo":I
    goto :goto_0

    .line 348
    .end local v0    # "mInfo":I
    .restart local v1    # "mInfo":I
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 350
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_2

    .line 351
    sget-object v4, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object v9, p4

    .end local p1    # "req":I
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .local v5, "req":I
    .local v6, "pkg_name":Ljava/lang/String;
    .local v8, "numArgs":I
    .local v9, "list":[I
    :try_start_1
    invoke-interface/range {v4 .. v9}, Lcom/qualcomm/qti/IPerfManager;->perfGetFeedbackExtn(ILjava/lang/String;II[I)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, p1

    .line 357
    nop

    .line 358
    :try_start_2
    monitor-exit v3

    move v0, v1

    .line 360
    .end local v1    # "mInfo":I
    .restart local v0    # "mInfo":I
    :goto_0
    if-gtz v0, :cond_1

    .line 361
    return v2

    .line 363
    :cond_1
    return v0

    .line 354
    .end local v0    # "mInfo":I
    .restart local v1    # "mInfo":I
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 353
    .end local v5    # "req":I
    .end local v6    # "pkg_name":Ljava/lang/String;
    .end local v8    # "numArgs":I
    .end local v9    # "list":[I
    .restart local p1    # "req":I
    .restart local p2    # "pkg_name":Ljava/lang/String;
    .restart local p3    # "numArgs":I
    .restart local p4    # "list":[I
    :cond_2
    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object v9, p4

    .end local p1    # "req":I
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .restart local v5    # "req":I
    .restart local v6    # "pkg_name":Ljava/lang/String;
    .restart local v8    # "numArgs":I
    .restart local v9    # "list":[I
    monitor-exit v3

    return v2

    .line 358
    .end local v5    # "req":I
    .end local v6    # "pkg_name":Ljava/lang/String;
    .end local v8    # "numArgs":I
    .end local v9    # "list":[I
    .restart local p1    # "req":I
    .restart local p2    # "pkg_name":Ljava/lang/String;
    .restart local p3    # "numArgs":I
    .restart local p4    # "list":[I
    :catchall_0
    move-exception v0

    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object v9, p4

    move-object p1, v0

    .end local p1    # "req":I
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .restart local v5    # "req":I
    .restart local v6    # "pkg_name":Ljava/lang/String;
    .restart local v8    # "numArgs":I
    .restart local v9    # "list":[I
    goto :goto_2

    .line 354
    .end local v5    # "req":I
    .end local v6    # "pkg_name":Ljava/lang/String;
    .end local v8    # "numArgs":I
    .end local v9    # "list":[I
    .restart local p1    # "req":I
    .restart local p2    # "pkg_name":Ljava/lang/String;
    .restart local p3    # "numArgs":I
    .restart local p4    # "list":[I
    :catch_1
    move-exception v0

    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object v9, p4

    move-object p1, v0

    .line 355
    .end local p2    # "pkg_name":Ljava/lang/String;
    .end local p3    # "numArgs":I
    .end local p4    # "list":[I
    .restart local v5    # "req":I
    .restart local v6    # "pkg_name":Ljava/lang/String;
    .restart local v8    # "numArgs":I
    .restart local v9    # "list":[I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1
    const-string p2, "Perf"

    const-string p3, "Error calling perfGetFeedbackExtn"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    monitor-exit v3

    return v2

    .line 358
    .end local p1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public blacklist perfGetHalVer()D
    .locals 3

    .line 560
    sget-wide v0, Lcom/qualcomm/qti/Performance;->DEF_PERF_HAL:D

    .line 561
    .local v0, "def_val":D
    sget-boolean v2, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v2, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/qualcomm/qti/Performance;->native_perf_get_hal_ver()D

    move-result-wide v0

    .line 564
    :cond_0
    return-wide v0
.end method

.method public blacklist perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prop_name"    # Ljava/lang/String;
    .param p2, "def_val"    # Ljava/lang/String;

    .line 552
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/Performance;->native_perf_get_prop(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    return-object p2
.end method

.method public blacklist perfHint(ILjava/lang/String;II)I
    .locals 9
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I

    .line 307
    sget-object v0, Lcom/qualcomm/qti/Performance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/Performance;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/16 v0, 0x1081

    if-ne p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p4, v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;-><init>(Lcom/qualcomm/qti/Performance;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/Performance;->native_perf_hint(ILjava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 318
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    if-nez v0, :cond_3

    .line 320
    sget-object v3, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    .line 321
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "hint":I
    .end local p2    # "userDataStr":Ljava/lang/String;
    .end local p3    # "userData1":I
    .end local p4    # "userData2":I
    .local v4, "hint":I
    .local v5, "userDataStr":Ljava/lang/String;
    .local v6, "userData1":I
    .local v7, "userData2":I
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lcom/qualcomm/qti/IPerfManager;->perfHint(ILjava/lang/String;III)I

    move-result p1

    iput p1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    nop

    .line 329
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    :goto_0
    iget p1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    if-gtz p1, :cond_2

    .line 332
    return v1

    .line 334
    :cond_2
    iget p1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    return p1

    .line 325
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 318
    .end local v4    # "hint":I
    .end local v5    # "userDataStr":Ljava/lang/String;
    .end local v6    # "userData1":I
    .end local v7    # "userData2":I
    .restart local p1    # "hint":I
    .restart local p2    # "userDataStr":Ljava/lang/String;
    .restart local p3    # "userData1":I
    .restart local p4    # "userData2":I
    :cond_3
    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 324
    .end local p1    # "hint":I
    .end local p2    # "userDataStr":Ljava/lang/String;
    .end local p3    # "userData1":I
    .end local p4    # "userData2":I
    .restart local v4    # "hint":I
    .restart local v5    # "userDataStr":Ljava/lang/String;
    .restart local v6    # "userData1":I
    .restart local v7    # "userData2":I
    :try_start_3
    monitor-exit v2

    return v1

    .line 329
    .end local v4    # "hint":I
    .end local v5    # "userDataStr":Ljava/lang/String;
    .end local v6    # "userData1":I
    .end local v7    # "userData2":I
    .restart local p1    # "hint":I
    .restart local p2    # "userDataStr":Ljava/lang/String;
    .restart local p3    # "userData1":I
    .restart local p4    # "userData2":I
    :catchall_0
    move-exception v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "hint":I
    .end local p2    # "userDataStr":Ljava/lang/String;
    .end local p3    # "userData1":I
    .end local p4    # "userData2":I
    .restart local v4    # "hint":I
    .restart local v5    # "userDataStr":Ljava/lang/String;
    .restart local v6    # "userData1":I
    .restart local v7    # "userData2":I
    goto :goto_2

    .line 325
    .end local v4    # "hint":I
    .end local v5    # "userDataStr":Ljava/lang/String;
    .end local v6    # "userData1":I
    .end local v7    # "userData2":I
    .restart local p1    # "hint":I
    .restart local p2    # "userDataStr":Ljava/lang/String;
    .restart local p3    # "userData1":I
    .restart local p4    # "userData2":I
    :catch_1
    move-exception v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object p1, v0

    .line 326
    .end local p2    # "userDataStr":Ljava/lang/String;
    .end local p3    # "userData1":I
    .end local p4    # "userData2":I
    .restart local v4    # "hint":I
    .restart local v5    # "userDataStr":Ljava/lang/String;
    .restart local v6    # "userData1":I
    .restart local v7    # "userData2":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1
    const-string p2, "Perf"

    const-string p3, "Error calling perfHint"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    monitor-exit v2

    return v1

    .line 329
    .end local p1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public varargs blacklist perfHintAcqRel(IILjava/lang/String;III[I)I
    .locals 17
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "type"    # I
    .param p6, "numArgs"    # I
    .param p7, "list"    # [I

    .line 447
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    const/4 v7, -0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 448
    invoke-direct/range {p0 .. p7}, Lcom/qualcomm/qti/Performance;->native_perf_hint_acq_rel(IILjava/lang/String;III[I)I

    move-result v0

    iput v0, v1, Lcom/qualcomm/qti/Performance;->mHandle:I

    goto :goto_0

    .line 450
    :cond_0
    iget-object v2, v1, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 452
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_2

    .line 453
    sget-object v8, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-interface/range {v8 .. v16}, Lcom/qualcomm/qti/IPerfManager;->perfHintAcqRel(IILjava/lang/String;IIII[I)I

    move-result v0

    iput v0, v1, Lcom/qualcomm/qti/Performance;->mHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    nop

    .line 460
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :goto_0
    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/Performance;->processLaunchHint(ILjava/lang/String;II[I)I

    .line 463
    iget v0, v1, Lcom/qualcomm/qti/Performance;->mHandle:I

    if-gtz v0, :cond_1

    .line 464
    return v7

    .line 466
    :cond_1
    iget v0, v1, Lcom/qualcomm/qti/Performance;->mHandle:I

    return v0

    .line 455
    :cond_2
    :try_start_2
    monitor-exit v2

    return v7

    .line 460
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfHintAcqRel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    monitor-exit v2

    return v7

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist perfHintRelease()I
    .locals 5

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "retValue":I
    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v1, :cond_0

    .line 224
    iget v1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/Performance;->native_perf_hint_rel(I)I

    move-result v0

    .line 225
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    .line 226
    return v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    if-nez v2, :cond_1

    .line 232
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    iget v3, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    invoke-interface {v2, v3}, Lcom/qualcomm/qti/IPerfManager;->perfLockReleaseHandler(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .end local v0    # "retValue":I
    .local v2, "retValue":I
    goto :goto_0

    .line 235
    .end local v2    # "retValue":I
    .restart local v0    # "retValue":I
    :cond_1
    const/4 v0, -0x1

    .line 239
    :goto_0
    nop

    .line 240
    :try_start_1
    monitor-exit v1

    .line 241
    return v0

    .line 240
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfHintRelease"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 240
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public varargs blacklist perfHintRenew(IILjava/lang/String;III[I)I
    .locals 12
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "type"    # I
    .param p6, "numArgs"    # I
    .param p7, "list"    # [I

    .line 471
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 472
    invoke-direct/range {p0 .. p7}, Lcom/qualcomm/qti/Performance;->native_perf_hint_renew(IILjava/lang/String;III[I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    goto :goto_0

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 476
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_2

    .line 477
    sget-object v3, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Lcom/qualcomm/qti/IPerfManager;->perfHintRenew(IILjava/lang/String;IIII[I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    nop

    .line 484
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :goto_0
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    if-gtz v0, :cond_1

    .line 487
    return v1

    .line 489
    :cond_1
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    return v0

    .line 479
    :cond_2
    :try_start_2
    monitor-exit v2

    return v1

    .line 484
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfHintRenew"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    monitor-exit v2

    return v1

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "PId"    # I
    .param p2, "Pkg_name"    # Ljava/lang/String;
    .param p3, "Code_path"    # Ljava/lang/String;

    .line 368
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/Performance;->native_perf_io_prefetch_start(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfIOPrefetchStop()I
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/qualcomm/qti/Performance;->native_perf_io_prefetch_stop()I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfLockAcqAndRelease(IIII[I)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "numArgs"    # I
    .param p4, "reserveNumArgs"    # I
    .param p5, "list"    # [I

    .line 401
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 402
    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/qti/Performance;->native_perf_lock_acq_rel(IIII[I)I

    move-result v0

    move v3, p1

    move-object p1, p0

    .end local p1    # "handle":I
    .local v3, "handle":I
    iput v0, p1, Lcom/qualcomm/qti/Performance;->mHandle:I

    move v4, p2

    goto :goto_0

    .line 401
    .end local v3    # "handle":I
    .restart local p1    # "handle":I
    :cond_0
    move v3, p1

    move-object p1, p0

    .line 404
    .end local p1    # "handle":I
    .restart local v3    # "handle":I
    iget-object v8, p1, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 407
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    if-nez v0, :cond_2

    .line 408
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .end local p2    # "duration":I
    .end local p3    # "numArgs":I
    .end local p4    # "reserveNumArgs":I
    .end local p5    # "list":[I
    .local v4, "duration":I
    .local v5, "numArgs":I
    .local v6, "reserveNumArgs":I
    .local v7, "list":[I
    :try_start_1
    invoke-interface/range {v2 .. v7}, Lcom/qualcomm/qti/IPerfManager;->perfLockAcqAndRelease(IIII[I)I

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "numArgs":I
    .end local v6    # "reserveNumArgs":I
    .end local v7    # "list":[I
    .restart local p3    # "numArgs":I
    .restart local p4    # "reserveNumArgs":I
    .restart local p5    # "list":[I
    :try_start_2
    iput p2, p1, Lcom/qualcomm/qti/Performance;->mHandle:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 416
    nop

    .line 417
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 419
    :goto_0
    iget p2, p1, Lcom/qualcomm/qti/Performance;->mHandle:I

    if-gtz p2, :cond_1

    .line 420
    return v1

    .line 422
    :cond_1
    iget p2, p1, Lcom/qualcomm/qti/Performance;->mHandle:I

    return p2

    .line 413
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 417
    .end local p3    # "numArgs":I
    .end local p4    # "reserveNumArgs":I
    .end local p5    # "list":[I
    .restart local v5    # "numArgs":I
    .restart local v6    # "reserveNumArgs":I
    .restart local v7    # "list":[I
    :catchall_0
    move-exception v0

    move p3, v5

    move p4, v6

    move-object p5, v7

    move-object p2, v0

    .end local v5    # "numArgs":I
    .end local v6    # "reserveNumArgs":I
    .end local v7    # "list":[I
    .restart local p3    # "numArgs":I
    .restart local p4    # "reserveNumArgs":I
    .restart local p5    # "list":[I
    goto :goto_2

    .line 413
    .end local p3    # "numArgs":I
    .end local p4    # "reserveNumArgs":I
    .end local p5    # "list":[I
    .restart local v5    # "numArgs":I
    .restart local v6    # "reserveNumArgs":I
    .restart local v7    # "list":[I
    :catch_1
    move-exception v0

    move p3, v5

    move p4, v6

    move-object p5, v7

    move-object p2, v0

    .end local v5    # "numArgs":I
    .end local v6    # "reserveNumArgs":I
    .end local v7    # "list":[I
    .restart local p3    # "numArgs":I
    .restart local p4    # "reserveNumArgs":I
    .restart local p5    # "list":[I
    goto :goto_1

    .line 407
    .end local v4    # "duration":I
    .restart local p2    # "duration":I
    :cond_2
    move v4, p2

    .line 411
    .end local p2    # "duration":I
    .restart local v4    # "duration":I
    :try_start_4
    monitor-exit v8

    return v1

    .line 417
    .end local v4    # "duration":I
    .restart local p2    # "duration":I
    :catchall_1
    move-exception v0

    move v4, p2

    move-object p2, v0

    .end local p2    # "duration":I
    .restart local v4    # "duration":I
    goto :goto_2

    .line 413
    .end local v4    # "duration":I
    .restart local p2    # "duration":I
    :catch_2
    move-exception v0

    move v4, p2

    move-object p2, v0

    .line 414
    .restart local v4    # "duration":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1
    const-string v0, "Perf"

    const-string v2, "Error calling perfLockAcqAndRelease"

    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    monitor-exit v8

    return v1

    .line 417
    .end local p2    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v0

    move-object p2, v0

    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p2
.end method

.method public varargs blacklist perfLockAcquire(I[I)I
    .locals 5
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 171
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 172
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/qualcomm/qti/Performance;->native_perf_lock_acq(II[I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    if-nez v2, :cond_2

    .line 178
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    array-length v3, p2

    invoke-interface {v2, p1, v3, p2}, Lcom/qualcomm/qti/IPerfManager;->perfLockAcquire(II[I)I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qti/Performance;->mHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    nop

    .line 187
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :goto_0
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    if-gtz v0, :cond_1

    .line 190
    return v1

    .line 192
    :cond_1
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    return v0

    .line 181
    :cond_2
    :try_start_2
    monitor-exit v0

    return v1

    .line 187
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfLockAcquire"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    monitor-exit v0

    return v1

    .line 187
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist perfLockRelease()I
    .locals 5

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "retValue":I
    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v1, :cond_0

    .line 199
    iget v1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/Performance;->native_perf_lock_rel(I)I

    move-result v0

    .line 200
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    .line 201
    return v0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    if-nez v2, :cond_1

    .line 207
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    iget v3, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    invoke-interface {v2, v3}, Lcom/qualcomm/qti/IPerfManager;->perfLockReleaseHandler(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .end local v0    # "retValue":I
    .local v2, "retValue":I
    goto :goto_0

    .line 210
    .end local v2    # "retValue":I
    .restart local v0    # "retValue":I
    :cond_1
    const/4 v0, -0x1

    .line 214
    :goto_0
    nop

    .line 215
    :try_start_1
    monitor-exit v1

    .line 216
    return v0

    .line 215
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfLockRelease"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 215
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .locals 5
    .param p1, "_handle"    # I

    .line 247
    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, "retValue":I
    iget-object v1, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/qualcomm/qti/Performance;->RestrictUnTrustedAppAccess:Z

    if-nez v2, :cond_1

    .line 255
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    invoke-interface {v2, p1}, Lcom/qualcomm/qti/IPerfManager;->perfLockReleaseHandler(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .end local v0    # "retValue":I
    .local v2, "retValue":I
    goto :goto_0

    .line 258
    .end local v2    # "retValue":I
    .restart local v0    # "retValue":I
    :cond_1
    const/4 v0, -0x1

    .line 262
    :goto_0
    nop

    .line 263
    :try_start_1
    monitor-exit v1

    .line 264
    return v0

    .line 263
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfLockRelease(handle)"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 263
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist perfSyncRequest(I)Ljava/lang/String;
    .locals 2
    .param p1, "opcode"    # I

    .line 499
    const-string v0, ""

    .line 500
    .local v0, "def_val":Ljava/lang/String;
    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sIsPlatformOrPrivApp:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/qualcomm/qti/Performance;->sIsUntrustedDomain:Z

    if-nez v1, :cond_0

    .line 501
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->native_perf_sync_request(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 503
    :cond_0
    return-object v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "lat"    # I
    .param p5, "CodePath"    # Ljava/lang/String;

    .line 378
    iget v0, p0, Lcom/qualcomm/qti/Performance;->UXE_EVENT_BINDAPP:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/qualcomm/qti/Performance;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    if-eqz v2, :cond_0

    .line 382
    sget-object v2, Lcom/qualcomm/qti/Performance;->sPerfService:Lcom/qualcomm/qti/IPerfManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/qualcomm/qti/IPerfManager;->perfUXEngine_events(IILjava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qti/Performance;->mHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    nop

    .line 389
    :try_start_1
    monitor-exit v0

    goto :goto_1

    .line 384
    :cond_0
    monitor-exit v0

    return v1

    .line 389
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Perf"

    const-string v4, "Error calling perfHint"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    monitor-exit v0

    return v1

    .line 389
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 392
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/Performance;->native_perf_uxEngine_events(IILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    .line 394
    :goto_1
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    if-gtz v0, :cond_2

    .line 395
    return v1

    .line 397
    :cond_2
    iget v0, p0, Lcom/qualcomm/qti/Performance;->mHandle:I

    return v0
.end method

.method public blacklist perfUXEngine_trigger(I)Ljava/lang/String;
    .locals 1
    .param p1, "opcode"    # I

    .line 495
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance;->native_perf_uxEngine_trigger(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
