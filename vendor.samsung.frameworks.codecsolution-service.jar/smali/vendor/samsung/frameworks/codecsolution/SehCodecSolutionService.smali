.class public Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
.super Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;,
        Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;,
        Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$SCPMReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE.opus-offload-enable-list"

.field private static final HANDLER_MSG_LOGGING_EVENT:I = 0x384

.field private static final HANDLER_MSG_SCPM_GET_OPUSOFFLOAD_ENABLE_PROPERTY:I = 0x3e8

.field private static final HANDLER_MSG_SCPM_V2_REGISTER:I = 0xd2

.field private static final HANDLER_MSG_SEND_BROADCAST:I = 0x320

.field private static final HANDLER_MSG_SEND_BROADCAST_WITH_DATA:I = 0x321

.field private static final HANDLER_MSG_SET_SMARTFITTING_PID:I = 0xca

.field private static final HANDLER_MSG_START_SMART_FITTING_SERVICE:I = 0xc8

.field private static final HANDLER_MSG_STOP_SMART_FITTING_SERVICE:I = 0xc9

.field private static final INTENT_DOLBY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DOLBY_CONTENT_PLAYBACK_STATE_CHANGED"

.field private static final MAX_PID_DUMP_COUNT:I = 0x100

.field private static final MODEL_NAME:Ljava/lang/String;

.field private static final OPUS_VERSION:I = 0x65

.field public static final SERVICE_VERSION:Ljava/lang/String; = "2.3"

.field private static final TAG:Ljava/lang/String; = "SehCodecSolutionService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBootCompleted:Z

.field private mLogging:Lvendor/samsung/frameworks/codecsolution/Logging;

.field private mOpusRunnable:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;

.field private mPidDumpIndex:I

.field private mPidDumpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSCPMReceiver:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$SCPMReceiver;

.field private mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

.field private mSmartFittingMode:I

.field private mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManager(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/app/ActivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogging(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/Logging;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mLogging:Lvendor/samsung/frameworks/codecsolution/Logging;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpusRunnable(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mOpusRunnable:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I
    .locals 0

    .line 1
    iget p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$misBootCompleted(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->isBootCompleted()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetMODEL_NAME()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->MODEL_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->MODEL_NAME:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v1, 0x100

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    const-string v0, "SehCodecSolutionService"

    .line 24
    .line 25
    const-string v2, "create : 2.3"

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/Logging;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/codecsolution/Logging;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mLogging:Lvendor/samsung/frameworks/codecsolution/Logging;

    .line 38
    .line 39
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string v0, "activity"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/app/ActivityManager;

    .line 48
    .line 49
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    .line 51
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v0, "window"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/view/WindowManager;

    .line 60
    .line 61
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    .line 63
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 68
    .line 69
    new-instance p1, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 70
    .line 71
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 77
    .line 78
    new-instance p1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;-><init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mOpusRunnable:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;

    .line 84
    .line 85
    :goto_0
    if-ge p2, v1, :cond_0

    .line 86
    .line 87
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    .line 88
    .line 89
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    .line 90
    .line 91
    invoke-direct {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;

    .line 101
    .line 102
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p0, p2}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;-><init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;Landroid/os/Looper;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 110
    .line 111
    return-void
.end method

.method private isBootCompleted()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mIsBootCompleted:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "sys.boot_completed"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    iput-boolean v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mIsBootCompleted:Z

    .line 17
    .line 18
    :cond_1
    iget-boolean p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mIsBootCompleted:Z

    .line 19
    .line 20
    return p0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "dump : Permission denial, pid = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SehCodecSolutionService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    const-string p1, "SCPMv2 is available"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "H2SCAllowlistVersion : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    invoke-virtual {p3}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getH2SCAllowlistVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    const-string p1, "SCPMv2 is not available"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    :goto_0
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const-string p1, "List : "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 10
    const-string p0, "List is null."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 12
    const-string p0, "List size is 0."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    :try_start_0
    iget p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 p3, 0x100

    const-string v0, " "

    if-ge p1, p3, :cond_5

    .line 14
    :try_start_1
    iget-object p3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget p3, p3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    if-eqz p3, :cond_4

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v0, v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 16
    :goto_2
    iget p3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpIndex:I

    if-ge p1, p3, :cond_7

    .line 17
    iget-object p3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget p3, p3, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    if-eqz p3, :cond_6

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v1, v1, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 19
    :catch_0
    const-string p0, "Unexpected exception."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public getDisplaySize()Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;
    .locals 2

    .line 1
    new-instance p0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;

    .line 2
    .line 3
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->width:I

    .line 8
    .line 9
    iput v0, p0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->height:I

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "w:"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->width:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " h:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;->height:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "SehCodecSolutionService"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method public getH2SCAllowlistStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 2
    .line 3
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "SehCodecSolutionService"

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "getH2SCAllowlistStatus : procName("

    .line 19
    .line 20
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "), chipVendor("

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, "), H2SCAllowlistVersion("

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 40
    .line 41
    invoke-virtual {v3}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getH2SCAllowlistVersion()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ")"

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 61
    .line 62
    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    const-string p1, "v2 token is null, send msg to register"

    .line 69
    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    const/16 p2, 0xd2

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    .line 85
    .line 86
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSCPMV2Helper:Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isInH2SCAllowlist(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_0
    sget-object p1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 96
    .line 97
    if-ne p0, p1, :cond_1

    .line 98
    .line 99
    const/4 p0, 0x1

    .line 100
    return p0

    .line 101
    :cond_1
    return v1

    .line 102
    :cond_2
    const-string p0, "SCPMV2 is not available"

    .line 103
    .line 104
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return v1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "051b4eeec63a9059be5d446da356f2abf92c3874"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getSmartFittingAllowlistStatus()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSmartFittingMode()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getSmartFittingMode : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSmartFittingMode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SehCodecSolutionService"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSmartFittingMode:I

    .line 23
    .line 24
    return p0
.end method

.method public getVideoRecordingParameter(J)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    .locals 2

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "getVideoRecordingParameter id : "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "SehCodecSolutionService"

    .line 28
    .line 29
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public hideSmartFittingButton()V
    .locals 0

    .line 1
    return-void
.end method

.method public isDesktopMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isSmartFittingSupportedRatio()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setAutoFitMode(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBlackbarState(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSmartFittingMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setSmartFittingMode : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SehCodecSolutionService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mSmartFittingMode:I

    .line 21
    .line 22
    return-void
.end method

.method public setSmartFittingPid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0xca

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setVideoRecordingParameter(JLvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setVideoRecordingParameter id : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SehCodecSolutionService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mVideoRecordingParameterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public showSmartFittingButton()V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized startSmartFittingService()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public declared-synchronized stopSmartFittingService()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public updateMediaStatisticsData(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "SehCodecSolutionService"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "data is null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "updateMediaStatisticsData: ("

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ")"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    const/16 v1, 0x384

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public updateStreamStatus(IZI)V
    .locals 2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x321

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v0, "intent"

    const-string v1, "com.samsung.intent.action.ACTION_DOLBY_CONTENT_PLAYBACK_STATE_CHANGED"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "PLAYBACK_STATE"

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    :goto_1
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
