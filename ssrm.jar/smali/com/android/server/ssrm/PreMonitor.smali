.class public final Lcom/android/server/ssrm/PreMonitor;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PreMonitor$BrightnessController;
    }
.end annotation


# static fields
.field static AP_TEMP_1ST_STEP:I = 0x0

.field static AP_TEMP_2ND_STEP:I = 0x0

.field static AP_TEMP_3RD_STEP:I = 0x0

.field static AP_TEMP_4TH_STEP:I = 0x0

.field static AP_TEMP_5TH_STEP:I = 0x0

.field static BRIGHTNESS_LIMIT:I = 0x0

.field static BRIGHTNESS_PATH:Ljava/lang/String; = null

.field static CPU_LITTLE_MAXLIMIT:I = 0x0

.field static CPU_MAXLIMIT_1ST:I = 0x0

.field static CPU_MAXLIMIT_2ND:I = 0x0

.field static CPU_MAXLIMIT_3RD:I = 0x0

.field static CPU_MAXLIMIT_4TH:I = 0x0

.field static CPU_MAXLIMIT_5TH:I = 0x0

.field static CPU_OVERHEAT_LIMIT:I = 0x0

.field private static LOCAL_TEST:Z = false

.field static final PROPERTY_PDA:Ljava/lang/String; = "ro.build.PDA"

.field private static PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUT_DATABASE_PATH:Ljava/lang/String; = "/data/system/rut.db"

.field private static final SYSFS_CHARGING_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static final TAG:Ljava/lang/String;

.field static db:Lcom/android/server/ssrm/BinaryVersionDatabase;

.field static final mDisableCoolDownFile:Ljava/io/File;

.field static mIsPreMonitoringEnabled:Z

.field static mLastCpuMaxLimit:I

.field static mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static mSysfs:Lcom/samsung/android/os/SemDvfsManager;

.field static sApTemperature:I

.field static sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sBatteryTemperature:I

.field static sBootComplete:Z

.field static sContext:Landroid/content/Context;

.field static sSiopEnabled:Z

