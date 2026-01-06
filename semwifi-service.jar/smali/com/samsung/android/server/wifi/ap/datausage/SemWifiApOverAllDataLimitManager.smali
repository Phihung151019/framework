.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DAILY_MHS_DATA_LIMIT:Ljava/lang/String; = "daily_mhs_data_limit"

.field private static final DATA_LIMIT_INVALID_VALUE:J = -0x1L

.field public static final DATA_LIMIT_NOT_SET:J = 0x0L

.field private static final DATA_USAGE_SHARED_PREFERENCE:Ljava/lang/String; = "mhs_data_usage_shared_perference"

.field private static final TAG:Ljava/lang/String; = "SemWifiApOverAllDataLimitManager"

.field private static mDailyDataLimit:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

.field mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mDailyDataLimit:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 7
    .line 8
    const-string p2, "sem_wifi"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 17
    .line 18
    return-void
.end method

.method private getOverAllMhsDataLimitFromPreference()J
    .locals 10

    .line 1
    const-string v0, "Migration of Data limit From sharedPreferences to Settings DB is Completed"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "daily_mhs_data_limit"

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    cmp-long v1, v5, v3

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-wide v5

    .line 22
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "Migration of Data limit From sharedPreferences to Settings DB is not taken place therefore doing it"

    .line 25
    .line 26
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string v8, "mhs_data_usage_shared_perference"

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-interface {v7, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-static {v9, v2, v7, v8}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 v9, 0x1

    .line 61
    invoke-static {v1, v0, v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return-wide v7

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    const-string v1, "exception happen while reading preference, setting default Data Limit"

    .line 77
    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v2, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return-wide v5

    .line 94
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method private switchOffMhsDueToDataLimitReached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0x1041102

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->restartAdvBecauseOfDataLimitChanged()V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "MHS is switch off due to data limit reached"

    .line 48
    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method checkDataUsageAndSwitchOffIfReached(J)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->isDataLimitReached(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->switchOffMhsDueToDataLimitReached()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Global Data limit is reached, so switching off the MHS + ignoreLast4Digit_roundOff(getTodayTotalDataUsage())="

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->ignoreLast4Digit_roundOff(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " , ignoreLast4Digit_roundOff(dailyDataLimit) =  "

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->ignoreLast4Digit_roundOff(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method checkForDailyDataLimitReached(ZZZJJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    if-eqz p3, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->isDataLimitReached(J)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->switchOffMhsDueToDataLimitReached()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    add-long/2addr p6, p1

    .line 32
    sub-long/2addr p6, p4

    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 34
    .line 35
    invoke-virtual {p0, p6, p7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseOverAllMhs(J)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p2, "called MHS pause mhs at  = "

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeOverAllMhs()V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    const-string p1, "removed mhs data limit call due to no data limit"

    .line 66
    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 72
    .line 73
    .line 74
    move-result-wide p4

    .line 75
    cmp-long p4, p4, v0

    .line 76
    .line 77
    if-lez p4, :cond_3

    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeOverAllMhs()V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance p4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string p5, "removed mhs data limit call due to: isCellularUpstream : "

    .line 89
    .line 90
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, ", mIsMobileDataEnable = "

    .line 97
    .line 98
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, ", isMhsActive="

    .line 105
    .line 106
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-static {p4, p2, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method

.method getGlobalDataLimitPerDay()J
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mDailyDataLimit:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mDailyDataLimit:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getOverAllMhsDataLimitFromPreference()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mDailyDataLimit:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method

.method isDataLimitReached(J)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->ignoreLast4Digit_roundOff(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->ignoreLast4Digit_roundOff(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    cmp-long p0, p1, v0

    .line 24
    .line 25
    if-ltz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method saveDailyDataLimitAndProceed(JZZZJJ)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mDailyDataLimit:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    .line 12
    .line 13
    move-object v3, p0

    .line 14
    move v4, p3

    .line 15
    move v5, p4

    .line 16
    move/from16 v6, p5

    .line 17
    .line 18
    move-wide/from16 v7, p6

    .line 19
    .line 20
    move-wide/from16 v9, p8

    .line 21
    .line 22
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->checkForDailyDataLimitReached(ZZZJJ)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v2, "daily_mhs_data_limit"

    .line 32
    .line 33
    invoke-static {p0, v2, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->restartAdvBecauseOfDataLimitChanged()V

    .line 45
    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "daily data limit set to "

    .line 50
    .line 51
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v4, "Event =Overall clients settings updated"

    .line 69
    .line 70
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    cmp-long v0, p1, v0

    .line 74
    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    const-string p1, ",, DataLimitInBytes =[Limit Removed]"

    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-string v0, ",, DataLimitInBytes ="

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_0
    const-string p1, "#tag_wifi_ap_lab_client_event#"

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x1

    .line 101
    invoke-static {v2, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
