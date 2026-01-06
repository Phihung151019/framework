.class public Lcom/samsung/android/server/wifi/SemApeController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeController$AppInfo;
    }
.end annotation


# static fields
.field private static final APE_APP_TYPE_NONE:I = 0x0

.field private static final APE_APP_TYPE_OTHER:I = 0x10

.field private static final APE_APP_TYPE_VOIP:I = 0x1

.field private static final APE_ENABLE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.ENABLE_APE"

.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final APE_EXTRA_MSG_TYPE_REAL_TIME_APP_INFO:Ljava/lang/String; = "REALTIME_APP_INFO"

.field private static final APE_EXTRA_MSG_TYPE_STREAMING_INFO:Ljava/lang/String; = "STREAMING_INFO"

.field private static final APE_EXTRA_PACKAGE:Ljava/lang/String; = "package"

.field private static final APE_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final APE_EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final APE_INFO_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.APE_INFO"

.field private static final APE_SET_POLICY_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.SET_APE_POLICY"

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_TITLE:Ljava/lang/String; = "SemApeController (v2.0.5) history:"

.field private static final EVENT_AUDIO_MODE_CHECKING_INTERVAL:I = 0xbb8

.field private static final EVENT_CHECK_FOREGROUND_PACKAGE:I = 0x5

.field private static final EVENT_DEFERRED_FOREGROUND_CHECK_INTERVAL:I = 0x3e8

.field private static final EVENT_DEFERRED_STOP_INTERVAL:I = 0x3e8

.field private static final EVENT_OPTIMIZER_STATE_UPDATED:I = 0x3

.field private static final EVENT_PERIODIC_CHECK_AUDIO_MODE:I = 0x2

.field private static final EVENT_SET_POLICY:I = 0x4

.field private static final EVENT_STREAMING_STATE_UPDATED:I = 0x6

.field private static final EVENT_VOIP_STARTED:I = 0x0

.field private static final EVENT_VOIP_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemApeController"

.field private static final VER:Ljava/lang/String; = "2.0.5"

.field private static mVerboseLoggingEnabled:Z = false


# instance fields
.field private mApeEnabled:Z

.field private final mAppInfos:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/SemApeController$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private final mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mForegroundAppUid:I

.field private mForegroundPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestApeInfo:I

.field private mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

.field private final mMediaListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyEnabled:Z

.field private mRingToneAppUid:I

.field private mStreamingUidList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoipAppUid:I

