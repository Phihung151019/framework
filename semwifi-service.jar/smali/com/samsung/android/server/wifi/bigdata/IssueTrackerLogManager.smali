.class public Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;,
        Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;
    }
.end annotation


# static fields
.field static final ACTION_ISSUE_TRACKER_ON_OFF:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ONOFF"

.field static final ACTION_ISSUE_TRACKER_RESULT:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"

.field static final ACTION_ISSUE_TRACKER_WIFI_ADVANCED:Ljava/lang/String; = "com.samsung.android.WLAN_ADVANCED_DEBUG"

.field private static final DBG:Z

.field static final EXTRA_ERROR_CODE:Ljava/lang/String; = "ERRCODE"

.field private static final EXTRA_ERROR_MSG:Ljava/lang/String; = "ERRMSG"

.field static final EXTRA_ERROR_NAME:Ljava/lang/String; = "ERRNAME"

.field static final EXTRA_ERROR_PACKAGE:Ljava/lang/String; = "ERRPKG"

.field static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field static final EXTRA_ON_OFF:Ljava/lang/String; = "ONOFF"

.field public static final ISSUE_TRACKER_SKIP_BIGHAMMER_REASON:Ljava/lang/String; = "99"

.field public static final ISSUE_TRACKER_SKIP_HANG_REASON:Ljava/lang/String; = "36"

.field public static final ISSUE_TRACKER_SYS_DUMP_DISC:I = 0x2

.field public static final ISSUE_TRACKER_SYS_DUMP_HANG:I = 0x0

.field public static final ISSUE_TRACKER_SYS_DUMP_UNWANTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifi.IssueTracker"

.field public static final WLAN_ADVANCED_DEBUG_DISC:I = 0x4

.field public static final WLAN_ADVANCED_DEBUG_HOTSPOT:I = 0x40

.field public static final WLAN_ADVANCED_DEBUG_PKT:I = 0x1

.field public static final WLAN_ADVANCED_DEBUG_RESET:I = 0x0

.field public static final WLAN_ADVANCED_DEBUG_UNWANTED:I = 0x2

.field public static final WLAN_ADVANCED_DEBUG_UNWANTED_PANIC:I = 0x10


# instance fields
.field private advancedDebugFlags:I

.field private final context:Landroid/content/Context;

.field private hotspotLogThread:Ljava/lang/Thread;

.field private isActive:Z

.field private isHotspotLogRunning:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTimeToString(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->getTimeToString(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
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
    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->context:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    .line 21
    .line 22
    const-string v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v0, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private captureBugReport()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "unwanted_dumpState_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->getTimeToString(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ".log"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "system/bin/bugreport > /data/log/"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "/system/bin/sh"

    .line 26
    .line 27
    const-string v3, "-c"

    .line 28
    .line 29
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->executeCommand([Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const-string v1, "SemWifi.IssueTracker"

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "captureBugReport completed ("

    .line 44
    .line 45
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ")"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const-string p0, "captureBugReport failed"

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private executeCommand([Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string p0, "executeCommand Exception:"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    const-string v1, "SemWifi.IssueTracker"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 43
    .line 44
    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 50
    .line 51
    .line 52
    :cond_1
    throw p0
.end method

.method private getTimeToString(Z)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/text/DecimalFormat;

    .line 6
    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "00"

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    add-int/2addr v1, v2

    .line 25
    int-to-long v3, v1

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x5

    .line 31
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    int-to-long v3, v3

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v4, 0xb

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    int-to-long v4, v4

    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v5, 0xc

    .line 52
    .line 53
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    int-to-long v5, v5

    .line 58
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    const/16 p1, 0xd

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    int-to-long v6, p1

    .line 71
    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string p1, ""

    .line 77
    .line 78
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method private setupDumpFlagForS_LSI()V
    .locals 3

    .line 1
    const-string v0, "-c"

    .line 2
    .line 3
    const-string v1, "system/bin/cp /data/log/mx_panic /proc/driver/mxman_ctrl0/mx_panic"

    .line 4
    .line 5
    const-string v2, "/system/bin/sh"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->executeCommand([Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v0, "SemWifi.IssueTracker"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "setupDumpFlagForS_LSI completed"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "setupDumpFlagForS_LSI failed"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private writeToMxPanicFile()V
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "/data/log/mx_panic"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    const-string p0, "1"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 35
    :catch_0
    const-string p0, "SemWifi.IssueTracker"

    .line 36
    .line 37
    const-string v0, "writeToMxPanicFile failed"

    .line 38
    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public captureDumpForUnwanted()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwanted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->sendBroadcastIssueTrackerSysDump(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->DBG:Z

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwanted()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwantedPanic()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwantedPanic()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v1, "SemWifi.IssueTracker"

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v0, "captureDumpForUnwanted - panic file"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->writeToMxPanicFile()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->setupDumpFlagForS_LSI()V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    const-string v0, "captureDumpForUnwanted - bug report"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->captureBugReport()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnabledAdvDebugForDISC()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x4

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public isEnabledAdvDebugForUnwanted()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public isEnabledAdvDebugForUnwantedPanic()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x10

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .locals 2

    .line 1
    const-string v0, "SemWifi.IssueTracker"

    .line 2
    .line 3
    const-string v1, "registerListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public runHotspotDebugLog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->stopHotspotDebugLog()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->hotspotLogThread:Ljava/lang/Thread;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public sendBroadcastIssueTrackerSysDump(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "sendBroadcastIssueTrackerSysDump reason : "

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SemWifi.IssueTracker"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 22
    .line 23
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "ERRPKG"

    .line 27
    .line 28
    const-string v3, "WifiStateMachine"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v2, "ERRMSG"

    .line 34
    .line 35
    const-string v3, "ERRNAME"

    .line 36
    .line 37
    const/16 v4, -0x6e

    .line 38
    .line 39
    const-string v5, "ERRCODE"

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    if-eq p1, v6, :cond_2

    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    if-eq p1, v6, :cond_1

    .line 48
    .line 49
    const-string p0, "wrong reason "

    .line 50
    .line 51
    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string p1, "DISC"

    .line 59
    .line 60
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p1, "Wi-Fi DISC happened"

    .line 64
    .line 65
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const-string p1, "UNWANTED"

    .line 73
    .line 74
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string p1, "Wi-Fi UNWANTED happened"

    .line 78
    .line 79
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string p1, "HANGED"

    .line 87
    .line 88
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const-string p1, "Wi-Fi chip HANGED"

    .line 92
    .line 93
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->context:Landroid/content/Context;

    .line 97
    .line 98
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 99
    .line 100
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public stopHotspotDebugLog()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->hotspotLogThread:Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->hotspotLogThread:Ljava/lang/Thread;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .locals 2

    .line 1
    const-string v0, "SemWifi.IssueTracker"

    .line 2
    .line 3
    const-string v1, "unregisterListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
