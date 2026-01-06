.class public Lcom/samsung/android/server/wifi/SemWifiConfigManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;,
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;,
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;,
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;
    }
.end annotation


# static fields
.field static final BUFFERED_WRITE_ALARM_INTERVAL_MS:J = 0x7d0L

.field static final BUFFERED_WRITE_ALARM_TAG:Ljava/lang/String; = "SemWifiConfigAlarm"

.field private static final CHANGE_REASON_ADDED:I = 0x1

.field private static final CHANGE_REASON_NETWORK_RESET:I = 0x4

.field private static final CHANGE_REASON_REMOVED:I = 0x2

.field private static final CHANGE_REASON_UPDATED:I = 0x3

.field private static final DBG:Z

.field static final MIN_DISABLE_TIME_MS:J = 0x927c0L

.field static final SYNC_CONFIG_DELAY_MS:J = 0x1f4L

.field static final SYNC_REMOVED_CONFIG_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SemWifiConfigManager"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mCloseDbPending:Z

.field private final mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

.field private final mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

.field mErrorCount:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHiddenSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstSync:Z

.field private final mLegacyConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLegacyLock:Ljava/lang/Object;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkAddedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRemovedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkUpdatedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecoverySettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$CdJRircn_MGLBcStSGAZDhwVV5Q(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$notifyToClient$5(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$FJe3LsP-asomVwNowvrIKh913qo(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$clearDisableReason$0(Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$KLs1un0VRZGv6BmFBru7YnyHxV0(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$removeAllNetworkInternal$8()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$OeKxZyaR9v16CTHiVQuS9PQQxqc(Lcom/samsung/android/server/wifi/SemWifiConfigManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$loadFromDb$2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$QSqWwNKOgN1uv2vdR8AZ2AjhEj4(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$saveToStorage$6(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RNlLtwItuPAdCqY46mZfloaXM-s(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$removeFromStorage$7(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$akKd9O7o7nfzxtDvPGlTM_a5Xfg(Lcom/samsung/android/server/wifi/SemWifiConfigManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$loadFromDb$1(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$uxouuXeibwBP-SB7_gTi8w8kWkg(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$notifyToClient$4(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$zAVV--CrtS661UN-IMYDL_JWhX8(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$notifyToClient$3(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseDatabase(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->closeDatabase()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msyncManagedWifiNetworks(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->syncManagedWifiNetworks()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    .line 25
    .line 26
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mIsFirstSync:Z

    .line 35
    .line 36
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 39
    .line 40
    const-string p3, "alarm"

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Landroid/app/AlarmManager;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p3, p0, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;I)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 62
    .line 63
    new-instance p2, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 69
    .line 70
    new-instance p1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 76
    .line 77
    new-instance p1, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 83
    .line 84
    new-instance p1, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mRecoverySettings:Ljava/util/Map;

    .line 90
    .line 91
    new-instance p1, Ljava/util/HashSet;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    .line 97
    .line 98
    new-instance p1, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    .line 104
    .line 105
    new-instance p1, Ljava/util/HashSet;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkUpdatedListeners:Ljava/util/Set;

    .line 111
    .line 112
    new-instance p1, Ljava/util/HashSet;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    .line 118
    .line 119
    new-instance p1, Landroid/util/LocalLog;

    .line 120
    .line 121
    const/16 p2, 0x80

    .line 122
    .line 123
    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    .line 127
    .line 128
    return-void
.end method

.method private checkAndEnableNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x7

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 38
    .line 39
    packed-switch v0, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "enable network "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 50
    .line 51
    const-string v2, "SemWifiConfigManager"

    .line 52
    .line 53
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 57
    .line 58
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private closeDatabase()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->stopClosingDbAlarm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v2, v0

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Closing to database completed in "

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " ms."

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "SemWifiConfigManager"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private convertSecurityTypeToWifiConfiguration(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_1
    const/16 p0, 0xc

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_2
    const/16 p0, 0xb

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_3
    const/16 p0, 0x9

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_4
    const/16 p0, 0x8

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_5
    const/4 p0, 0x7

    .line 19
    return p0

    .line 20
    :pswitch_6
    const/4 p0, 0x6

    .line 21
    return p0

    .line 22
    :pswitch_7
    const/4 p0, 0x5

    .line 23
    return p0

    .line 24
    :pswitch_8
    const/4 p0, 0x4

    .line 25
    return p0

    .line 26
    :pswitch_9
    const/4 p0, 0x3

    .line 27
    return p0

    .line 28
    :pswitch_a
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    :pswitch_b
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isStorageFieldChanged(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 2
    .line 3
    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 4
    .line 5
    if-ne p0, v0, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 8
    .line 9
    iget-boolean v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    iget v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 14
    .line 15
    iget v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 20
    .line 21
    iget-boolean v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 26
    .line 27
    iget v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    iget v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 32
    .line 33
    iget v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 34
    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 41
    :goto_1
    const-string v2, " "

    .line 42
    .line 43
    if-eq p0, v0, :cond_2

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "{isCaptivePortal : "

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const-string p0, "{"

    .line 66
    .line 67
    :goto_2
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 68
    .line 69
    iget-boolean v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 70
    .line 71
    if-eq v0, v3, :cond_3

    .line 72
    .line 73
    const-string v0, "isLockDown : "

    .line 74
    .line 75
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_3
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 92
    .line 93
    iget v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 94
    .line 95
    if-eq v0, v3, :cond_4

    .line 96
    .line 97
    const-string v0, "networkScore : "

    .line 98
    .line 99
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 104
    .line 105
    invoke-static {v2, v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :cond_4
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 110
    .line 111
    iget-boolean v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 112
    .line 113
    if-eq v0, v3, :cond_5

    .line 114
    .line 115
    const-string v0, "isNoInternetAccessExpected : "

    .line 116
    .line 117
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    :cond_5
    iget-wide v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 134
    .line 135
    iget-wide v5, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 136
    .line 137
    cmp-long v0, v3, v5

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    const-string v0, "disableTimeByWcm : "

    .line 142
    .line 143
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iget-wide v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 148
    .line 149
    invoke-static {v3, v4, v2, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    :cond_6
    iget-wide v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 154
    .line 155
    iget-wide v5, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 156
    .line 157
    cmp-long v0, v3, v5

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    const-string v0, "disableTimeByEle : "

    .line 162
    .line 163
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    iget-wide v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 168
    .line 169
    invoke-static {v3, v4, v2, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :cond_7
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 174
    .line 175
    iget v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 176
    .line 177
    if-eq v0, v3, :cond_8

    .line 178
    .line 179
    const-string v0, "altNetworkTargetRssi : "

    .line 180
    .line 181
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 186
    .line 187
    invoke-static {v2, v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    :cond_8
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 192
    .line 193
    iget v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 194
    .line 195
    if-eq v0, v3, :cond_9

    .line 196
    .line 197
    const-string v0, "networkDisableReason : "

    .line 198
    .line 199
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    sget-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    .line 204
    .line 205
    iget v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 206
    .line 207
    aget-object v0, v0, v3

    .line 208
    .line 209
    invoke-static {p0, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    :cond_9
    iget-wide v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 214
    .line 215
    const-wide/16 v5, 0x0

    .line 216
    .line 217
    cmp-long v0, v3, v5

    .line 218
    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    const-string v0, "creationTime : "

    .line 222
    .line 223
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    iget-wide v3, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 228
    .line 229
    invoke-static {v3, v4, v2, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    :cond_a
    iget p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 234
    .line 235
    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 236
    .line 237
    if-eq p1, v0, :cond_b

    .line 238
    .line 239
    const-string p1, "personalizedConnectionOption : "

    .line 240
    .line 241
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    iget p1, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 246
    .line 247
    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    :cond_b
    const-string p1, "}"

    .line 252
    .line 253
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0
.end method

.method private synthetic lambda$clearDisableReason$0(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearDisableReason(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$loadFromDb$1(II)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p2, 0x1

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->checkAndSyncWithDatabase()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private synthetic lambda$loadFromDb$2(I)V
    .locals 2

    .line 1
    const-string v0, "configured networks changed, reason: "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiConfigManager"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 26
    .line 27
    const-wide/16 v0, 0x3e8

    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 34
    .line 35
    const-wide/16 v0, 0x1f4

    .line 36
    .line 37
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static synthetic lambda$notifyToClient$3(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;->onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$notifyToClient$4(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;->onNetworkAdded(Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$notifyToClient$5(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;->onNetworkUpdated()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$removeAllNetworkInternal$8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->deleteAll()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->startClosingDbAlarm()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$removeFromStorage$7(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->delete(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aget v1, p1, v0

    .line 13
    .line 14
    add-int/2addr v1, v0

    .line 15
    aput v1, p1, v0

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->startClosingDbAlarm()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic lambda$saveToStorage$6(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->addOrUpdate(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget v1, p1, v0

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    aput v1, p1, v0

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->startClosingDbAlarm()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private mergeWithInternalWifiConfiguration(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 4

    .line 1
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 2
    .line 3
    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 4
    .line 5
    iget-boolean p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 6
    .line 7
    iput-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 8
    .line 9
    iget-boolean p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 10
    .line 11
    iput-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 12
    .line 13
    iget-boolean p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 14
    .line 15
    iput-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 16
    .line 17
    iget-wide v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 18
    .line 19
    iput-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 20
    .line 21
    iget-wide v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 22
    .line 23
    iput-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 24
    .line 25
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 26
    .line 27
    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 28
    .line 29
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 30
    .line 31
    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 32
    .line 33
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long p0, v0, v2

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    iget-wide v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 42
    .line 43
    iput-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 44
    .line 45
    :cond_0
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 46
    .line 47
    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 48
    .line 49
    return-void
.end method

.method private notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    if-eq p1, p2, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, v2, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkUpdatedListeners:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-direct {v1, v2, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;

    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    invoke-direct {v2, v0, p2, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;

    .line 129
    .line 130
    const/4 v3, 0x3

    .line 131
    invoke-direct {v2, v0, p2, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    :goto_4
    return-void
.end method

.method private removeAllNetworkInternal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private removeFromStorage(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private saveToStorage(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private startClosingDbAlarm()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiConfigManager"

    .line 6
    .line 7
    const-string v1, "reset alarm"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->stopClosingDbAlarm()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v3, 0x7d0

    .line 24
    .line 25
    add-long v4, v0, v3

    .line 26
    .line 27
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 28
    .line 29
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const-string v6, "SemWifiConfigAlarm"

    .line 33
    .line 34
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    .line 39
    .line 40
    return-void
.end method

.method private stopClosingDbAlarm()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private syncManagedWifiNetworks()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    sub-long/2addr v3, v0

    .line 20
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-wide/16 v0, 0x7d0

    .line 27
    .line 28
    cmp-long v0, v3, v0

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    const-string p0, "SemWifiConfigManager"

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "skip syncManagedNetworks. timeout for getting saved network. "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " ms"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v5, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v6

    .line 75
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_1

    .line 112
    .line 113
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 118
    .line 119
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    new-instance v6, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const/4 v8, -0x1

    .line 141
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_8

    .line 146
    .line 147
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 152
    .line 153
    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 154
    .line 155
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-nez v10, :cond_4

    .line 164
    .line 165
    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 166
    .line 167
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    new-instance v11, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    :cond_4
    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 180
    .line 181
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    iget-boolean v10, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 202
    .line 203
    if-eqz v10, :cond_5

    .line 204
    .line 205
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_5
    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mIsFirstSync:Z

    .line 211
    .line 212
    if-eqz v10, :cond_7

    .line 213
    .line 214
    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 215
    .line 216
    if-eq v8, v10, :cond_6

    .line 217
    .line 218
    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->checkAndEnableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    iget v8, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-nez v10, :cond_3

    .line 233
    .line 234
    const/4 v10, 0x1

    .line 235
    invoke-direct {p0, v10, v9}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_8
    const/4 v7, 0x0

    .line 240
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mIsFirstSync:Z

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_a

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    check-cast v7, Ljava/util/Map$Entry;

    .line 261
    .line 262
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-nez v8, :cond_9

    .line 271
    .line 272
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 277
    .line 278
    const/4 v8, 0x2

    .line 279
    invoke-direct {p0, v8, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 284
    .line 285
    monitor-enter v0

    .line 286
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 287
    .line 288
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 289
    .line 290
    .line 291
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 292
    .line 293
    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 294
    .line 295
    .line 296
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    .line 297
    .line 298
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 299
    .line 300
    .line 301
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    .line 302
    .line 303
    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    .line 305
    .line 306
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 307
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 308
    .line 309
    monitor-enter v6

    .line 310
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 311
    .line 312
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-eqz v7, :cond_c

    .line 325
    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    check-cast v7, Ljava/util/Map$Entry;

    .line 331
    .line 332
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-nez v8, :cond_b

    .line 341
    .line 342
    const-string v8, "SemWifiConfigManager"

    .line 343
    .line 344
    new-instance v9, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v10, " - removed "

    .line 350
    .line 351
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    check-cast v10, Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    check-cast v7, Ljava/lang/String;

    .line 375
    .line 376
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeFromStorage(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 380
    .line 381
    .line 382
    goto :goto_3

    .line 383
    :catchall_1
    move-exception p0

    .line 384
    goto :goto_4

    .line 385
    :cond_c
    const-string v0, "SemWifiConfigManager"

    .line 386
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v7, "syncManagedNetworks n="

    .line 393
    .line 394
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v2, " m="

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 410
    .line 411
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string p0, " h="

    .line 419
    .line 420
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p0, " t="

    .line 431
    .line 432
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string p0, "ms"

    .line 439
    .line 440
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p0

    .line 447
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    monitor-exit v6

    .line 451
    return-void

    .line 452
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    throw p0

    .line 454
    :catchall_2
    move-exception p0

    .line 455
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 456
    throw p0

    .line 457
    :goto_5
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 458
    throw p0
.end method


# virtual methods
.method public addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemWifiConfigManager"

    .line 11
    .line 12
    const-string p1, "addOrUpdateNetwork failed, configKey is empty"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 22
    .line 23
    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v4, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 26
    .line 27
    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v4, v5}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 39
    .line 40
    iget-object v4, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iput-wide v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    const/4 v3, 0x0

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-boolean v0, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    :cond_2
    const/16 v0, 0x3e8

    .line 70
    .line 71
    if-eq p2, v0, :cond_3

    .line 72
    .line 73
    const-string p0, "SemWifiConfigManager"

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " is locked down. not allow to update "

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " network by uid "

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->isStorageFieldChanged(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Landroid/util/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mergeWithInternalWifiConfiguration(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v4

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 122
    .line 123
    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v4, "addOrUpdateNetwork "

    .line 132
    .line 133
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    const-string v4, " (added)"

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v4, Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    const-string v4, " (changed)"

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    const-string v4, " (unchanged)"

    .line 160
    .line 161
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v4, "SemWifiConfigManager"

    .line 169
    .line 170
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v4, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_7

    .line 182
    .line 183
    if-eqz v3, :cond_6

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    return-object p1

    .line 187
    :cond_7
    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->saveToStorage(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p2, Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 p2, 0x3

    .line 209
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    .line 210
    .line 211
    .line 212
    return-object p1

    .line 213
    :catchall_1
    move-exception p0

    .line 214
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    throw p0

    .line 216
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    throw p0
.end method

.method addOrUpdateRecoveryTime(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "disable "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " network and add to recovery list"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "SemWifiConfigManager"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mRecoverySettings:Ljava/util/Map;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    const-wide/32 v3, 0x927c0

    .line 50
    .line 51
    .line 52
    add-long/2addr v1, v3

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method checkAndRecoveryNetwork()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mRecoverySettings:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    cmp-long v4, v0, v4

    .line 40
    .line 41
    if-lez v4, :cond_0

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v5, "recovery network "

    .line 46
    .line 47
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "SemWifiConfigManager"

    .line 85
    .line 86
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 102
    .line 103
    const/4 v4, -0x1

    .line 104
    if-eq v3, v4, :cond_1

    .line 105
    .line 106
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method checkAndSyncWithDatabase()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    const-string v0, "SemWifiConfigManager"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "syncWithDatabase addOrUpdate error count: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 18
    .line 19
    aget v3, v3, v1

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 32
    .line 33
    aput v1, v0, v1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 59
    .line 60
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->saveToStorage(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    monitor-exit v0

    .line 67
    goto :goto_2

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    aget v0, v0, v2

    .line 74
    .line 75
    if-lez v0, :cond_2

    .line 76
    .line 77
    const-string v0, "SemWifiConfigManager"

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "syncWithDatabase remove error count: "

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 87
    .line 88
    aget v4, v4, v2

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    .line 101
    .line 102
    aput v1, v0, v2

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 105
    .line 106
    const-wide/16 v0, 0x1f4

    .line 107
    .line 108
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method

.method public clearAllNetworks()V
    .locals 2

    .line 1
    const-string v0, "SemWifiConfigManager"

    .line 2
    .line 3
    const-string v1, "clearAllNetworks"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    .line 29
    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeAllNetworkInternal()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw p0

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    throw p0
.end method

.method clearDisableReason(I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method clearDisableReason(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "SemWifiConfigManager:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SemWifiConfigManager - Log Begin ----"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "SemWifiConfigManager - Log End ----"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string v0, ""

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public getManagedNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 30
    .line 31
    new-instance v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 32
    .line 33
    invoke-direct {v3, v2}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 p0, 0x0

    .line 15
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    return-object p0

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result p1

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->convertSecurityTypeToWifiConfiguration(I)I

    move-result p0

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 19
    invoke-virtual {v1, p0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p0, v2, :cond_4

    .line 20
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    return-object v1

    :cond_6
    return-object v0
.end method

.method public getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 4
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getSsidAndSecurityTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    .line 7
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSavedNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSavedNetworks(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isHiddenSsid(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public loadFromDb()V
    .locals 4

    .line 1
    const-string v0, "loadFromDb config size: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 9
    .line 10
    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getConfigs()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "SemWifiConfigManager"

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->DBG:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    new-instance v0, Ljava/io/File;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "wifi/crash.txt"

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->testForRescueParty(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 74
    .line 75
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 84
    .line 85
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    throw p0

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    throw p0
.end method

.method public loadSavedNetworks()V
    .locals 2

    .line 1
    const-string v0, "loadSavedNetworks"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "SemWifiConfigManager"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 12
    .line 13
    const-wide/16 v0, 0x1f4

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public registerNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemWifiConfigManager"

    .line 13
    .line 14
    const-string p1, "registerNetworkAddedListener: duplicate registration ignored"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemWifiConfigManager"

    .line 13
    .line 14
    const-string p1, "registerNetworkRemovedListener: duplicate registration ignored"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public registerNetworkUpdatedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkUpdatedListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemWifiConfigManager"

    .line 13
    .line 14
    const-string p1, "registerNetworkUpdatedListener: duplicate registration ignored"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method removeNetwork(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 4

    .line 1
    const-string v0, "not allow to remove network "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-boolean v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/16 v3, 0x3e8

    .line 21
    .line 22
    if-eq p2, v3, :cond_0

    .line 23
    .line 24
    const-string p0, "SemWifiConfigManager"

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    monitor-exit v1

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    const-string p2, "removeNetwork "

    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "SemWifiConfigManager"

    .line 64
    .line 65
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeFromStorage(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object v2

    .line 72
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p0
.end method

.method setDisableReason(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateRecoveryTime(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput p2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    iput p2, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-wide/16 p1, 0x0

    .line 41
    .line 42
    iput-wide p1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 43
    .line 44
    iput-wide p1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput p1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 48
    .line 49
    :goto_0
    const/16 p1, 0x3e8

    .line 50
    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method setTestDbHelper(Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 2
    .line 3
    return-void
.end method

.method testForRescueParty(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string p1, "Rescue Party Feature Test"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public unregisterNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemWifiConfigManager"

    .line 13
    .line 14
    const-string p1, "unregisterNetworkAddedListener: never registered listener"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public unregisterNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemWifiConfigManager"

    .line 13
    .line 14
    const-string p1, "unregisterNetworkRemovedListener: never registered listener"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public unregisterNetworkUpdatedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkUpdatedListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemWifiConfigManager"

    .line 13
    .line 14
    const-string p1, "unregisterNetworkUpdatedListener: never registered listener"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
