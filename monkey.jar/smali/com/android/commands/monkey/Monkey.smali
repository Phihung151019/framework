.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$KillSelfHandler;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I = 0x0

.field private static final DEBUG_ALLOW_ANY_STARTS:I = 0x0

.field private static NUM_READ_TOMBSTONE_RETRIES:I = 0x0

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field private static final TOMBSTONE_PREFIX:Ljava/lang/String; = "tombstone_"

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field private mDisableLogs:Z

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedRotationEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchDescription:Ljava/lang/String;

.field private mMonitorNativeCrashes:Z

.field private final mMonkeyService:Lcom/android/commands/monkey/IMonkey;

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPermissionTargetSystem:Z

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mRequestWatchdogBugreport:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWatchdogWaiting:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreTimeouts(Lcom/android/commands/monkey/Monkey;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/monkey/Monkey;->mMatchDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/commands/monkey/Monkey;)Landroid/content/pm/IPackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerbose(Lcom/android/commands/monkey/Monkey;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReportProcessName(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestAnrBugreport(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestAnrTraces(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestAppCrashBugreport(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestDumpsysMemInfo(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestProcRank(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestWatchdogBugreport(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-string v0, "monkey_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    .line 269
    const/4 v0, 0x5

    sput v0, Lcom/android/commands/monkey/Monkey;->NUM_READ_TOMBSTONE_RETRIES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 176
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 184
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 193
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mDisableLogs:Z

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    .line 213
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 219
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 222
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 225
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 228
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 230
    invoke-static {}, Lcom/android/commands/monkey/Monkey;->createMonkeyService()Lcom/android/commands/monkey/IMonkey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/commands/monkey/Monkey;->mMonkeyService:Lcom/android/commands/monkey/IMonkey;

    .line 233
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 235
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 237
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 239
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 241
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    .line 244
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 247
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 249
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 254
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 257
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 263
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 271
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 273
    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 277
    new-instance v1, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 279
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    return-void
.end method

.method private checkInternalConfiguration()Z
    .locals 1

    .line 1119
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .locals 11

    .line 1402
    sget-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "tombstones":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1411
    :cond_0
    const/4 v2, 0x0

    .line 1414
    .local v2, "result":Z
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1415
    .local v3, "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .line 1416
    .local v5, "t":Ljava/lang/String;
    const-string v6, "tombstone_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1417
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1418
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1419
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1420
    :cond_1
    const/4 v2, 0x1

    .line 1421
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->waitForTombstoneToBeWritten(Ljava/nio/file/Path;)V

    .line 1422
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "** New tombstone found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1423
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1422
    invoke-virtual {v7, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1415
    .end local v5    # "t":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    :cond_3
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1431
    return v2

    .line 1407
    .end local v2    # "result":Z
    .end local v3    # "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1408
    return v1
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "reportName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 514
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mDisableLogs:Z

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 518
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 520
    .local v0, "rt":Ljava/lang/Runtime;
    :try_start_0
    iget-boolean v1, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v1, :cond_1

    .line 521
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    .line 522
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 525
    .local v1, "logOutput":Ljava/io/Writer;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 528
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 529
    .local v4, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 530
    .local v5, "inReader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 532
    .local v6, "inBuffer":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "s":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 533
    iget-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 539
    :try_start_2
    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 540
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    goto :goto_1

    .line 541
    :catch_0
    move-exception v7

    .line 542
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 543
    :cond_2
    sget-object v9, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 544
    goto :goto_3

    .line 547
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v7, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v7, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_4
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 552
    .local v7, "status":I
    sget-object v9, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "// "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " status was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 553
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "inReader":Ljava/io/InputStreamReader;
    .end local v6    # "inBuffer":Ljava/io/BufferedReader;
    .end local v7    # "status":I
    .end local v8    # "s":Ljava/lang/String;
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 556
    .end local v1    # "logOutput":Ljava/io/Writer;
    :cond_5
    goto :goto_5

    .line 520
    .restart local v1    # "logOutput":Ljava/io/Writer;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "rt":Ljava/lang/Runtime;
    .end local p0    # "this":Lcom/android/commands/monkey/Monkey;
    .end local p1    # "reportName":Ljava/lang/String;
    .end local p2    # "command":Ljava/lang/String;
    :cond_6
    :goto_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 553
    .end local v1    # "logOutput":Ljava/io/Writer;
    .restart local v0    # "rt":Ljava/lang/Runtime;
    .restart local p0    # "this":Lcom/android/commands/monkey/Monkey;
    .restart local p1    # "reportName":Ljava/lang/String;
    .restart local p2    # "command":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 554
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 555
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 557
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private static createMonkeyService()Lcom/android/commands/monkey/IMonkey;
    .locals 4

    .line 288
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 290
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 291
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 292
    .local v2, "height":I
    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->createNativeService(II)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/commands/monkey/IMonkey$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/commands/monkey/IMonkey;

    move-result-object v3

    return-object v3
.end method

.method private static native createNativeService(II)Landroid/os/IBinder;
.end method

.method private getBugreport(Ljava/lang/String;)V
    .locals 3
    .param p1, "reportName"    # Ljava/lang/String;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 576
    const-string v0, "[ ,:]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "bugreportName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private getMainApps()Z
    .locals 17

    .line 1170
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1171
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_8

    .line 1172
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    .line 1173
    .local v7, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1174
    .local v4, "category":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1175
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    :cond_0
    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 1178
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 1177
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 1178
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 1179
    .local v5, "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1183
    :cond_1
    iget v6, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v8, 0x2

    if-lt v6, v8, :cond_2

    .line 1184
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "// Selecting main activities from category "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1186
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1187
    .local v6, "NA":I
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1
    if-ge v9, v6, :cond_6

    .line 1188
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1189
    .local v10, "r":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1190
    .local v11, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v13, ")"

    const-string v14, " (from package "

    if-eqz v12, :cond_4

    .line 1191
    :try_start_1
    iget v12, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v12, v8, :cond_3

    .line 1192
    sget-object v12, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x0

    :try_start_2
    const-string v2, "//   + Using main activity "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1191
    :cond_3
    const/16 v16, 0x0

    .line 1195
    :goto_2
    iget-object v2, v1, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v11, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1198
    :cond_4
    const/16 v16, 0x0

    iget v2, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v12, 0x3

    if-lt v2, v12, :cond_5

    .line 1199
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "//   - NOT USING main activity "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1187
    .end local v10    # "r":Landroid/content/pm/ResolveInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    .line 1179
    .end local v6    # "NA":I
    .end local v9    # "a":I
    :cond_7
    const/16 v16, 0x0

    .line 1180
    :goto_4
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "// Warning: no activities found for category "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1181
    nop

    .line 1171
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1205
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1171
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_8
    const/16 v16, 0x0

    .line 1208
    .end local v0    # "N":I
    .end local v3    # "i":I
    nop

    .line 1210
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1211
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v2, "** No activities found to run, monkey aborted."

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1212
    return v16

    .line 1215
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 1205
    :catch_1
    move-exception v0

    const/16 v16, 0x0

    .line 1206
    .local v0, "e":Landroid/os/RemoteException;
    :goto_6
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with package manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1207
    return v16
.end method

.method private getSystemInterfaces()Z
    .locals 4

    .line 1128
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 1129
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1130
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1132
    return v1

    .line 1135
    :cond_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 1137
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v0, :cond_1

    .line 1138
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1140
    return v1

    .line 1143
    :cond_1
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 1144
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_2

    .line 1145
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1147
    return v1

    .line 1151
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey-IA;)V

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1152
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    nop

    .line 1158
    return v3

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1155
    return v1
.end method

.method private injectEvent(Lcom/android/commands/monkey/MonkeyEvent;)I
    .locals 3
    .param p1, "ev"    # Lcom/android/commands/monkey/MonkeyEvent;

    .line 826
    instance-of v0, p1, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 827
    .local v0, "motion":Lcom/android/commands/monkey/MonkeyMotionEvent;
    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getMotionEventForInjection()Landroid/view/MotionEvent;

    move-result-object v1

    .line 828
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/Monkey;->injectTouchEvent(Landroid/view/MotionEvent;)I

    move-result v2

    return v2

    .line 832
    .end local v0    # "motion":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v0

    return v0
.end method

.method private injectTouchEvent(Landroid/view/MotionEvent;)I
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 846
    const/4 v0, 0x1

    .line 847
    .local v0, "success":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 890
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    goto :goto_3

    .line 882
    :pswitch_1
    const/4 v2, 0x0

    .local v2, "pointerIndex":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 884
    const/4 v3, 0x3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/commands/monkey/Monkey;->writeTouchEvent(Landroid/view/MotionEvent;II)Z

    move-result v3

    and-int/2addr v0, v3

    .line 883
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v2    # "pointerIndex":I
    :cond_0
    goto :goto_2

    .line 862
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2    # "pointerIndex":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 864
    const/4 v3, 0x2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/commands/monkey/Monkey;->writeTouchEvent(Landroid/view/MotionEvent;II)Z

    move-result v3

    and-int/2addr v0, v3

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    .end local v2    # "pointerIndex":I
    :cond_1
    goto :goto_2

    .line 872
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 873
    .restart local v2    # "pointerIndex":I
    const/4 v3, 0x1

    .line 874
    .local v3, "resolvedAction":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 875
    const/4 v3, 0x3

    .line 877
    :cond_2
    invoke-direct {p0, p1, v2, v3}, Lcom/android/commands/monkey/Monkey;->writeTouchEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 878
    goto :goto_2

    .line 851
    .end local v2    # "pointerIndex":I
    .end local v3    # "resolvedAction":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 852
    .restart local v2    # "pointerIndex":I
    invoke-direct {p0, p1, v2, v1}, Lcom/android/commands/monkey/Monkey;->writeTouchEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 853
    nop

    .line 892
    .end local v2    # "pointerIndex":I
    :goto_2
    return v0

    .line 890
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/commands/monkey/Monkey;
    .end local p1    # "event":Landroid/view/MotionEvent;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v0    # "success":Z
    .restart local p0    # "this":Lcom/android/commands/monkey/Monkey;
    .restart local p1    # "event":Landroid/view/MotionEvent;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "exc":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 896
    .end local v0    # "exc":Landroid/os/RemoteException;
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1061
    .local p1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, ""

    const/4 v1, 0x0

    .line 1063
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 1065
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1066
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1067
    .end local v3    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1075
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    nop

    .line 1077
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    :goto_1
    goto :goto_2

    .line 1078
    :catch_0
    move-exception v2

    .line 1079
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .end local v2    # "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 1083
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 1075
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1071
    :catch_1
    move-exception v2

    .line 1072
    .restart local v2    # "ioe":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1073
    nop

    .line 1075
    if-eqz v1, :cond_2

    .line 1077
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1080
    goto :goto_3

    .line 1078
    :catch_2
    move-exception v3

    .line 1079
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1073
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 1075
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_4
    if-eqz v1, :cond_3

    .line 1077
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1080
    goto :goto_5

    .line 1078
    :catch_3
    move-exception v3

    .line 1079
    .restart local v3    # "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1082
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_3
    :goto_5
    throw v2
.end method

.method private loadPackageLists()Z
    .locals 4

    .line 1092
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->hasValidPackages()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1094
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1096
    return v1

    .line 1098
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1099
    .local v0, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    .line 1100
    invoke-static {v2, v0}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1101
    return v1

    .line 1103
    :cond_2
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addValidPackages(Ljava/util/Set;)V

    .line 1104
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1105
    .local v2, "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    .line 1106
    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1107
    return v1

    .line 1109
    :cond_3
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addInvalidPackages(Ljava/util/Set;)V

    .line 1110
    const/4 v1, 0x1

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 597
    const-string v0, "com.android.commands.monkey"

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 599
    new-instance v0, Lcom/android/commands/monkey/Monkey$KillSelfHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey$KillSelfHandler;-><init>(Lcom/android/commands/monkey/Monkey-IA;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 600
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 601
    new-instance v0, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v0}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 602
    .local v0, "resultCode":I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 603
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 2

    .line 1551
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1552
    const/4 v0, 0x0

    return-object v0

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v0, v1

    .line 1555
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1556
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    .line 1482
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1483
    return-object v2

    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v0, v1

    .line 1486
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1487
    return-object v2

    .line 1489
    :cond_1
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1490
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1491
    return-object v2

    .line 1493
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_4

    .line 1494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    .line 1495
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1496
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1498
    :cond_3
    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1499
    return-object v0

    .line 1502
    :cond_4
    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1503
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" mCurArgData=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" mNextArg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " argwas=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" nextarg=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v4, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1506
    return-object v0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 4

    .line 1515
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 1518
    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1519
    const/4 v0, 0x0

    return-object v0

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v0, v1

    .line 1522
    .local v0, "data":Ljava/lang/String;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1523
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1524
    return-object v0
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "opt"    # Ljava/lang/String;

    .line 1537
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    .local v0, "result":J
    nop

    .line 1542
    return-wide v0

    .line 1538
    .end local v0    # "result":J
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1540
    throw v0
.end method

.method private processOptions()Z
    .locals 8

    .line 906
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 908
    return v1

    .line 913
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 914
    .local v0, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_2b

    .line 915
    const-string v3, "-s"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 916
    const-string v3, "Seed"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    goto :goto_0

    .line 917
    :cond_1
    const-string v3, "-p"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 918
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 919
    :cond_2
    const-string v3, "-c"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 920
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    :cond_3
    const-string v3, "-v"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 922
    iget v3, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_0

    .line 923
    :cond_4
    const-string v3, "--ignore-crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 924
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_0

    .line 925
    :cond_5
    const-string v3, "--ignore-timeouts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 926
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto :goto_0

    .line 927
    :cond_6
    const-string v3, "--ignore-security-exceptions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 928
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto :goto_0

    .line 929
    :cond_7
    const-string v3, "--monitor-native-crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 930
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto :goto_0

    .line 931
    :cond_8
    const-string v3, "--ignore-native-crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 932
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto :goto_0

    .line 933
    :cond_9
    const-string v3, "--kill-process-after-error"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 934
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_0

    .line 935
    :cond_a
    const-string v3, "--hprof"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 936
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_0

    .line 937
    :cond_b
    const-string v3, "--match-description"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 938
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mMatchDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 939
    :cond_c
    const-string v3, "--pct-touch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 940
    const/4 v3, 0x0

    .line 941
    .local v3, "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "touch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 942
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_d
    const-string v3, "--pct-motion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 943
    const/4 v3, 0x1

    .line 944
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "motion events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 945
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_e
    const-string v3, "--pct-trackball"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 946
    const/4 v3, 0x3

    .line 947
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "trackball events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 948
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_f
    const-string v3, "--pct-rotation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 949
    const/4 v3, 0x4

    .line 950
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "screen rotation events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 951
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_10
    const-string v3, "--pct-syskeys"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 952
    const/16 v3, 0x8

    .line 953
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "system (key) operations percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 954
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_11
    const-string v3, "--pct-nav"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 955
    const/4 v3, 0x6

    .line 956
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 957
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_12
    const-string v3, "--pct-majornav"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 958
    const/4 v3, 0x7

    .line 959
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "major nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 960
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_13
    const-string v3, "--pct-appswitch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 961
    const/16 v3, 0x9

    .line 962
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "app switch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 963
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_14
    const-string v3, "--pct-flip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 964
    const/16 v3, 0xa

    .line 965
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "keyboard flip percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 966
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_15
    const-string v3, "--pct-anyevent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 967
    const/16 v3, 0xb

    .line 968
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "any events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 969
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_16
    const-string v3, "--pct-pinchzoom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 970
    const/4 v3, 0x2

    .line 971
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "pinch zoom events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 972
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_17
    const-string v3, "--pct-permission"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 973
    const/4 v3, 0x5

    .line 974
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "runtime permission toggle events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 975
    .end local v3    # "i":I
    goto/16 :goto_0

    :cond_18
    const-string v3, "--pkg-blacklist-file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 976
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 977
    :cond_19
    const-string v3, "--pkg-whitelist-file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 978
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 979
    :cond_1a
    const-string v3, "--throttle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 980
    const-string v3, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_0

    .line 981
    :cond_1b
    const-string v3, "--randomize-throttle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 982
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_0

    .line 983
    :cond_1c
    const-string v3, "--wait-dbg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto/16 :goto_0

    .line 985
    :cond_1d
    const-string v3, "--dbg-no-events"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 986
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_0

    .line 987
    :cond_1e
    const-string v3, "--port"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 988
    const-string v3, "Server port to listen on for commands"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v3, v5

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_0

    .line 989
    :cond_1f
    const-string v3, "--setup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 990
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_0

    .line 991
    :cond_20
    const-string v3, "-f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 992
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 993
    :cond_21
    const-string v3, "--profile-wait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 994
    const-string v3, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_0

    .line 996
    :cond_22
    const-string v3, "--device-sleep-time"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 997
    const-string v3, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_0

    .line 999
    :cond_23
    const-string v3, "--randomize-script"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1000
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_0

    .line 1001
    :cond_24
    const-string v3, "--script-log"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1002
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_0

    .line 1003
    :cond_25
    const-string v3, "--bugreport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1004
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_0

    .line 1005
    :cond_26
    const-string v3, "--periodic-bugreport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1006
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 1007
    const-string v3, "Number of iterations"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_0

    .line 1008
    :cond_27
    const-string v3, "--permission-target-system"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1009
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    goto/16 :goto_0

    .line 1010
    :cond_28
    const-string v3, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1011
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 1012
    return v1

    .line 1013
    :cond_29
    const-string v3, "--disable-logs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1014
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v5, "** Monkey: all log disbled!"

    invoke-virtual {v3, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1015
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mDisableLogs:Z

    .line 1016
    sput-boolean v1, Lcom/android/commands/monkey/Logger;->stdout:Z

    .line 1017
    sput-boolean v1, Lcom/android/commands/monkey/Logger;->logcat:Z

    goto/16 :goto_0

    .line 1019
    :cond_2a
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1020
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 1021
    return v1

    .line 1024
    :cond_2b
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addValidPackages(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1029
    .end local v0    # "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "opt":Ljava/lang/String;
    nop

    .line 1033
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2d

    .line 1034
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, "countStr":Ljava/lang/String;
    if-nez v0, :cond_2c

    .line 1036
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Error: Count not specified"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 1038
    return v1

    .line 1042
    :cond_2c
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1047
    goto :goto_1

    .line 1043
    :catch_0
    move-exception v2

    .line 1044
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: Count is not a number: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 1046
    return v1

    .line 1050
    .end local v0    # "countStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2d
    :goto_1
    return v2

    .line 1025
    :catch_1
    move-exception v0

    .line 1026
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 1028
    return v1
.end method

.method private reportAnrTraces()V
    .locals 10

    .line 468
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 474
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 475
    .local v0, "recentTraces":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, "mostRecent":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 478
    .local v2, "mostRecentMtime":J
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 479
    .local v6, "trace":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 480
    .local v7, "mtime":J
    cmp-long v9, v7, v2

    if-lez v9, :cond_0

    .line 481
    move-wide v2, v7

    .line 482
    move-object v1, v6

    .line 478
    .end local v6    # "trace":Ljava/io/File;
    .end local v7    # "mtime":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 486
    :cond_1
    if-eqz v1, :cond_2

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "anr traces"

    invoke-direct {p0, v5, v4}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .end local v1    # "mostRecent":Ljava/io/File;
    .end local v2    # "mostRecentMtime":J
    :cond_2
    return-void
.end method

.method private reportDumpsysMemInfo()V
    .locals 2

    .line 500
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method private reportProcRank()V
    .locals 1

    .line 459
    const-string v0, "procrank"

    invoke-direct {p0, v0, v0}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .locals 20
    .param p1, "args"    # [Ljava/lang/String;

    .line 613
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, v2, v4

    .line 614
    .local v5, "s":Ljava/lang/String;
    const-string v6, "--wait-dbg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 615
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 613
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_1
    iput v3, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 621
    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 622
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 623
    iput-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 626
    iput-object v2, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 627
    array-length v0, v2

    move v6, v3

    :goto_1
    if-ge v6, v0, :cond_2

    aget-object v7, v2, v6

    .line 628
    .local v7, "a":Ljava/lang/String;
    sget-object v8, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " arg: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 627
    .end local v7    # "a":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 630
    :cond_2
    iput v3, v1, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v6, 0xc

    if-ge v0, v6, :cond_3

    .line 634
    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 637
    .end local v0    # "i":I
    :cond_3
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v0

    const/4 v7, -0x1

    if-nez v0, :cond_4

    .line 638
    return v7

    .line 641
    :cond_4
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 642
    return v7

    .line 646
    :cond_5
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 647
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v8, "android.intent.category.MONKEY"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_6
    iget-wide v8, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_7

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 655
    :cond_7
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_8

    .line 656
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":Monkey: seed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->dump()V

    .line 658
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 659
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 660
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 661
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":IncludeCategory: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 666
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v0

    if-nez v0, :cond_9

    .line 667
    const/4 v0, -0x2

    return v0

    .line 670
    :cond_9
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v0

    if-nez v0, :cond_a

    .line 671
    const/4 v0, -0x3

    return v0

    .line 674
    :cond_a
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v0

    if-nez v0, :cond_b

    .line 675
    const/4 v0, -0x4

    return v0

    .line 678
    :cond_b
    new-instance v0, Ljava/util/Random;

    iget-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 680
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 682
    new-instance v8, Lcom/android/commands/monkey/MonkeySourceScript;

    iget-object v9, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget-wide v11, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v13, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-wide v14, v1, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-wide/from16 v16, v6

    invoke-direct/range {v8 .. v17}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    iput-object v8, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 684
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    iget v6, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v6}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 686
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    move/from16 v19, v5

    const/16 v18, -0x5

    goto/16 :goto_6

    .line 687
    :cond_c
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_e

    .line 688
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 689
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    iget-object v7, v1, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    iget-wide v9, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v11, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-object v12, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-wide v13, v1, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move/from16 v19, v5

    const/16 v18, -0x5

    iget-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    move/from16 v17, v0

    move-wide v15, v4

    invoke-direct/range {v6 .. v17}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    iput-object v6, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 692
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto :goto_4

    .line 694
    :cond_d
    move/from16 v19, v5

    const/16 v18, -0x5

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    iget-object v5, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v8, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-object v9, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-wide v10, v1, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    iget-wide v12, v1, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    iget-boolean v14, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v4 .. v14}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    iput-object v4, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 698
    :goto_4
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    iget v4, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v4}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 699
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto/16 :goto_6

    .line 687
    :cond_e
    move/from16 v19, v5

    const/16 v18, -0x5

    .line 700
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    if-eq v0, v7, :cond_f

    .line 702
    :try_start_0
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork;

    iget v4, v1, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v0, v4}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    nop

    .line 707
    const v0, 0x7fffffff

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto :goto_6

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, "Error binding to network socket."

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 705
    return v18

    .line 710
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_10

    .line 711
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Seeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 713
    :cond_10
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceRandom;

    iget-object v8, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-object v9, v1, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    iget-wide v10, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v12, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-boolean v13, v1, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    invoke-direct/range {v7 .. v13}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/HashMap;JZZ)V

    iput-object v7, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 715
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    iget v4, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v4}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v6, :cond_12

    .line 718
    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v4, v4, v0

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_11

    .line 719
    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v4, Lcom/android/commands/monkey/MonkeySourceRandom;

    iget-object v5, v1, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v5, v5, v0

    invoke-virtual {v4, v0, v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 717
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 724
    .end local v0    # "i":I
    :cond_12
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    .line 728
    :goto_6
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v0}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v0

    if-nez v0, :cond_13

    .line 729
    return v18

    .line 734
    :cond_13
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v0, :cond_14

    .line 735
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 738
    :cond_14
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 739
    const/4 v4, 0x0

    .line 741
    .local v4, "crashedAtCycle":I
    :try_start_1
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v0

    .line 745
    .end local v4    # "crashedAtCycle":I
    .local v5, "crashedAtCycle":I
    new-instance v0, Lcom/android/commands/monkey/MonkeyRotationEvent;

    invoke-direct {v0, v3, v3}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v7, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    .line 747
    nop

    .line 748
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 750
    monitor-enter p0

    .line 751
    :try_start_2
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v0, :cond_15

    .line 752
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 753
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 755
    :cond_15
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v0, :cond_16

    .line 756
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, "Print the anr report"

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 758
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 760
    :cond_16
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    if-eqz v0, :cond_17

    .line 761
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, "Print the watchdog report"

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 762
    const-string v0, "anr_watchdog_"

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 763
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 765
    :cond_17
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v0, :cond_18

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_crash"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 767
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 769
    :cond_18
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v0, :cond_19

    .line 770
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 771
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 773
    :cond_19
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v0, :cond_1a

    .line 774
    const-string v0, "Bugreport_"

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 775
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 777
    :cond_1a
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    if-eqz v0, :cond_1b

    .line 778
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 779
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 781
    :cond_1b
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 783
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v0, :cond_1c

    .line 784
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 785
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_1c

    .line 786
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, "// Generated profiling reports in /data/misc"

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 791
    :cond_1c
    :try_start_3
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    move/from16 v6, v19

    invoke-interface {v0, v4, v6}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 792
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 799
    goto :goto_7

    .line 793
    :catch_1
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    iget v4, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-lt v5, v4, :cond_1d

    .line 797
    iget v4, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    const/16 v19, 0x1

    add-int/lit8 v5, v4, -0x1

    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_7
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_1e

    .line 803
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":Dropped: keys="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " pointers="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " trackballs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " flips="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " rotations="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 811
    :cond_1e
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 813
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_1f

    .line 814
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** System appears to have crashed at event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using seed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 816
    return v5

    .line 818
    :cond_1f
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_20

    .line 819
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, "// Monkey finished"

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 821
    :cond_20
    return v3

    .line 781
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 745
    .end local v5    # "crashedAtCycle":I
    .restart local v4    # "crashedAtCycle":I
    :catchall_1
    move-exception v0

    new-instance v5, Lcom/android/commands/monkey/MonkeyRotationEvent;

    invoke-direct {v5, v3, v3}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    iget-object v3, v1, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v7, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    .line 747
    throw v0
.end method

.method private runMonkeyCycles()I
    .locals 13

    .line 1227
    const/4 v0, 0x0

    .line 1228
    .local v0, "eventCounter":I
    const/4 v1, 0x0

    .line 1230
    .local v1, "cycleCounter":I
    const/4 v2, 0x0

    .line 1231
    .local v2, "shouldReportAnrTraces":Z
    const/4 v3, 0x0

    .line 1232
    .local v3, "shouldReportDumpsysMemInfo":Z
    const/4 v4, 0x0

    .line 1233
    .local v4, "shouldAbort":Z
    const/4 v5, 0x0

    .line 1237
    .local v5, "systemCrashed":Z
    :goto_0
    if-nez v5, :cond_1b

    :try_start_0
    iget v6, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v1, v6, :cond_1b

    .line 1238
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :try_start_1
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    .line 1241
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 1243
    :cond_0
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v6, :cond_1

    .line 1244
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 1245
    const/4 v2, 0x1

    .line 1247
    :cond_1
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v6, :cond_2

    .line 1248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anr_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1249
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 1251
    :cond_2
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    if-eqz v6, :cond_3

    .line 1252
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v8, "Print the watchdog report"

    invoke-virtual {v6, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1253
    const-string v6, "anr_watchdog_"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1254
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 1256
    :cond_3
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v6, :cond_4

    .line 1257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app_crash"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1258
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 1260
    :cond_4
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v6, :cond_5

    .line 1261
    const-string v6, "Bugreport_"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1262
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 1264
    :cond_5
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v6, :cond_6

    .line 1265
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 1266
    const/4 v3, 0x1

    .line 1268
    :cond_6
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    .line 1271
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v6

    if-eqz v6, :cond_a

    if-lez v0, :cond_a

    .line 1272
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v9, "** New native crash detected."

    invoke-virtual {v6, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1273
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v6, :cond_7

    .line 1274
    const-string v6, "native_crash_"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1276
    :cond_7
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    move v6, v7

    goto :goto_2

    :cond_9
    :goto_1
    move v6, v8

    :goto_2
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 1279
    :cond_a
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v6, :cond_b

    .line 1280
    const/4 v4, 0x1

    .line 1282
    :cond_b
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    if-eqz v6, :cond_c

    .line 1283
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 1284
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1286
    :cond_c
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    if-eqz v2, :cond_d

    .line 1291
    const/4 v2, 0x0

    .line 1292
    :try_start_2
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 1295
    :cond_d
    if-eqz v3, :cond_e

    .line 1296
    const/4 v3, 0x0

    .line 1297
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 1300
    :cond_e
    if-eqz v4, :cond_f

    .line 1301
    const/4 v4, 0x0

    .line 1302
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v7, "** Monkey aborted due to error."

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1303
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Events injected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1304
    return v0

    .line 1310
    :cond_f
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v6, :cond_10

    .line 1311
    add-int/lit8 v0, v0, 0x1

    .line 1312
    add-int/lit8 v1, v1, 0x1

    .line 1313
    goto/16 :goto_0

    .line 1316
    :cond_10
    iget v6, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v6, :cond_11

    rem-int/lit8 v6, v0, 0x64

    if-nez v6, :cond_11

    if-eqz v0, :cond_11

    .line 1317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v6

    .line 1318
    .local v6, "calendarTime":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1319
    .local v9, "systemUpTime":J
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    //[calendar_time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " system_uptime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1321
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    // Sending event #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1324
    .end local v6    # "calendarTime":Ljava/lang/String;
    .end local v9    # "systemUpTime":J
    :cond_11
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v6}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v6

    .line 1325
    .local v6, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v6, :cond_19

    .line 1326
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->injectEvent(Lcom/android/commands/monkey/MonkeyEvent;)I

    move-result v7

    .line 1327
    .local v7, "injectCode":I
    if-nez v7, :cond_15

    .line 1328
    sget-object v8, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v9, "    // Injection Failed"

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1329
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_12

    .line 1330
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    goto :goto_3

    .line 1331
    :cond_12
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v8, :cond_13

    .line 1332
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto :goto_3

    .line 1333
    :cond_13
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v8, :cond_14

    .line 1334
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto :goto_3

    .line 1335
    :cond_14
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v8, :cond_17

    .line 1336
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    goto :goto_3

    .line 1338
    :cond_15
    const/4 v9, -0x1

    if-ne v7, v9, :cond_16

    .line 1339
    const/4 v5, 0x1

    .line 1340
    sget-object v8, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v9, "** Error: RemoteException while injecting event."

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1341
    :cond_16
    const/4 v9, -0x2

    if-ne v7, v9, :cond_17

    .line 1342
    iget-boolean v9, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    xor-int/2addr v8, v9

    move v5, v8

    .line 1343
    if-eqz v5, :cond_17

    .line 1344
    sget-object v8, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v9, "** Error: SecurityException while injecting event."

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1349
    :cond_17
    :goto_3
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v8, :cond_18

    .line 1350
    add-int/lit8 v0, v0, 0x1

    .line 1351
    iget-boolean v8, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-eqz v8, :cond_18

    .line 1352
    add-int/lit8 v1, v1, 0x1

    .line 1355
    .end local v7    # "injectCode":I
    :cond_18
    goto :goto_4

    .line 1356
    :cond_19
    iget-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-nez v7, :cond_1b

    .line 1357
    add-int/lit8 v1, v1, 0x1

    .line 1358
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 1360
    iget-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    if-eqz v7, :cond_1a

    .line 1361
    int-to-long v9, v1

    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_1a

    .line 1362
    iput-boolean v8, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1370
    .end local v6    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1a
    :goto_4
    goto/16 :goto_0

    .line 1286
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "eventCounter":I
    .end local v1    # "cycleCounter":I
    .end local v2    # "shouldReportAnrTraces":Z
    .end local v3    # "shouldReportDumpsysMemInfo":Z
    .end local v4    # "shouldAbort":Z
    .end local v5    # "systemCrashed":Z
    .end local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1371
    .restart local v0    # "eventCounter":I
    .restart local v1    # "cycleCounter":I
    .restart local v2    # "shouldReportAnrTraces":Z
    .restart local v3    # "shouldReportDumpsysMemInfo":Z
    .restart local v4    # "shouldAbort":Z
    .restart local v5    # "systemCrashed":Z
    .restart local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :catch_0
    move-exception v6

    .line 1372
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v7, "** Error: A RuntimeException occurred:"

    invoke-static {v7, v6}, Lcom/android/commands/monkey/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1373
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_1b
    nop

    .line 1374
    :goto_5
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Events injected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1375
    return v0
.end method

.method private showUsage()V
    .locals 3

    .line 1563
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1564
    .local v0, "usage":Ljava/lang/StringBuffer;
    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1565
    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1566
    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1567
    const-string v1, "              [--ignore-security-exceptions]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1568
    const-string v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1569
    const-string v1, "              [--kill-process-after-error] [--hprof]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1570
    const-string v1, "              [--match-description TEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1571
    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1572
    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1573
    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1574
    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1575
    const-string v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1576
    const-string v1, "              [--pct-permission PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1577
    const-string v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1578
    const-string v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1579
    const-string v1, "              [--wait-dbg] [--dbg-no-events]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1580
    const-string v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1581
    const-string v1, "              [--port port]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1582
    const-string v1, "              [-s SEED] [-v [-v] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1583
    const-string v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1584
    const-string v1, "              [--profile-wait MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1585
    const-string v1, "              [--device-sleep-time MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1586
    const-string v1, "              [--randomize-script]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1587
    const-string v1, "              [--script-log]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1588
    const-string v1, "              [--bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1589
    const-string v1, "              [--periodic-bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1590
    const-string v1, "              [--permission-target-system]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1591
    const-string v1, "              [--disable-logs]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1592
    const-string v1, "              COUNT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1593
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method private signalPersistentProcesses()V
    .locals 3

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 1386
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1388
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1391
    .restart local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1389
    :catch_1
    move-exception v0

    .line 1390
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1393
    :goto_1
    return-void
.end method

.method private waitForTombstoneToBeWritten(Ljava/nio/file/Path;)V
    .locals 6
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 1440
    const/4 v0, 0x0

    .line 1443
    .local v0, "isWritten":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v2, Lcom/android/commands/monkey/Monkey;->NUM_READ_TOMBSTONE_RETRIES:I

    if-ge v1, v2, :cond_1

    .line 1444
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1446
    .local v2, "size":J
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1447
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    .line 1448
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    :try_start_2
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 1450
    const/4 v0, 0x1

    .line 1451
    goto :goto_3

    .line 1443
    .end local v2    # "size":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1456
    .end local v1    # "i":I
    :cond_1
    :goto_3
    goto :goto_4

    .line 1454
    :catch_1
    move-exception v1

    .line 1455
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get tombstone file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1457
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    if-nez v0, :cond_2

    .line 1458
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "Incomplete tombstone file."

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1459
    return-void

    .line 1461
    :cond_2
    return-void
.end method

.method private writeScriptLog(I)V
    .locals 5
    .param p1, "count"    # I

    .line 563
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    .line 564
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "scriptlog.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 565
    .local v0, "output":Ljava/io/Writer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iteration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v0    # "output":Ljava/io/Writer;
    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeTouchEvent(Landroid/view/MotionEvent;II)Z
    .locals 10
    .param p1, "motion"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 838
    .local v1, "pointerId":I
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMonkeyService:Lcom/android/commands/monkey/IMonkey;

    .line 839
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 840
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 841
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 838
    const/4 v2, 0x1

    move v3, p3

    .end local p3    # "action":I
    .local v3, "action":I
    invoke-interface/range {v0 .. v9}, Lcom/android/commands/monkey/IMonkey;->writeTouchEvent(IIIFFFFJ)Z

    move-result p3

    return p3
.end method
