.class public Lcom/samsung/android/knox/mtd/KMTDService;
.super Lcom/samsung/android/knox/mtd/IMTDService$Stub;
.source "KMTDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;,
        Lcom/samsung/android/knox/mtd/KMTDService$messageObject;,
        Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    }
.end annotation


# static fields
.field private static final BIND_RETRY_INTERVAL:I = 0x3a980

.field private static final CONN_MAX_WAIT_TIME:I = 0xfa0

.field private static COPY_COOLDOWN_TIMER:J = 0x0L

.field private static final KER_PKG:Ljava/lang/String; = "android.uid.ker:5554"

.field private static final MTD_INTENT:Ljava/lang/String; = "com.samsung.android.knox.kfbp.BIND_SERVICE"

.field private static final MTD_PKG:Ljava/lang/String; = "com.samsung.android.knox.kfbp"

.field private static final PROTECT_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SYSTEM:Landroid/os/UserHandle;

.field private static isMTDBound:Z

.field private static prevCopiedSource:Ljava/lang/String;

.field private static prevCopiedTime:J

.field private static prevCopiedUrl:Ljava/lang/String;


# instance fields
.field private clipboardManager:Landroid/content/ClipboardManager;

.field private isServiceConnected:Z

.field private isServiceFound:Z

.field private kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mConnLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

.field private mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private final mtdTaskStackListener:Landroid/app/TaskStackListener;

.field private mutex:Ljava/lang/Object;