.field private mVoipPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$fse0DO-5XcshX_RoqaYwfzraUXM(Lcom/samsung/android/server/wifi/SemApeController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->lambda$registerWifiSafeModeListener$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApeEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppInfos(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/TreeMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioMode(Lcom/samsung/android/server/wifi/SemApeController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingToneAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mRingToneAppUid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamingUidList(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mevaluateApeState(Lcom/samsung/android/server/wifi/SemApeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->evaluateApeState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastEnableApe(Lcom/samsung/android/server/wifi/SemApeController;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastStreamingInfo(Lcom/samsung/android/server/wifi/SemApeController;Ljava/util/HashSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastStreamingInfo(Ljava/util/HashSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController;->updateAppState(ZIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStreamingState(Lcom/samsung/android/server/wifi/SemApeController;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->updateStreamingState(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipPackageName:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mRingToneAppUid:I

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 36
    .line 37
    new-instance v0, Ljava/util/TreeMap;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 43
    .line 44
    new-instance v0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$2;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$2;-><init>(Lcom/samsung/android/server/wifi/SemApeController;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mMediaListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string v1, "audio"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/media/AudioManager;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    .line 70
    const-string v1, "media_session"

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemApeController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->makeBroadcastReceiver()Landroid/content/BroadcastReceiver;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance v2, Landroid/content/IntentFilter;

    .line 97
    .line 98
    const-string v3, "com.samsung.android.wifi.SET_APE_POLICY"

    .line 99
    .line 100
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    invoke-virtual {p1, p2, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->initBlockedPackages()V

    .line 112
    .line 113
    .line 114
    const-string p0, "SemApeController Initialized: ver=2.0.5"

    .line 115
    .line 116
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private evaluateApeState()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 8
    .line 9
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget v3, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 22
    .line 23
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v6, "Turn off APE since target uid="

    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " is background and foreground has been changed as uid="

    .line 42
    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 63
    .line 64
    const/4 v1, -0x1

    .line 65
    const-string v2, ""

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 88
    .line 89
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 90
    .line 91
    iget v3, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 92
    .line 93
    if-ne v2, v3, :cond_1

    .line 94
    .line 95
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v5, "Turn on APE since target uid="

    .line 102
    .line 103
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " is foreground now"

    .line 116
    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method private forcedCheckAudioState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController;->updateAudioState(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private getAppTypeSum()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    or-int/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v0
.end method

.method private initBlockedPackages()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "com.google.android.setupwizard"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 9
    .line 10
    const-string v1, "com.google.android.gms"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 16
    .line 17
    const-string v1, "com.android.settings"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 23
    .line 24
    const-string v1, "com.android.vending"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 30
    .line 31
    const-string v1, "com.sec.android.app.SecSetupWizard"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 37
    .line 38
    const-string v1, "com.sec.android.app.launcher"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 44
    .line 45
    const-string v0, "com.samsung.android.smartmirroring"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private isBlockedPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private synthetic lambda$registerWifiSafeModeListener$0(Z)V
    .locals 2

    .line 1
    const-string v0, "WifiSafeMode is changed as "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemApeController"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemApeController"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemApeController"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemApeController;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemApeController"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private makeBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$3;-><init>(Lcom/samsung/android/server/wifi/SemApeController;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemApeController$4;-><init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private recordHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS "

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/16 v0, 0xc8

    .line 53
    .line 54
    if-le p1, v0, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method private sendBroadcastEnableApe(IILjava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemApeController;->isBlockedPackage(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, " "

    .line 6
    .line 7
    const-string v2, " uid="

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p4, "Ignore blocked package: enable="

    .line 12
    .line 13
    invoke-static {p4, v2, p1, p2, v1}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string v0, "(v2.0.5) Send broadcast ENABLE_APE="

    .line 32
    .line 33
    invoke-static {v0, v2, p1, p2, v1}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->getAppTypeSum()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    filled-new-array {v1, v2, v3, p3}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "Enable(%d) typeSum=0x%02X uid=%d %s"

    .line 70
    .line 71
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/content/Intent;

    .line 79
    .line 80
    const-string v1, "com.samsung.android.wifi.ENABLE_APE"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "enable"

    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const-string p1, "uid"

    .line 91
    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const-string p1, "package"

    .line 96
    .line 97
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string p1, "type"

    .line 101
    .line 102
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 108
    .line 109
    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    .line 110
    .line 111
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private sendBroadcastRealtimeAppInfo(IILjava/lang/String;I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestApeInfo:I

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "REALTIME_APP_INFO"

    .line 18
    .line 19
    filled-new-array {v4, v1, v2, v3, p3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "APE_INFO: msg_type=%s Enable(%d) type=0x%02X uid=%d %s"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "(v2.0.5) "

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    const-string v1, "com.samsung.android.wifi.APE_INFO"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "msg_type"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string v1, "enable"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string p1, "uid"

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p1, "package"

    .line 64
    .line 65
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string p1, "type"

    .line 69
    .line 70
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 76
    .line 77
    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    .line 78
    .line 79
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private sendBroadcastStreamingInfo(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "APE_INFO: msg_type=STREAMING_INFO #uids="

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "(v2.0.5) "

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "com.samsung.android.wifi.APE_INFO"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "msg_type"

    .line 33
    .line 34
    const-string v2, "STREAMING_INFO"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "uid"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 47
    .line 48
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 49
    .line 50
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V
    .locals 7

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget v2, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 7
    .line 8
    iget v3, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 9
    .line 10
    if-eq v2, v3, :cond_1

    .line 11
    .line 12
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string p1, "Disable APE"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "Ignore APE enabled"

    .line 22
    .line 23
    :goto_0
    iget-object v3, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 26
    .line 27
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " since target uid="

    .line 38
    .line 39
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " is background and foreground has been changed as uid="

    .line 52
    .line 53
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move p1, v1

    .line 73
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 74
    .line 75
    const-string v3, ""

    .line 76
    .line 77
    const/4 v4, -0x1

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 83
    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 87
    .line 88
    iget v5, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 89
    .line 90
    if-ne v2, v5, :cond_2

    .line 91
    .line 92
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    invoke-direct {p0, v1, v4, v3, v1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 99
    .line 100
    :cond_3
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget v2, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 103
    .line 104
    const/16 v5, 0x10

    .line 105
    .line 106
    if-ne v2, v5, :cond_4

    .line 107
    .line 108
    iget-object v2, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isGamePackage(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "Ignore non gaming app: uid="

    .line 119
    .line 120
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v2, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v0, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->forcedCheckAudioState()V

    .line 147
    .line 148
    .line 149
    move p1, v1

    .line 150
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 151
    .line 152
    if-ne v0, p1, :cond_5

    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 156
    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    .line 160
    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    iget p1, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 164
    .line 165
    iget-object v0, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 166
    .line 167
    iget v1, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 174
    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastStreamingInfo(Ljava/util/HashSet;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    const-string p1, "APE is disabled as a policy, so block to broadcast enable intent."

    .line 180
    .line 181
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 185
    .line 186
    return-void

    .line 187
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    .line 188
    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    invoke-direct {p0, v1, v4, v3, v1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_8
    const-string p1, "APE is disabled as a policy, so block to broadcast disable intent."

    .line 196
    .line 197
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_2
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 202
    .line 203
    return-void
.end method

.method private updateAppState(ZIILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->getAppTypeSum()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 22
    .line 23
    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->equals(II)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 43
    .line 44
    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 69
    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->getAppTypeSum()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 111
    .line 112
    move-object v5, p4

    .line 113
    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string p2, "updateAppState: type=0x%02X (%b) uid=%d %s (before=0x%02X after=0x%02X) size=%d, foreground uid=%d %s"

    .line 118
    .line 119
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 139
    .line 140
    const/4 p2, 0x1

    .line 141
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    .line 142
    .line 143
    .line 144
    iget p3, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 145
    .line 146
    iget-object p4, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 147
    .line 148
    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 149
    .line 150
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastRealtimeAppInfo(IILjava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_2
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 155
    .line 156
    const/4 p2, 0x0

    .line 157
    const/4 p3, -0x1

    .line 158
    const-string p4, ""

    .line 159
    .line 160
    invoke-direct {p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p2, p3, p4, p2}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastRealtimeAppInfo(IILjava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    :cond_3
    return-void
.end method

.method private updateStreamingState(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/media/session/MediaController;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "updateStreamingState: "

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " uid="

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->loge(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v0, "[STREAMING] Total number of active media sessions: "

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 119
    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mStreamingUidList:Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastStreamingInfo(Ljava/util/HashSet;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemApeController (v2.0.5) history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemApeController;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public isRealtimeAppRunning()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestApeInfo:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "sem_wifi_ape_enabled"

    .line 5
    .line 6
    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v3, "APE in Settings is "

    .line 14
    .line 15
    invoke-static {v0, v3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-virtual {v0, v3, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lcom/samsung/android/server/wifi/SemApeController$1;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, p0, v4, p1}, Lcom/samsung/android/server/wifi/SemApeController$1;-><init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method registerWifiSafeModeListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "wifiSafeMode is enabled"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemApeController;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public updateAudioState(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/media/AudioManager;->getModeInternal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "enter updateAudioState: audioMode="

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, -0x1

    .line 34
    const/4 v4, 0x3

    .line 35
    if-eq v1, v4, :cond_1

    .line 36
    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-wide/16 v4, 0x3e8

    .line 47
    .line 48
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    .line 50
    .line 51
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeController;->mRingToneAppUid:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 59
    .line 60
    const-string v5, ""

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 66
    .line 67
    invoke-direct {v1, v6, v3, v5}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    move v8, v3

    .line 75
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_8

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Landroid/media/AudioPlaybackConfiguration;

    .line 86
    .line 87
    invoke-virtual {v9}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v10}, Landroid/media/AudioAttributes;->getUsage()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    const/4 v11, 0x2

    .line 96
    if-ne v10, v11, :cond_7

    .line 97
    .line 98
    invoke-virtual {v9}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const/16 v12, 0x2710

    .line 103
    .line 104
    if-ge v10, v12, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {v9}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemApeController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    if-eqz v12, :cond_7

    .line 118
    .line 119
    array-length v13, v12

    .line 120
    if-eqz v13, :cond_7

    .line 121
    .line 122
    new-instance v13, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v14, "[audioMode="

    .line 125
    .line 126
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v14, v0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 130
    .line 131
    const-string v15, "] uid="

    .line 132
    .line 133
    const-string v2, " package="

    .line 134
    .line 135
    invoke-static {v13, v14, v15, v10, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    aget-object v2, v12, v6

    .line 139
    .line 140
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, " {"

    .line 144
    .line 145
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, "}"

    .line 152
    .line 153
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eq v2, v11, :cond_5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    if-eq v8, v3, :cond_6

    .line 171
    .line 172
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 173
    .line 174
    if-eq v10, v2, :cond_6

    .line 175
    .line 176
    if-eq v8, v2, :cond_7

    .line 177
    .line 178
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 179
    .line 180
    if-ne v10, v2, :cond_7

    .line 181
    .line 182
    :cond_6
    aget-object v2, v12, v6

    .line 183
    .line 184
    move-object v5, v2

    .line 185
    move v8, v10

    .line 186
    :cond_7
    :goto_2
    const/4 v2, 0x1

    .line 187
    goto :goto_1

    .line 188
    :cond_8
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeController;->mRingToneAppUid:I

    .line 189
    .line 190
    if-eq v8, v3, :cond_a

    .line 191
    .line 192
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioMode:I

    .line 193
    .line 194
    if-ne v1, v4, :cond_9

    .line 195
    .line 196
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 197
    .line 198
    invoke-virtual {v0, v6, v8, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_9
    const/4 v2, 0x1

    .line 207
    if-ne v1, v2, :cond_a

    .line 208
    .line 209
    iput v8, v0, Lcom/samsung/android/server/wifi/SemApeController;->mRingToneAppUid:I

    .line 210
    .line 211
    :cond_a
    :goto_3
    return-void
.end method

.method public updateForegroundApp(Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 13
    .line 14
    if-lez p2, :cond_2

    .line 15
    .line 16
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "foreground: uid="

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, " "

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    .line 50
    .line 51
    const/4 p2, -0x1

    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    if-eq p1, v0, :cond_1

    .line 55
    .line 56
    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 57
    .line 58
    if-ne p1, p2, :cond_2

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    const/4 p2, 0x5

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-wide/16 v0, 0x3e8

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method public updateOptimizerState(ZZILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "updateOptimizerState: trafficDetected="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " serviceDetected="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " uid="

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, " "

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    const-string p3, ""

    .line 60
    .line 61
    const/4 p4, -0x1

    .line 62
    invoke-virtual {p0, p2, p4, p1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
