.class Lcom/samsung/android/game/FgCheckThread;
.super Landroid/os/HandlerThread;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;
    }
.end annotation


# static fields
.field private static final CREATE_FLAG_EFFECTVE_TIME:J = 0x1f4L

.field private static final KILL_YOURSELF:Ljava/lang/String; = "KILL_YOURSELF"

.field private static final MSG_APP_CREATE:I = 0x271a

.field private static final MSG_APP_RESUME:I = 0x2710

.field private static final MSG_KEY_GUARD_LOCKED:I = 0x2719

.field static final MSG_LCD_OFF:I = 0x2716

.field static final MSG_LCD_ON:I = 0x2717

.field private static final MSG_TASK_FOCUSED:I = 0x271b

.field private static final MSG_USER_PRESENT:I = 0x2718

.field private static final TAG:Ljava/lang/String; = "FgCheckThread"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDvfsAcquired:Z

.field private mFgHandler:Landroid/os/Handler;

.field private mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

.field private final mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

.field private mIsGameBoosterInstalled:Z

.field private mIsGameLauncherEnabled:Z

.field private mIsGosEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardReceiver:Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;

.field private mLcdOn:Z

.field private mNeedsKillNoti:Z

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/game/IGameManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

.field private mPrevNotiType:I

.field private mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

.field private mResumedPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/game/PkgWithUserId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mSdm:Lcom/samsung/android/os/SemDvfsManager;

.field private final mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