.field static sSkinTemperature:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smSetPreMonitorLog()V
    .locals 0

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->SetPreMonitorLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-class v0, Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 39
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    .line 41
    const/4 v1, -0x1

    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 43
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 45
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 47
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 49
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 51
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 53
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    .line 55
    const/16 v2, 0x1ae

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 57
    const/16 v2, 0x1c2

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 59
    const/16 v2, 0x1d6

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 61
    const/16 v2, 0x1ea

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 63
    const/16 v2, 0x1fe

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 65
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 67
    new-instance v2, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    .line 71
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ssrm_v2.cooldown_disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mDisableCoolDownFile:Ljava/io/File;

    .line 265
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    .line 287
    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    .line 301
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBrightnessPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    .line 336
    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 338
    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 340
    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 342
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 344
    sput v1, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    .line 420
    sput v0, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    .line 429
    sput v0, Lcom/android/server/ssrm/PreMonitor;->sSkinTemperature:I

    .line 461
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SetPreMonitorLog()V
    .locals 13

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "time":J
    const-string v2, "yyyy-MM-dd kk:mm:ss "

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "strTime":Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v4, "/sys/class/power_supply/battery/siop_level"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "strCharging":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    .line 84
    .local v4, "strBat":I
    sget v5, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    div-int/lit8 v5, v5, 0xa

    .line 85
    .local v5, "strAP":I
    sget v6, Lcom/android/server/ssrm/PreMonitor;->sSkinTemperature:I

    div-int/lit8 v6, v6, 0xa

    .line 86
    .local v6, "strSkin":I
    sget-object v7, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v7, :cond_0

    .line 87
    sget-object v7, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v8, "SSRM_SYSFS_CHECK"

    const/16 v9, -0x3e7

    invoke-static {v7, v8, v9}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v7

    sput-object v7, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    .line 90
    :cond_0
    sget-object v7, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    const v8, 0x12001002

    invoke-virtual {v7, v8}, Lcom/samsung/android/os/SemDvfsManager;->sysfsRead(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "strCpuMax":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBrightness()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "strBrightness":Ljava/lang/String;
    sget-object v9, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[PRE] [AP :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%4d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][BAT :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][CHG : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v11

    .line 95
    const-string v12, "%4s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][SKIN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][CF :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    .line 97
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][LB :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    .line 98
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method static bootComplete()V
    .locals 2

    .line 464
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    .line 466
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$2;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 506
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 508
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 509
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 512
    .local v0, "brightness":I
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 516
    .end local v0    # "brightness":I
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    if-nez v0, :cond_1

    .line 517
    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    .line 521
    return-void
.end method

.method private static getApThermistorPath()Ljava/lang/String;
    .locals 6

    .line 441
    const-string v0, "/sys/class/sec/sec-thermistor/temperature"

    const-string v1, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v2, "/sys/class/sec/sec-ap-thermistor/temperature"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "candidates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 448
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 447
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static getBatteryTemperature()I
    .locals 1

    .line 458
    sget v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    return v0
.end method

.method static getBrightness()Ljava/lang/String;
    .locals 3

    .line 304
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "raw":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 306
    const-string v1, "4"

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    return-object v0
.end method

.method static getBrightnessPath()Ljava/lang/String;
    .locals 6

    .line 316
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    return-object v0

    .line 319
    :cond_0
    const-string v0, "/sys/class/backlight/panel0-backlight/brightness"

    const-string v1, "/sys/class/backlight/panel/brightness"

    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "candidates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 326
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    .line 329
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    return-object v1

    .line 325
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getLastBatteryTemperature()I
    .locals 1

    .line 110
    sget v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    return v0
.end method

.method public static getPreMonitorLog()Lcom/android/server/ssrm/CircularBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    return-object v0
.end method

.method static improveOverheatingInFota()V
    .locals 2

    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 348
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 349
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$1;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    return-void
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    .line 115
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/BinaryVersionDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    .line 117
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_PARADIGM:Z

    const/16 v1, 0x7e

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q7Q:Z

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q7MQ:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 119
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAQ:Z

    const/16 v2, 0x208

    const v3, 0x1a1300

    const/16 v4, 0x1f4

    const/16 v5, 0x1e0

    if-eqz v0, :cond_1

    .line 120
    sput v5, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 121
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 122
    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 123
    const v0, 0x1d9700

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 124
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 125
    const v0, 0x168f00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 126
    const v0, 0x245400

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 127
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAS:Z

    const v6, 0x15f900

    const v7, 0x18e700

    if-eqz v0, :cond_2

    .line 128
    sput v5, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 129
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 130
    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 131
    const v0, 0x1a5e00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 132
    sput v7, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 133
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 134
    const v0, 0x232800

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 135
    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B5Q:Z

    if-eqz v0, :cond_3

    .line 136
    const v0, 0x114900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 137
    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 138
    const v0, 0xf3c00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 139
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 140
    const v0, 0x1fef00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 141
    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B6Q:Z

    const v2, 0x203a00

    if-eqz v0, :cond_4

    .line 142
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 143
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 144
    :cond_4
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B7R:Z

    const v8, 0x1d4c00

    if-eqz v0, :cond_5

    .line 145
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 146
    sput v8, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 147
    :cond_5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    if-eqz v0, :cond_6

    .line 148
    const v0, 0x148200

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 149
    const v3, 0x119400

    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 150
    const v3, 0xea600

    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 151
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 152
    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 153
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 154
    :cond_6
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    const v2, 0x101d00

    if-eqz v0, :cond_7

    .line 155
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 156
    const v0, 0xe5b00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 157
    const v0, 0xd9f80

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 158
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 159
    const v0, 0x211b00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 160
    :cond_7
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    const/16 v9, 0xa9

    const v10, 0x130b00

    if-eqz v0, :cond_8

    .line 161
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 162
    const v0, 0x1174c0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 163
    const v0, 0xfde80

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 164
    sput v9, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 165
    const v0, 0x215340

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 166
    :cond_8
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    const v11, 0x106800

    const v12, 0x122a00

    const/16 v13, 0x1c2

    const/16 v14, 0x1ae

    const/16 v15, 0x19a

    if-eqz v0, :cond_b

    .line 167
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    const v1, 0x20d000

    const v2, 0x189c00

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    if-eqz v0, :cond_9

    goto :goto_0

    .line 178
    :cond_9
    const v0, 0x13ec00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 179
    sput v12, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 180
    sput v11, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 181
    sput v9, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 182
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 183
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 168
    :cond_a
    :goto_0
    sput v15, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 169
    sput v14, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 170
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 171
    sput v12, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 172
    sput v11, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 173
    const v0, 0xd0980

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 174
    const/16 v0, 0x6d

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 175
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 176
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_6

    .line 185
    :cond_b
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    if-eqz v0, :cond_c

    goto/16 :goto_4

    .line 190
    :cond_c
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    const v9, 0x156300

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    if-eqz v0, :cond_d

    goto/16 :goto_3

    .line 195
    :cond_d
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z

    if-eqz v0, :cond_e

    .line 196
    sput v15, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 197
    sput v14, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 198
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 199
    const v0, 0x163780

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 200
    const v0, 0x1506d0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 201
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 202
    const/16 v0, 0x8e

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_6

    .line 203
    :cond_e
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    if-eqz v0, :cond_f

    goto/16 :goto_2

    .line 207
    :cond_f
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    if-eqz v0, :cond_10

    .line 208
    sput v15, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 209
    sput v14, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 210
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 211
    sput v5, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 212
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 213
    sput v8, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 214
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 215
    const v0, 0x16da00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 216
    const v0, 0x13a100

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 217
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 218
    const/16 v0, 0x8a

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_6

    .line 219
    :cond_10
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    if-eqz v0, :cond_11

    goto/16 :goto_1

    .line 231
    :cond_11
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    if-eqz v0, :cond_12

    .line 232
    const v0, 0x17bb00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 233
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 234
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 235
    const/16 v0, 0x95

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_6

    .line 236
    :cond_12
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A55x:Z

    if-eqz v0, :cond_13

    .line 237
    const/16 v0, 0x1a4

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 238
    const/16 v0, 0x1b8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 239
    const/16 v0, 0x1cc

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 240
    const v0, 0x1bd500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 241
    sput v7, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 242
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_6

    .line 243
    :cond_13
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A56X:Z

    if-eqz v0, :cond_14

    .line 244
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_6

    .line 245
    :cond_14
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    if-eqz v0, :cond_15

    .line 246
    sput v7, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 247
    const v0, 0x177000

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 248
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_6

    .line 249
    :cond_15
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    if-eqz v0, :cond_16

    .line 250
    const v0, 0x176830

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 251
    const v0, 0x15a310

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 252
    const v0, 0x137090

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 253
    const/16 v0, 0x95

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto :goto_6

    .line 254
    :cond_16
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    if-eqz v0, :cond_17

    .line 255
    const v0, 0x176060

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 256
    const v0, 0x1604b8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 257
    const v0, 0x13c298

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_6

    .line 258
    :cond_17
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    if-eqz v0, :cond_1d

    .line 259
    const v0, 0x16d252

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 260
    const v0, 0x158512

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 261
    const v0, 0x142d67

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_6

    .line 220
    :cond_18
    :goto_1
    sput v15, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 221
    sput v14, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 222
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 223
    sput v5, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 224
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 225
    const v0, 0x1e2d00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 226
    const v0, 0x1aa900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 227
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 228
    sput v12, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 229
    sput v11, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 230
    const/16 v0, 0x8a

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto :goto_6

    .line 204
    :cond_19
    :goto_2
    const v0, 0x208500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 205
    sput v8, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 206
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_6

    .line 192
    :cond_1a
    :goto_3
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 193
    sput v12, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 194
    sput v11, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_6

    .line 187
    :cond_1b
    :goto_4
    const v0, 0x1acee8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 188
    const v0, 0x186879

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 189
    const v0, 0x1693d6

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_6

    .line 118
    :cond_1c
    :goto_5
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 263
    :cond_1d
    :goto_6
    return-void
.end method

.method public static isSiopEnabled()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    return v0
.end method

.method public static run()V
    .locals 7

    .line 272
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/rut.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "rutFile":Ljava/io/File;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 274
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v1

    .line 275
    .local v1, "batTemp":I
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 276
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    invoke-virtual {v2}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "version":Ljava/lang/String;
    const-string v3, "ro.build.PDA"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 278
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    :cond_0
    sget-object v4, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v5, "/sys/class/power_supply/battery/siop_level"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->improveOverheatingInFota()V

    .line 282
    :cond_1
    sget-object v4, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/BinaryVersionDatabase;->setVersion(Ljava/lang/String;)V

    .line 285
    .end local v2    # "version":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static updateApTemperature()V
    .locals 2

    .line 423
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getApThermistorPath()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 425
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    .line 427
    :cond_0
    return-void
.end method

.method static updateBatteryTemperature()V
    .locals 2

    .line 290
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    if-eqz v0, :cond_0

    .line 291
    const/16 v0, -0xc8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    goto :goto_0

    .line 294
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/temp"

    .line 295
    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 299
    :goto_0
    return-void
.end method

.method static updateSkinTemperature()V
    .locals 2

    .line 432
    nop

    .line 433
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 434
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    .line 436
    .local v1, "temp":I
    sput v1, Lcom/android/server/ssrm/PreMonitor;->sSkinTemperature:I

    .line 438
    .end local v1    # "temp":I
    :cond_0
    return-void
.end method