.field private primaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetclipboardManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/ClipboardManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->clipboardManager:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnLock(Lcom/samsung/android/knox/mtd/KMTDService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mConnLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisServiceConnected(Lcom/samsung/android/knox/mtd/KMTDService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;Lcom/samsung/android/knox/mtd/IKfbpFramework;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRunningTaskInfo(Lcom/samsung/android/knox/mtd/KMTDService;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mClipboardAnalysisEnabled(Lcom/samsung/android/knox/mtd/KMTDService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->ClipboardAnalysisEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mabsoluteValue(Lcom/samsung/android/knox/mtd/KMTDService;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/mtd/KMTDService;->absoluteValue(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mmAnalyzeClipboardContent(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/mtd/KMTDService;->mAnalyzeClipboardContent(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCOPY_COOLDOWN_TIMER()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/knox/mtd/KMTDService;->COPY_COOLDOWN_TIMER:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetprevCopiedSource()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedSource:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetprevCopiedTime()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetprevCopiedUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputprevCopiedSource(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedSource:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputprevCopiedTime(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputprevCopiedUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smisDeviceManaged(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->isDeviceManaged(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisManagedUserId(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/mtd/KMTDService;->isManagedUserId(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_KnoxPP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    .line 43
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/samsung/android/knox/mtd/KMTDService;->COPY_COOLDOWN_TIMER:J

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedUrl:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedSource:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/knox/mtd/KMTDService;->prevCopiedTime:J

    .line 51
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->USER_SYSTEM:Landroid/os/UserHandle;

    .line 52
    sput-boolean v1, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/IMTDService$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mConnLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceFound:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mActivityManager:Landroid/app/ActivityManager;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    .line 61
    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->clipboardManager:Landroid/content/ClipboardManager;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mutex:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/mtd/KMTDService$1;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mServiceConn:Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/mtd/KMTDService$2;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mtdTaskStackListener:Landroid/app/TaskStackListener;

    .line 678
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/mtd/KMTDService$5;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->primaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-string v1, "KMTDService"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mActivityManager:Landroid/app/ActivityManager;

    .line 69
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v1, "KMTDService created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private ClipboardAnalysisEnabled()Z
    .locals 5

    .line 744
    const-string v0, "knoxmtd.analysis.features"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "systemProperty":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 747
    .local v2, "features":I
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 748
    const/4 v1, 0x1

    return v1

    .line 750
    :cond_0
    return v1

    .line 752
    .end local v2    # "features":I
    :cond_1
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "MTD Feature Property is Empty !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v1
.end method

.method private absoluteValue(J)J
    .locals 2
    .param p1, "delta"    # J

    .line 738
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 739
    const-wide/16 v0, -0x1

    mul-long/2addr v0, p1

    return-wide v0

    .line 740
    :cond_0
    return-wide p1
.end method

.method private bindToKFBP()Z
    .locals 5

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.kfbp.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.knox.kfbp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mServiceConn:Landroid/content/ServiceConnection;

    sget-object v3, Lcom/samsung/android/knox/mtd/KMTDService;->USER_SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    .line 99
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindToKFBP, trying to bind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to bind"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    sget-boolean v1, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    return v1
.end method

.method private checkCallerPermission(IZ)Z
    .locals 5
    .param p1, "invokerUid"    # I
    .param p2, "allowKER"    # Z

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "res":Z
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_2

    .line 199
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v2, "Checking for apk signing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "invokerPkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callerUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is Not Allowed !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p2, :cond_1

    const-string v2, "android.uid.ker:5554"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "KER app is allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "Platform signed app is allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x1

    .line 211
    .end local v1    # "invokerPkg":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 212
    :cond_2
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v2, "System app is allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x1

    .line 216
    :goto_1
    return v0
.end method

.method private getKFBP()Lcom/samsung/android/knox/mtd/IKfbpFramework;
    .locals 3

    .line 453
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v1, "getKFBP entry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    invoke-interface {v0}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 457
    .local v0, "serviceBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    .line 463
    .end local v0    # "serviceBinder":Landroid/os/IBinder;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    if-nez v0, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->bindToKFBP()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    .line 465
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKFBP, trying to bind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKFBP exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    return-object v0
.end method

.method private getKFBPForced()Lcom/samsung/android/knox/mtd/IKfbpFramework;
    .locals 4

    .line 424
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v1, "getKFBPForced entry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    invoke-interface {v0}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 428
    .local v0, "serviceBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    .line 434
    .end local v0    # "serviceBinder":Landroid/os/IBinder;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    if-nez v0, :cond_3

    .line 435
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->bindToKFBP()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    .line 436
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKFBPForced, trying to bind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    if-eqz v0, :cond_2

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mConnLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mConnLock:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 441
    monitor-exit v0

    .line 444
    goto :goto_0

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/knox/mtd/KMTDService;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    .restart local p0    # "this":Lcom/samsung/android/knox/mtd/KMTDService;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKFBPForced(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKFBPForced exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    return-object v0
.end method

.method private handleTaskFocused(Lcom/samsung/android/knox/mtd/PkgWithUserId;)V
    .locals 6
    .param p1, "focusedPkg"    # Lcom/samsung/android/knox/mtd/PkgWithUserId;

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/knox/mtd/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pkg"

    const-string v2, "com.samsung.android.knox.kfbp"

    const-string v3, "com.samsung.android.knox.kfbp.APP_LAUNCH"

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v4, "KFBP launcher is in foucus"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "homeLaunchIntent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v2, "launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->USER_SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    .end local v0    # "homeLaunchIntent":Landroid/content/Intent;
    goto :goto_0

    .line 187
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KFBP app is in focus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/mtd/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "appLaunchIntent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/knox/mtd/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->USER_SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 194
    .end local v0    # "appLaunchIntent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private static isDeviceManaged(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "isDeviceManaged":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 768
    .local v1, "identity":J
    :try_start_0
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 769
    .local v3, "mService":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 773
    .end local v3    # "mService":Landroid/app/admin/DevicePolicyManager;
    nop

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    goto :goto_1

    .line 770
    :catchall_0
    move-exception v3

    .line 771
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v4, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 773
    nop

    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 775
    :goto_1
    sget-object v3, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceMnaged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return v0

    .line 773
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    throw v3
.end method

.method private static isManagedUserId(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, "isManagedUserId":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 782
    .local v1, "identity":J
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 783
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "isManagedUserId : "

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 784
    .local v5, "ui":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v7

    .line 785
    .local v7, "profileId":I
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 786
    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 787
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-nez v8, :cond_0

    if-ne v7, p1, :cond_0

    .line 789
    const/4 v0, 0x1

    .line 790
    sget-object v4, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    return v0

    .line 794
    .end local v5    # "ui":Landroid/os/UserHandle;
    .end local v7    # "profileId":I
    :cond_0
    goto :goto_0

    .line 795
    :cond_1
    sget-object v4, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 797
    return v0
.end method

.method private mAnalyzeClipboardContent(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "profile_type"    # I

    .line 479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->checkCallerPermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->getKFBP()Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeContent(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v6, "Exception in KFBP Manager Service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_2

    .line 487
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V

    move-object v2, v0

    .line 488
    .local v2, "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 489
    .local v3, "msg_":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v3, Landroid/os/Message;->what:I

    .line 490
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-wide/16 v4, 0xfa0

    if-eqz v0, :cond_2

    .line 493
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    goto :goto_1

    .line 494
    :catch_1
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    sget-object v6, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v7, "Thread has already started"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object v0

    .line 499
    .local v0, "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 502
    .end local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    :cond_1
    goto :goto_2

    .line 503
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-string v6, "KMTDService"

    invoke-direct {v0, p0, v6}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    .line 504
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object v0

    .line 506
    .restart local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz v0, :cond_3

    .line 507
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 512
    .end local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    .end local v2    # "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "msg_":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void
.end method

.method private registerClipboardListener()V
    .locals 4

    .line 671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 672
    .local v0, "identity":J
    iget-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->clipboardManager:Landroid/content/ClipboardManager;

    .line 673
    iget-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v3, p0, Lcom/samsung/android/knox/mtd/KMTDService;->primaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v2, v3}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 674
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "PrimaryClipChangedListener Registered !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    return-void
.end method

.method private unRegisterClipboardListener()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->primaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 760
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v1, "PrimaryClipChangedListener Unregistered !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    return-void
.end method

.method private unbindKFBP()Z
    .locals 3

    .line 107
    sget-boolean v0, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    .line 111
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v1, "unbindKFBP, unbind done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to unbind"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/samsung/android/knox/mtd/KMTDService;->isMTDBound:Z

    return v0
.end method


# virtual methods
.method public analyzeContent(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isManagedProfile"    # Z
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    return-void
.end method

.method public analyzeContents(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;)V
    .locals 13
    .param p2, "cb"    # Lcom/samsung/android/knox/mtd/IMtdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/mtd/IMtdCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    .local p1, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/mtd/KMTDService;->checkCallerPermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->getKFBP()Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$4;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/mtd/KMTDService$4;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Lcom/samsung/android/knox/mtd/IMtdCallback;)V

    move-object v1, v0

    .line 609
    .local v1, "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeContents(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "Exception in KFBP Manager Service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    :goto_0
    move-object v5, p0

    move-object v10, p1

    move-object v11, p2

    goto :goto_2

    .line 614
    :cond_0
    new-instance v4, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v10, p1

    move-object v11, p2

    .end local p1    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "cb":Lcom/samsung/android/knox/mtd/IMtdCallback;
    .local v10, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "cb":Lcom/samsung/android/knox/mtd/IMtdCallback;
    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V

    .line 615
    .local v4, "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 616
    .local p1, "msg_":Landroid/os/Message;
    const/4 p2, 0x4

    iput p2, p1, Landroid/os/Message;->what:I

    .line 617
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    iget-object p2, v5, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-wide/16 v1, 0xfa0

    if-eqz p2, :cond_2

    .line 620
    :try_start_1
    iget-object p2, v5, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {p2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 623
    goto :goto_1

    .line 621
    :catch_1
    move-exception v0

    move-object p2, v0

    .line 622
    .local p2, "e":Ljava/lang/IllegalThreadStateException;
    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "Thread has already started"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local p2    # "e":Ljava/lang/IllegalThreadStateException;
    :goto_1
    iget-object p2, v5, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {p2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object p2

    .line 625
    .local p2, "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz p2, :cond_1

    .line 626
    invoke-virtual {p2, p1, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    .end local p2    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    :cond_1
    goto :goto_2

    .line 629
    :cond_2
    new-instance p2, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-string v0, "KMTDService"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;)V

    iput-object p2, v5, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    .line 630
    iget-object p2, v5, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {p2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V

    .line 631
    iget-object p2, v5, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {p2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object p2

    .line 632
    .restart local p2    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz p2, :cond_4

    .line 633
    invoke-virtual {p2, p1, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 600
    .end local v4    # "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v10    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "cb":Lcom/samsung/android/knox/mtd/IMtdCallback;
    .local p1, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "cb":Lcom/samsung/android/knox/mtd/IMtdCallback;
    :cond_3
    move-object v5, p0

    move-object v10, p1

    move-object v11, p2

    .line 638
    .end local p1    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "cb":Lcom/samsung/android/knox/mtd/IMtdCallback;
    .restart local v10    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "cb":Lcom/samsung/android/knox/mtd/IMtdCallback;
    :cond_4
    :goto_2
    return-void
.end method

.method public analyzeFrameBuffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/FrameBuffersInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    .local p1, "frameBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/mtd/FrameBuffersInfo;>;"
    return-void
.end method

.method public analyzeURL(Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Intent;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isManagedProfile"    # Z
    .param p5, "launchIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->checkCallerPermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->getKFBP()Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    if-eqz v0, :cond_2

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->isDeviceManaged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v7

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;I)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mContext:Landroid/content/Context;

    move/from16 v11, p3

    invoke-static {v0, v11}, Lcom/samsung/android/knox/mtd/KMTDService;->isManagedUserId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v8, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v13

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    invoke-interface/range {v8 .. v13}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;I)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->NORMAL:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v13

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-interface/range {v8 .. v13}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v3, "Exception in KFBP Manager Service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_2

    .line 530
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V

    move-object v2, v0

    .line 531
    .local v2, "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 532
    .local v3, "msg_":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v3, Landroid/os/Message;->what:I

    .line 533
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-wide/16 v4, 0xfa0

    if-eqz v0, :cond_4

    .line 536
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 539
    goto :goto_1

    .line 537
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    sget-object v6, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v7, "Thread has already started"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object v0

    .line 541
    .local v0, "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 544
    .end local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    :cond_3
    goto :goto_2

    .line 545
    :cond_4
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-string v6, "KMTDService"

    invoke-direct {v0, p0, v6}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    .line 546
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object v0

    .line 548
    .restart local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 554
    .end local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    .end local v2    # "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "msg_":Landroid/os/Message;
    :cond_5
    :goto_2
    return-void
.end method

.method public analyzeURLs(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V
    .locals 9
    .param p2, "cb"    # Lcom/samsung/android/knox/mtd/IMtdCallback;
    .param p3, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/mtd/IMtdCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    .local p1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->checkCallerPermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->getKFBP()Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/mtd/KMTDService$3;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Lcom/samsung/android/knox/mtd/IMtdCallback;)V

    move-object v2, v0

    .line 567
    .local v2, "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mKfbpService:Lcom/samsung/android/knox/mtd/IKfbpFramework;

    invoke-interface {v0, p1, v2, p3}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrls(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in KFBP Manager Service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    :goto_0
    goto :goto_2

    .line 572
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V

    move-object v2, v0

    .line 573
    .local v2, "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 574
    .local v3, "msg_":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v3, Landroid/os/Message;->what:I

    .line 575
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-wide/16 v4, 0xfa0

    if-eqz v0, :cond_2

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 581
    goto :goto_1

    .line 579
    :catch_1
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    sget-object v6, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    const-string v7, "Thread has already started"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object v0

    .line 583
    .local v0, "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 586
    .end local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    :cond_1
    goto :goto_2

    .line 587
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    const-string v6, "KMTDService"

    invoke-direct {v0, p0, v6}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;-><init>(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    .line 588
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->start()V

    .line 589
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService;->kmtdThread:Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDThread;->getlooperHandler()Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;

    move-result-object v0

    .line 590
    .restart local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    if-eqz v0, :cond_3

    .line 591
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 596
    .end local v0    # "mtdHandler":Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
    .end local v2    # "mObj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "msg_":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/mtd/KMTDService;->checkCallerPermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 667
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method registerTaskStackListener()V
    .locals 2

    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 225
    .local v0, "activityTaskManager":Landroid/app/IActivityTaskManager;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mtdTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    :cond_0
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendFocusedMessage(Lcom/samsung/android/knox/mtd/PkgWithUserId;)V
    .locals 0
    .param p1, "focusedPkg"    # Lcom/samsung/android/knox/mtd/PkgWithUserId;

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mtd/KMTDService;->handleTaskFocused(Lcom/samsung/android/knox/mtd/PkgWithUserId;)V

    .line 175
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/mtd/KMTDService;->checkCallerPermission(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    const-string v0, "knoxmtd.analysis.features"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 653
    .local v0, "features":I
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->unRegisterClipboardListener()V

    .line 654
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 655
    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/KMTDService;->registerClipboardListener()V

    .line 658
    .end local v0    # "features":I
    :cond_1
    return-void
.end method

.method unregisterTaskStackListener()V
    .locals 2

    .line 235
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 236
    .local v0, "activityTaskManager":Landroid/app/IActivityTaskManager;
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService;->mtdTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    :cond_0
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