.field private mSystemHelper:Lcom/samsung/android/game/SystemHelper;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private final mWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/game/FgCheckThread;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusedPkg(Lcom/samsung/android/game/FgCheckThread;)Lcom/samsung/android/game/PkgWithUserId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/KeyguardManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLcdOn(Lcom/samsung/android/game/FgCheckThread;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLcdOn(Lcom/samsung/android/game/FgCheckThread;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRunningTaskInfo(Lcom/samsung/android/game/FgCheckThread;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLcdOn(Lcom/samsung/android/game/FgCheckThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->handleLcdOn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResume(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread;->handleResume(Lcom/samsung/android/game/PkgWithUserId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTaskFocused(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread;->handleTaskFocused(Lcom/samsung/android/game/PkgWithUserId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUserPresent(Lcom/samsung/android/game/FgCheckThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->handleUserPresent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendFocusOutConditionally(Lcom/samsung/android/game/FgCheckThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lcom/samsung/android/game/SystemHelper;IZZZ)V
    .locals 5
    .param p1, "lcdOn"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "systemHelper"    # Lcom/samsung/android/game/SystemHelper;
    .param p4, "currentUserId"    # I
    .param p5, "isGosEnabled"    # Z
    .param p6, "isGameLauncherEnabled"    # Z
    .param p7, "isGameBoosterInstalled"    # Z

    .line 217
    const-string v0, "FgCheckThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    .line 52
    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    const-string v3, "(unknown)"

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 53
    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mNeedsKillNoti:Z

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    .line 63
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 66
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    .line 71
    new-instance v4, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 73
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    .line 74
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 75
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    .line 80
    new-instance v2, Lcom/samsung/android/game/FgCheckThread$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/FgCheckThread$1;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    .line 88
    iput v1, p0, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    .line 93
    new-instance v2, Lcom/samsung/android/game/FgCheckThread$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/FgCheckThread$2;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 157
    new-instance v2, Lcom/samsung/android/game/FgCheckThread$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/FgCheckThread$3;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 218
    iput-boolean p1, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    .line 219
    iput-object p2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    .line 220
    iput-object p3, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 221
    iput p4, p0, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    .line 222
    iput-boolean p5, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    .line 223
    iput-boolean p6, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    .line 224
    iput-boolean p7, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    .line 225
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    .line 227
    new-instance v2, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-direct {v2}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    .line 228
    new-instance v2, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-direct {v2}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    .line 230
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    .line 231
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    const-string v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 234
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_1

    const-string v2, "r0q"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "b2q"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    .line 236
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v3, 0x30002000

    const/16 v4, 0xab0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 238
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v3, 0x32001001

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v2, 0x32001002

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v2, 0x32001003

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_2

    const-string v1, "r0s"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    .line 246
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v2, 0x30001002

    const v3, 0x29a810

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 251
    :cond_2
    :goto_0
    new-instance v1, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardReceiver:Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;

    .line 253
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 254
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_3

    .line 255
    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    .line 257
    .local v2, "usm":Landroid/app/usage/IUsageStatsManager;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    invoke-interface {v2, v3}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_1

    .line 258
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "failed to registerUsageStatsWatcher"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v2    # "usm":Landroid/app/usage/IUsageStatsManager;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 262
    :cond_3
    const-string v2, "failed to get usagestats"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_2
    return-void
.end method

.method private handleLcdOn()V
    .locals 6

    .line 516
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "FgCheckThread"

    if-nez v0, :cond_0

    .line 517
    const-string v0, "handleLcdOn(), mKeyguardManager is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    .line 526
    .local v0, "isDeviceLocked":Z
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 527
    .local v2, "inKeyguardRestrictedInputMode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLcdOn(). isDeviceLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", inKeyguardRestrictedInputMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/game/FgCheckThread;->isRunningApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  handleLcdOn(). resume signal is needed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    .line 534
    .local v1, "isGame":Z
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v5}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v3

    .line 536
    .local v3, "isSecGameFamily":Z
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    .line 537
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v3}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 540
    .end local v1    # "isGame":Z
    .end local v3    # "isSecGameFamily":Z
    :cond_3
    return-void

    .line 521
    .end local v0    # "isDeviceLocked":Z
    .end local v2    # "inKeyguardRestrictedInputMode":Z
    :cond_4
    :goto_0
    const-string v0, "handleLcdOn(), mFocusedPkg or mPrevNotiPkg is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private handleResume(Lcom/samsung/android/game/PkgWithUserId;)V
    .locals 6
    .param p1, "resumedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 371
    const-string v0, "handleResume()."

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-nez p1, :cond_0

    .line 373
    const-string v0, "  handleResume(). resumedPkg == null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 378
    const-string v0, "  handleResume(). resumedPkg.getPkgName() == null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KILL_YOURSELF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    const-string v0, "  handleResume(). same package with Prev KILL_YOURSELF. ignore"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void

    .line 392
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 393
    iget v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    const-string v0, "  handleResume(). same package. ignore"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 399
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 400
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 404
    :cond_6
    const-string v0, "  handleResume(). device is locked yet. ignore"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void

    .line 408
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 409
    .local v0, "isGame":Z
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v2

    .line 412
    .local v2, "isSecGameFamily":Z
    if-eqz v0, :cond_8

    .line 413
    const-string v3, "game"

    .local v3, "category":Ljava/lang/String;
    goto :goto_0

    .line 414
    .end local v3    # "category":Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_9

    .line 415
    const-string v3, "sec_game_family"

    .restart local v3    # "category":Ljava/lang/String;
    goto :goto_0

    .line 417
    .end local v3    # "category":Ljava/lang/String;
    :cond_9
    const-string v3, "non-game"

    .line 420
    .restart local v3    # "category":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4, p1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 421
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V

    .line 427
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  handleResume(). pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 428
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v1, 0x0

    if-nez v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_1

    .line 434
    :cond_b
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4, v1}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    goto :goto_2

    .line 431
    :cond_c
    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 436
    :goto_2
    return-void

    .line 383
    .end local v0    # "isGame":Z
    .end local v2    # "isSecGameFamily":Z
    .end local v3    # "category":Ljava/lang/String;
    :cond_d
    :goto_3
    const-string v0, "  handleResume(). pkg objects is null, do nothing."

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method private handleTaskFocused(Lcom/samsung/android/game/PkgWithUserId;)V
    .locals 6
    .param p1, "focusedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 439
    const-string v0, "handleTaskFocused()."

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-nez p1, :cond_0

    .line 441
    const-string v0, "  handleTaskFocused(), focusedPkg is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 446
    const-string v0, "  handleTaskFocused(). focusedPkg.getPkgName() == null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 451
    .local v0, "prevFocusedPkg":Lcom/samsung/android/game/PkgWithUserId;
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 453
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    .line 454
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V

    .line 459
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    const-string v3, ", userID:"

    const-string v4, "  handleTaskFocused(), pkgName: "

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread;->handleResume(Lcom/samsung/android/game/PkgWithUserId;)V

    goto :goto_0

    .line 463
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mResumedPkgMap does not containsKey."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void
.end method

.method private handleUserPresent()V
    .locals 6

    .line 543
    const-string v0, "handleUserPresent()"

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/FgCheckThread;->isRunningApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "  handleUserPresent(). resume signal is needed for "

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v0, v4, :cond_3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 554
    .local v0, "isGame":Z
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    .line 556
    .local v1, "isSecGameFamily":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 557
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 559
    .end local v0    # "isGame":Z
    .end local v1    # "isSecGameFamily":Z
    :cond_2
    goto :goto_0

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, v5}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v0, v4, :cond_6

    .line 564
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 567
    .restart local v0    # "isGame":Z
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    .line 569
    .restart local v1    # "isSecGameFamily":Z
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    .line 570
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 574
    .end local v0    # "isGame":Z
    .end local v1    # "isSecGameFamily":Z
    :cond_6
    :goto_0
    return-void

    .line 545
    :cond_7
    :goto_1
    const-string v0, "  handleUserPresent(), mFocusedPkg or mPrevNotiPkg is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private isRunningApp(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 490
    const-string v0, "FgCheckThread"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v2, :cond_3

    .line 491
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 492
    .local v2, "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_0

    .line 493
    const-string v3, "runningAppList is null."

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 495
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 496
    .local v4, "rap":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->semGetProcessState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_2

    .line 498
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 499
    .local v8, "runningPkg":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_1

    .line 500
    const/4 v0, 0x1

    return v0

    .line 498
    .end local v8    # "runningPkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 504
    .end local v4    # "rap":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 509
    .end local v2    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    :goto_2
    goto :goto_3

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "process is not found."

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return v1
.end method

.method private notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V
    .locals 18
    .param p1, "pkgWithUserId"    # Lcom/samsung/android/game/PkgWithUserId;
    .param p2, "type"    # I
    .param p3, "isSecGameFamily"    # Z

    .line 577
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFocusInOut(). of pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSecGameFamily: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", userId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 578
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    const-string v5, "FgCheckThread"

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v3, 0x4

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v3, :cond_0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  notifyFocusInOut(). unexpected type. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void

    .line 584
    :cond_0
    iget-object v7, v1, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    .line 585
    iget-object v7, v1, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v7}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 586
    iput-boolean v8, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    .line 587
    const-string v7, "Memory clock setting released"

    invoke-static {v5, v7}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_1
    iget-object v7, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v7, :cond_2

    .line 591
    const-string v3, "  notifyFocusInOut(), mPrevNotiPkg is null!"

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void

    .line 594
    :cond_2
    if-ne v2, v6, :cond_3

    iget-object v7, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v7, v0}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 595
    const-string v3, "  notifyFocusInOut(). not current game. ignore"

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void

    .line 598
    :cond_3
    if-nez v2, :cond_4

    iget-object v7, v1, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v7, v0}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  notifyFocusInOut(). ResumePkg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " and  focusedPkg "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " are different. ignore"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void

    .line 604
    :cond_4
    const-string v7, "  notifyFocusInOut(). mNeedsKillNoti: "

    const-string v9, "KILL_YOURSELF"

    if-ne v2, v3, :cond_c

    .line 605
    iget v3, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v3, v6, :cond_7

    .line 606
    iget-boolean v3, v1, Lcom/samsung/android/game/FgCheckThread;->mNeedsKillNoti:Z

    if-eqz v3, :cond_5

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v10, v1, Lcom/samsung/android/game/FgCheckThread;->mNeedsKillNoti:Z

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v3, Lcom/samsung/android/game/PkgWithUserId;

    iget v10, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v3, v9, v10}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    .line 609
    .end local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .local v3, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    const/4 v0, 0x1

    .line 610
    .end local p2    # "type":I
    .local v0, "type":I
    iput-boolean v8, v1, Lcom/samsung/android/game/FgCheckThread;->mNeedsKillNoti:Z

    move v2, v0

    goto/16 :goto_0

    .line 612
    .end local v0    # "type":I
    .end local v3    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p2    # "type":I
    :cond_5
    const-string v3, "  notifyFocusInOut(). do nothing"

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v3, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v3, :cond_6

    .line 614
    iget-object v3, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v3}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 616
    :cond_6
    return-void

    .line 618
    :cond_7
    iget v3, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-nez v3, :cond_a

    .line 619
    const-string v3, "  notifyFocusInOut(). send PAUSED for force-stop"

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v3, v1, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    iget-object v10, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v10}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v11}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v3

    .line 622
    .local v3, "isGamePrev":Z
    iget-object v10, v1, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    iget-object v11, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v11}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v12}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v10

    .line 624
    .local v10, "isSecGameFamilyPrev":Z
    if-nez v3, :cond_9

    if-nez v10, :cond_9

    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  notifyFocusInOut(). do nothing. mPrevNotiPkg is not a normal app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v7}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v5, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v5, :cond_8

    .line 627
    iget-object v5, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v5}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 629
    :cond_8
    return-void

    .line 632
    :cond_9
    new-instance v11, Lcom/samsung/android/game/PkgWithUserId;

    iget-object v12, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v12}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v13}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    .line 633
    .end local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .local v11, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    const/4 v0, 0x1

    .line 634
    .end local p2    # "type":I
    .restart local v0    # "type":I
    nop

    .line 635
    .end local v3    # "isGamePrev":Z
    .end local p3    # "isSecGameFamily":Z
    .local v10, "isSecGameFamily":Z
    move v2, v0

    move v4, v10

    move-object v3, v11

    goto :goto_0

    .line 636
    .end local v0    # "type":I
    .end local v10    # "isSecGameFamily":Z
    .end local v11    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p2    # "type":I
    .restart local p3    # "isSecGameFamily":Z
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  notifyFocusInOut(). unexpected mPrevNotiType: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v3, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v3, :cond_b

    .line 638
    iget-object v3, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v3}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 640
    :cond_b
    return-void

    .line 604
    :cond_c
    move-object v3, v0

    .line 644
    .end local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .end local p2    # "type":I
    .end local p3    # "isSecGameFamily":Z
    .local v2, "type":I
    .local v3, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .local v4, "isSecGameFamily":Z
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, v3}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v0, v2, :cond_d

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  notifyFocusInOut(). duplicated. ignore. ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void

    .line 649
    :cond_d
    if-nez v2, :cond_e

    if-nez v4, :cond_e

    .line 650
    iput-boolean v6, v1, Lcom/samsung/android/game/FgCheckThread;->mNeedsKillNoti:Z

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, v1, Lcom/samsung/android/game/FgCheckThread;->mNeedsKillNoti:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    if-nez v0, :cond_e

    .line 655
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 656
    iput-boolean v6, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    .line 657
    const-string v0, "Memory clock setting acquired"

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_e
    const-string v7, "userId"

    const-string v10, "pkgName"

    const-string v11, "type"

    if-nez v4, :cond_1b

    .line 663
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v12, v0

    .line 664
    .local v12, "i":I
    :goto_1
    if-lez v12, :cond_12

    .line 665
    add-int/lit8 v12, v12, -0x1

    .line 666
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/samsung/android/game/IGameManagerCallback;

    .line 667
    .local v13, "observer":Lcom/samsung/android/game/IGameManagerCallback;
    if-eqz v13, :cond_11

    .line 669
    if-nez v2, :cond_f

    .line 670
    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Lcom/samsung/android/game/IGameManagerCallback;->onGameFocusIn(Ljava/lang/String;)V

    goto :goto_3

    .line 673
    :catch_0
    move-exception v0

    goto :goto_2

    .line 671
    :cond_f
    if-ne v2, v6, :cond_10

    .line 672
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Lcom/samsung/android/game/IGameManagerCallback;->onGameFocusOut(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v14, "  notifyFocusInOut(). callback error"

    invoke-static {v5, v14}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_3
    nop

    .line 677
    .end local v13    # "observer":Lcom/samsung/android/game/IGameManagerCallback;
    :cond_11
    :goto_4
    goto :goto_1

    .line 678
    :cond_12
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 680
    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    const-string v13, "minimized"

    const-string v14, ", pkgName:"

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    if-nez v0, :cond_13

    if-eqz v2, :cond_14

    .line 682
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  notifyFocusInOut(). before send intent to GameBooster. type:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.samsung.android.game.gametools.GAMETOOLS_INTENTSERVICE"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 684
    .local v15, "gameBoosterIntent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.game.gametools"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-virtual {v15, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v15, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    invoke-virtual {v15, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    iget v6, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v15, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 692
    .local v0, "retGameBoosterIntent":Landroid/content/ComponentName;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  notifyFocusInOut(). after send intent to GameBooster. componentName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    .end local v0    # "retGameBoosterIntent":Landroid/content/ComponentName;
    goto :goto_5

    .line 693
    :catch_1
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "  notifyFocusInOut(). failed to send intent to GameBooster"

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 700
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "gameBoosterIntent":Landroid/content/Intent;
    :cond_14
    :goto_5
    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    if-nez v0, :cond_16

    if-eqz v2, :cond_15

    goto :goto_6

    :cond_15
    move/from16 p1, v4

    goto/16 :goto_9

    .line 701
    :cond_16
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  notifyFocusInOut(). before send intent to SoundAlive. type:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "eventType":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 704
    const-string v0, "GAME_RESUMED"

    move-object v6, v0

    goto :goto_7

    .line 705
    :cond_17
    const/4 v6, 0x1

    if-ne v2, v6, :cond_18

    .line 706
    const-string v0, "GAME_PAUSED"

    move-object v6, v0

    goto :goto_7

    .line 705
    :cond_18
    move-object v6, v0

    .line 708
    .end local v0    # "eventType":Ljava/lang/String;
    .local v6, "eventType":Ljava/lang/String;
    :goto_7
    if-eqz v6, :cond_19

    .line 709
    const-string v8, "com.sec.android.app.soundalive"

    .line 710
    .local v8, "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    const-string v15, "com.sec.android.app.soundalive.RECEIVE_GAME_EVENTS"

    .line 711
    .local v15, "INTENT_ACTION_SOUND_ALIVE":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    move/from16 p1, v4

    .end local v4    # "isSecGameFamily":Z
    .local p1, "isSecGameFamily":Z
    const-string v4, "com.sec.android.app.soundalive.RECEIVE_GAME_EVENTS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 712
    .local v4, "saIntent":Landroid/content/Intent;
    const-string v0, "com.sec.android.app.soundalive"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 p2, v6

    .end local v6    # "eventType":Ljava/lang/String;
    .local p2, "eventType":Ljava/lang/String;
    :try_start_3
    new-instance v6, Landroid/os/UserHandle;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 p3, v8

    .end local v8    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .local p3, "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    :try_start_4
    iget v8, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 718
    const-string v0, "  notifyFocusInOut(). after send intent to SoundAlive."

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 722
    goto :goto_9

    .line 719
    :catch_2
    move-exception v0

    goto :goto_8

    .end local p3    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .restart local v8    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 p3, v8

    .end local v8    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .restart local p3    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    goto :goto_8

    .end local p2    # "eventType":Ljava/lang/String;
    .end local p3    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .restart local v6    # "eventType":Ljava/lang/String;
    .restart local v8    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 p2, v6

    move-object/from16 p3, v8

    .line 720
    .end local v6    # "eventType":Ljava/lang/String;
    .end local v8    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local p2    # "eventType":Ljava/lang/String;
    .restart local p3    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    :goto_8
    const-string v6, "  notifyFocusInOut(). failed to send intent to SoundAlive"

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_9

    .line 708
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "INTENT_ACTION_SOUND_ALIVE":Ljava/lang/String;
    .end local p1    # "isSecGameFamily":Z
    .end local p2    # "eventType":Ljava/lang/String;
    .end local p3    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .local v4, "isSecGameFamily":Z
    .restart local v6    # "eventType":Ljava/lang/String;
    :cond_19
    move/from16 p1, v4

    move-object/from16 p2, v6

    .line 727
    .end local v4    # "isSecGameFamily":Z
    .end local v6    # "eventType":Ljava/lang/String;
    .restart local p1    # "isSecGameFamily":Z
    :goto_9
    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    if-eqz v0, :cond_1c

    .line 728
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1a

    .line 729
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  notifyFocusInOut(). before send intent to GameLauncher. type:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 732
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.game.gamehome"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-virtual {v4, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const/4 v6, 0x0

    invoke-virtual {v4, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 739
    .local v0, "retIntent":Landroid/content/ComponentName;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  notifyFocusInOut(). after send intent to GameLauncher. componentName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 743
    .end local v0    # "retIntent":Landroid/content/ComponentName;
    goto :goto_a

    .line 740
    :catch_5
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "  notifyFocusInOut(). failed to send intent to GameLauncher"

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 744
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_a
    goto :goto_b

    .line 746
    :cond_1a
    const-string v0, "mDesktopModeManager is null"

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 662
    .end local v12    # "i":I
    .end local p1    # "isSecGameFamily":Z
    .local v4, "isSecGameFamily":Z
    :cond_1b
    move/from16 p1, v4

    .line 751
    .end local v4    # "isSecGameFamily":Z
    .restart local p1    # "isSecGameFamily":Z
    :cond_1c
    :goto_b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 752
    .local v4, "sendIntent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.game.gos"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    invoke-virtual {v4, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 757
    new-instance v0, Lcom/samsung/android/game/SystemInfoCollector;

    iget-object v6, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/game/SystemInfoCollector;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 758
    .local v6, "sic":Lcom/samsung/android/game/SystemInfoCollector;
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v7

    .line 759
    .local v7, "gosClientManager":Lcom/samsung/android/game/GosClientManager;
    const-string v0, "systemInfo"

    if-nez v2, :cond_1d

    .line 760
    invoke-virtual {v6}, Lcom/samsung/android/game/SystemInfoCollector;->makeSystemInfoForFocusIn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual {v7}, Lcom/samsung/android/game/GosClientManager;->bindService()V

    goto :goto_c

    .line 763
    :cond_1d
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/game/SystemInfoCollector;->makeSystemInfoForFocusOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    invoke-virtual {v7}, Lcom/samsung/android/game/GosClientManager;->unbindService()V

    .line 768
    :goto_c
    const/4 v0, 0x0

    .line 769
    .local v0, "isCreate":Z
    const-wide/16 v10, 0x0

    .line 771
    .local v10, "prevCreateGameTime":J
    iget-object v8, v1, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_1e

    .line 772
    iget-object v8, v1, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v8, v3, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 774
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    .line 775
    .local v14, "prevCreateInterval":J
    if-nez v2, :cond_1f

    const-wide/16 v16, 0x1f4

    cmp-long v8, v14, v16

    if-gez v8, :cond_1f

    .line 776
    const/4 v0, 0x1

    .line 777
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 p2, v12

    const-string v12, "  notifyFocusInOut(). create==true of "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    goto :goto_d

    .line 775
    :cond_1f
    move-wide/from16 p2, v12

    .line 779
    move v8, v0

    .end local v0    # "isCreate":Z
    .local v8, "isCreate":Z
    :goto_d
    const-string v0, "create"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    const/4 v12, 0x1

    if-ne v2, v12, :cond_20

    .line 781
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v0, :cond_20

    .line 782
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 787
    :cond_20
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    iget v13, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 788
    const-string v0, "  notifyFocusInOut(). after send intent to GameIntentService"

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    .line 792
    goto :goto_e

    .line 789
    :catch_6
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v12, "  notifyFocusInOut(). failed to send intent to GameIntentService"

    invoke-static {v5, v12}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 794
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_e
    const/4 v0, -0x1

    .line 795
    .local v0, "gameEvent":I
    if-nez v2, :cond_21

    .line 796
    const/4 v0, 0x2

    goto :goto_f

    .line 797
    :cond_21
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 798
    const/4 v0, 0x3

    .line 800
    :cond_22
    :goto_f
    const/4 v5, -0x1

    if-eq v0, v5, :cond_23

    .line 801
    new-instance v5, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v9, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v12

    invoke-virtual {v5, v0, v9, v12}, Lcom/samsung/android/game/notification/GameEventNotifier;->notifyGameEvent(ILjava/lang/String;I)V

    .line 804
    :cond_23
    new-instance v5, Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v12

    invoke-direct {v5, v9, v12}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v5, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 805
    iput v2, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    .line 806
    iget-object v5, v1, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    if-eqz v5, :cond_24

    .line 807
    iget-object v5, v1, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    new-instance v9, Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v13

    invoke-direct {v9, v12, v13}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_24
    return-void
.end method

.method private sendFocusOutConditionally()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    const-string v1, "FgCheckThread"

    if-nez v0, :cond_0

    .line 469
    const-string v0, "  sendFocusOutConditionally(), mPrevNotiPkg is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFocusOutConditionally() - mPrevNotiPkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-eqz v0, :cond_1

    return-void

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  sendFocusOutConditionally(). pause signal is needed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 479
    .local v0, "isGame":Z
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    .line 481
    .local v1, "isSecGameFamily":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 482
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 484
    :cond_3
    return-void
.end method


# virtual methods
.method getFocusedPkgName()Ljava/lang/String;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 876
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getForegroundPkgName()Ljava/lang/String;
    .locals 4

    .line 832
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 835
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "foregroundPkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getForegroundApp(), foregroundPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FgCheckThread"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-object v1

    .line 841
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "foregroundPkgName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getRegisteredCallbackCount()I
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    return v0
.end method

.method getTopActivityName()Ljava/lang/String;
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 864
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 869
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isForeground(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 846
    .local v0, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .line 848
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 846
    const-string v2, "FgCheckThread"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 850
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "pkgName: "

    if-ge v3, v4, :cond_2

    .line 851
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 852
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " is in foreground"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 850
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 857
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-object v1

    .line 847
    :cond_3
    :goto_1
    const-string v3, "isForeground(), runningAppProcesses is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-object v1
.end method

.method notifyAppCreated(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    const-string v1, ", userId: "

    const-string v2, "notifyAppCreated(), packageName: "

    const-string v3, "FgCheckThread"

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    const/16 v4, 0x271a

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 338
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 340
    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    .line 341
    .local v4, "sendRet":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sendRet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v0    # "m":Landroid/os/Message;
    .end local v4    # "sendRet":Z
    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFgHandler is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void
.end method

.method protected onLooperPrepared()V
    .locals 2

    .line 268
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 269
    new-instance v0, Lcom/samsung/android/game/FgCheckThread$4;

    invoke-virtual {p0}, Lcom/samsung/android/game/FgCheckThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/FgCheckThread$4;-><init>(Lcom/samsung/android/game/FgCheckThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    .line 333
    return-void
.end method

.method registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 891
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method registerTaskStackListener()V
    .locals 2

    .line 821
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 822
    .local v0, "activityTaskManager":Landroid/app/IActivityTaskManager;
    if-eqz v0, :cond_0

    .line 823
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v0    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    :cond_0
    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .line 362
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "delay"    # I

    .line 366
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    return-void
.end method

.method public sendFocusedMessage(Lcom/samsung/android/game/PkgWithUserId;)V
    .locals 2
    .param p1, "focusedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    return-void
.end method

.method public sendResumeMessage(Lcom/samsung/android/game/PkgWithUserId;)V
    .locals 2
    .param p1, "resumedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 348
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method

.method setCurrentUserId(I)V
    .locals 0
    .param p1, "currentUserId"    # I

    .line 880
    iput p1, p0, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    .line 881
    return-void
.end method

.method setKeyguardManager(Landroid/app/KeyguardManager;)V
    .locals 1
    .param p1, "keyguardManager"    # Landroid/app/KeyguardManager;

    .line 812
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 813
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 815
    :cond_0
    return-void
.end method

.method setPkgEnabledState(ZZZ)V
    .locals 0
    .param p1, "isGosEnabled"    # Z
    .param p2, "isGameLauncherEnabled"    # Z
    .param p3, "isGameBoosterInstalled"    # Z

    .line 885
    iput-boolean p1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    .line 886
    iput-boolean p2, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    .line 887
    iput-boolean p3, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    .line 888
    return-void
.end method

.method unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 896
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
