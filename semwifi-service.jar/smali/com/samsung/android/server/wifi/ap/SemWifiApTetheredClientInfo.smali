.class public Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;
    }
.end annotation


# static fields
.field public static DEFAULT_CONNECTED_IP:Ljava/lang/String; = "x.x.x.x"

.field private static MHSDBG:Z = false

.field private static TAG:Ljava/lang/String; = "SemWifiApTetheredClientInfo"

.field private static final WIFI_AP_STA_DHCPACK_EVENT:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

.field private static mIsLOHSmode:Z = false


# instance fields
.field private isRegisteredCallback:Z

.field private mClearDeepCopyObject:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDHCPIntent:Landroid/content/Intent;

.field private mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mTetheredInfaceState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private numOfTetheredClients:I

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$I0F26CEpUN4w0hDn9CQpLh9K0Uw(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Landroid/content/Context;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->lambda$new$0(Landroid/content/Context;IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeepCopyLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheredInfaceState:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$msendDHCPACKBroadcast(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->sendDHCPACKBroadcast(Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLastConnectedClientInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->updateLastConnectedClientInfo(Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$smshowMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheredInfaceState:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mClearDeepCopyObject:Ljava/lang/Runnable;

    .line 46
    .line 47
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const v1, 0x1040477

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 77
    .line 78
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 89
    .line 90
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private getIPAddressFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v1, Ljava/io/FileReader;

    .line 9
    .line 10
    const-string v2, "/proc/net/arp"

    .line 11
    .line 12
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    const-string v2, "[ ]+"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    array-length v3, v2

    .line 36
    const/4 v4, 0x6

    .line 37
    if-ge v3, v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    move-object p1, v0

    .line 52
    goto :goto_6

    .line 53
    :catch_0
    move-object p0, p1

    .line 54
    move-object p1, v0

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-object p0, p1

    .line 57
    move-object p1, v0

    .line 58
    goto :goto_4

    .line 59
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 60
    aget-object v1, v2, v1

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    aget-object v2, v2, v3

    .line 64
    .line 65
    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    move-object p1, v1

    .line 72
    :cond_3
    if-nez p1, :cond_4

    .line 73
    .line 74
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "Did not find remoteAddress {"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, "} in /proc/net/arp"

    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_6

    .line 107
    :catch_2
    move-object p0, p1

    .line 108
    goto :goto_2

    .line 109
    :catch_3
    move-object p0, p1

    .line 110
    goto :goto_4

    .line 111
    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 112
    .line 113
    const-string v1, "Could not read /proc/net/arp to lookup mac address"

    .line 114
    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 121
    .line 122
    .line 123
    :catch_4
    :cond_5
    move-object p1, p0

    .line 124
    goto :goto_5

    .line 125
    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    const-string v1, "Could not open /proc/net/arp to lookup mac address"

    .line 128
    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    .line 131
    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catch_5
    :goto_5
    return-object p1

    .line 136
    :goto_6
    if-eqz p1, :cond_6

    .line 137
    .line 138
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 139
    .line 140
    .line 141
    :catch_6
    :cond_6
    throw p0
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    const-string v0, "netd"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "Failed to bind service netd, error="

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mNetdService:Landroid/net/INetd;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "Can\'t bind service netd"

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "Failed to get OemNetd listener "

    .line 70
    .line 71
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 75
    .line 76
    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p5, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    .line 4
    .line 5
    invoke-static {p5, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 p3, 0xd

    .line 9
    .line 10
    const/4 p5, 0x0

    .line 11
    if-ne p2, p3, :cond_4

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const p3, 0x1040477

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sput-object p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    const-string p2, "MHS enabled"

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p3, "MHS enabled"

    .line 38
    .line 39
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const-class p2, Landroid/net/TetheringManager;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/net/TetheringManager;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringManager:Landroid/net/TetheringManager;

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string p3, " Registering tethered client callback"

    .line 62
    .line 63
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringManager:Landroid/net/TetheringManager;

    .line 69
    .line 70
    new-instance p3, Landroid/os/HandlerExecutor;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-direct {p3, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 78
    .line 79
    invoke-virtual {p1, p3, p0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 84
    .line 85
    if-nez p0, :cond_2

    .line 86
    .line 87
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    const-string p1, " mTetheringManager is null, error"

    .line 90
    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 95
    if-ne p4, p0, :cond_3

    .line 96
    .line 97
    sput-boolean p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mIsLOHSmode:Z

    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    sput-boolean p5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mIsLOHSmode:Z

    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    const/16 p1, 0xb

    .line 104
    .line 105
    if-eq p2, p1, :cond_6

    .line 106
    .line 107
    const/16 p1, 0xe

    .line 108
    .line 109
    if-ne p2, p1, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    return-void

    .line 113
    :cond_6
    :goto_1
    iput p5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    .line 114
    .line 115
    const-string p1, "MHS disabled"

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string p2, "MHS disabled"

    .line 123
    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter p1

    .line 130
    :try_start_0
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    .line 134
    invoke-direct {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 140
    .line 141
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mClearDeepCopyObject:Ljava/lang/Runnable;

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_7

    .line 148
    .line 149
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 150
    .line 151
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mClearDeepCopyObject:Ljava/lang/Runnable;

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mHandler:Landroid/os/Handler;

    .line 160
    .line 161
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mClearDeepCopyObject:Ljava/lang/Runnable;

    .line 162
    .line 163
    const-wide/32 v0, 0xea60

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 172
    .line 173
    .line 174
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    .line 176
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    .line 181
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 182
    .line 183
    if-eqz p2, :cond_8

    .line 184
    .line 185
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringManager:Landroid/net/TetheringManager;

    .line 186
    .line 187
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 188
    .line 189
    invoke-virtual {p2, p3}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->isRegisteredCallback:Z

    .line 193
    .line 194
    monitor-exit p1

    .line 195
    return-void

    .line 196
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    throw p0
.end method

.method private sendDHCPACKBroadcast(Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v4, :cond_c

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/net/TetheredClient;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-nez v6, :cond_6

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/net/TetheredClient;->getTetheringType()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_6

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-lez v6, :cond_3

    .line 61
    .line 62
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/net/TetheredClient$AddressInfo;

    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/net/TetheredClient$AddressInfo;->getAddress()Landroid/net/LinkAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "^/+"

    .line 85
    .line 86
    const-string v9, ""

    .line 87
    .line 88
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "/"

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    aget-object v9, v6, v5

    .line 99
    .line 100
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroid/net/TetheredClient$AddressInfo;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/net/TetheredClient$AddressInfo;->getHostname()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_2

    .line 115
    .line 116
    const-string v5, "null"

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move-object v10, v4

    .line 126
    goto :goto_2

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    move-object p0, v0

    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_2
    :goto_1
    move-object v10, v8

    .line 132
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v5, " new client: "

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 143
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v11

    .line 148
    const/4 v13, 0x0

    .line 149
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    .line 164
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 165
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v11

    .line 170
    const/4 v13, 0x0

    .line 171
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v11

    .line 183
    const/4 v13, 0x0

    .line 184
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDeepCopyLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 193
    .line 194
    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 199
    .line 200
    if-eqz v4, :cond_4

    .line 201
    .line 202
    iget-boolean v5, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    .line 203
    .line 204
    if-nez v5, :cond_4

    .line 205
    .line 206
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 207
    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v7, "address info is not available for:"

    .line 214
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v7, ",using deep copy"

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v6, "address info is not available for using deepcopy: "

    .line 243
    .line 244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 248
    .line 249
    iget-object v9, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v10, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 254
    .line 255
    .line 256
    move-result-wide v11

    .line 257
    const/4 v13, 0x0

    .line 258
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 272
    .line 273
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 274
    .line 275
    iget-object v9, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v10, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 280
    .line 281
    .line 282
    move-result-wide v11

    .line 283
    const/4 v13, 0x0

    .line 284
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 291
    .line 292
    iget-object v9, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v10, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 297
    .line 298
    .line 299
    move-result-wide v11

    .line 300
    const/4 v13, 0x0

    .line 301
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_4
    const-string v4, ""

    .line 310
    .line 311
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_5

    .line 316
    .line 317
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 318
    .line 319
    :cond_5
    move-object v9, v4

    .line 320
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 321
    .line 322
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 323
    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 325
    .line 326
    .line 327
    move-result-wide v11

    .line 328
    const/4 v13, 0x1

    .line 329
    move-object v10, v8

    .line 330
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 337
    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 339
    .line 340
    .line 341
    move-result-wide v11

    .line 342
    const/4 v13, 0x1

    .line 343
    move-object v10, v8

    .line 344
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 351
    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v6, "assuming static client connected:"

    .line 358
    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v5, "assuming static client connected:: "

    .line 382
    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 387
    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 389
    .line 390
    .line 391
    move-result-wide v11

    .line 392
    const/4 v13, 0x1

    .line 393
    move-object v10, v8

    .line 394
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 410
    .line 411
    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    if-eqz v6, :cond_0

    .line 416
    .line 417
    invoke-virtual {v4}, Landroid/net/TetheredClient;->getTetheringType()I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-nez v6, :cond_0

    .line 422
    .line 423
    invoke-virtual {v4}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 428
    .line 429
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 434
    .line 435
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 436
    .line 437
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 438
    .line 439
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 444
    .line 445
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 446
    .line 447
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 448
    .line 449
    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 454
    .line 455
    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 456
    .line 457
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-lez v6, :cond_b

    .line 462
    .line 463
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    check-cast v6, Landroid/net/TetheredClient$AddressInfo;

    .line 468
    .line 469
    invoke-virtual {v6}, Landroid/net/TetheredClient$AddressInfo;->getAddress()Landroid/net/LinkAddress;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    invoke-virtual {v6}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    const-string v7, "^/+"

    .line 486
    .line 487
    const-string v9, ""

    .line 488
    .line 489
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    const-string v7, "/"

    .line 494
    .line 495
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    aget-object v9, v6, v5

    .line 500
    .line 501
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Landroid/net/TetheredClient$AddressInfo;

    .line 506
    .line 507
    invoke-virtual {v0}, Landroid/net/TetheredClient$AddressInfo;->getHostname()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_8

    .line 516
    .line 517
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_7

    .line 522
    .line 523
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-nez v0, :cond_8

    .line 528
    .line 529
    :cond_7
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 530
    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    const-string v4, "MAC is exist but device name connected device , got IP and got hostname "

    .line 537
    .line 538
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .line 555
    .line 556
    const-string v1, "MAC is exist but device name connected device , got IP and got hostname "

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 572
    .line 573
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 574
    .line 575
    const/4 v13, 0x0

    .line 576
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 583
    .line 584
    const/4 v13, 0x0

    .line 585
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    goto :goto_3

    .line 592
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-nez v0, :cond_b

    .line 597
    .line 598
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-nez v0, :cond_b

    .line 603
    .line 604
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-nez v0, :cond_9

    .line 609
    .line 610
    const-string v0, "null"

    .line 611
    .line 612
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    if-eqz v0, :cond_a

    .line 617
    .line 618
    :cond_9
    move-object v10, v8

    .line 619
    :cond_a
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 620
    .line 621
    const-string v1, "MAC is exist but IP is not same"

    .line 622
    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string v1, "MAC is exist but IP is not same for mac:"

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 637
    .line 638
    const/4 v13, 0x0

    .line 639
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 653
    .line 654
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 655
    .line 656
    const/4 v13, 0x0

    .line 657
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 664
    .line 665
    const/4 v13, 0x0

    .line 666
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    :cond_b
    :goto_3
    move-wide v0, v11

    .line 673
    goto/16 :goto_0

    .line 674
    .line 675
    :cond_c
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 677
    .line 678
    .line 679
    move-result p1

    .line 680
    move v3, v5

    .line 681
    :cond_d
    :goto_4
    if-ge v3, p1, :cond_10

    .line 682
    .line 683
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    add-int/lit8 v3, v3, 0x1

    .line 688
    .line 689
    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 690
    .line 691
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    if-eqz v6, :cond_e

    .line 696
    .line 697
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 698
    .line 699
    const/16 v7, 0x16c

    .line 700
    .line 701
    new-array v8, v5, [Ljava/lang/Object;

    .line 702
    .line 703
    invoke-static {v6, v7, v8}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->auditLogEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    :cond_e
    new-instance v6, Landroid/content/Intent;

    .line 707
    .line 708
    const-string v7, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 709
    .line 710
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    const-string v7, "EVENT"

    .line 714
    .line 715
    const-string v8, "sta_join"

    .line 716
    .line 717
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    .line 719
    .line 720
    const-string v7, "MAC"

    .line 721
    .line 722
    iget-object v8, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 723
    .line 724
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    .line 726
    .line 727
    const-string v7, "IP"

    .line 728
    .line 729
    iget-object v8, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 730
    .line 731
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    .line 733
    .line 734
    const-string v7, "DEVICE"

    .line 735
    .line 736
    iget-object v8, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 737
    .line 738
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    .line 740
    .line 741
    const-string v7, "TIME"

    .line 742
    .line 743
    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 744
    .line 745
    .line 746
    const-string v7, "MODE"

    .line 747
    .line 748
    sget-boolean v8, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mIsLOHSmode:Z

    .line 749
    .line 750
    if-eqz v8, :cond_f

    .line 751
    .line 752
    const-string v8, "LOHS"

    .line 753
    .line 754
    goto :goto_5

    .line 755
    :cond_f
    const-string v8, "TETHERED"

    .line 756
    .line 757
    :goto_5
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    .line 759
    .line 760
    const-string v7, "STA_COUNT"

    .line 761
    .line 762
    iget v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->numOfTetheredClients:I

    .line 763
    .line 764
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    .line 766
    .line 767
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 768
    .line 769
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 770
    .line 771
    const-string v9, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 772
    .line 773
    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    iget-boolean v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    .line 777
    .line 778
    if-nez v6, :cond_d

    .line 779
    .line 780
    new-instance v6, Landroid/content/Intent;

    .line 781
    .line 782
    const-string v7, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    .line 783
    .line 784
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    iput-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    .line 788
    .line 789
    const-string v7, "MAC"

    .line 790
    .line 791
    iget-object v9, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 792
    .line 793
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    .line 795
    .line 796
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    .line 797
    .line 798
    const-string v7, "IP"

    .line 799
    .line 800
    iget-object v9, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 801
    .line 802
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    .line 804
    .line 805
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    .line 806
    .line 807
    const-string v7, "DEVICE"

    .line 808
    .line 809
    iget-object v9, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 810
    .line 811
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    .line 813
    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    .line 815
    .line 816
    const-string v7, "MAC:"

    .line 817
    .line 818
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 822
    .line 823
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v7

    .line 827
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v7, ",IP:"

    .line 831
    .line 832
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    iget-object v7, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 836
    .line 837
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    const-string v7, ",mHostname:"

    .line 841
    .line 842
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 846
    .line 847
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 858
    .line 859
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mDHCPIntent:Landroid/content/Intent;

    .line 860
    .line 861
    const-string v7, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 862
    .line 863
    invoke-virtual {v4, v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_4

    .line 867
    .line 868
    :cond_10
    return-void

    .line 869
    :goto_6
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    throw p0
.end method

.method private static showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    const/16 v2, 0x11

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private updateLastConnectedClientInfo(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->MHSDBG:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/net/TetheredClient;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/net/TetheredClient;->getTetheringType()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v5, "callback:"

    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/net/TetheredClient;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 98
    .line 99
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_3

    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Landroid/net/TetheredClient;

    .line 116
    .line 117
    invoke-virtual {v6}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    if-eqz v7, :cond_2

    .line 126
    .line 127
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_2

    .line 132
    .line 133
    invoke-virtual {v6}, Landroid/net/TetheredClient;->getTetheringType()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_3
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 144
    .line 145
    invoke-direct {v3, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const/4 v2, 0x0

    .line 157
    move v3, v2

    .line 158
    :goto_2
    if-ge v3, p1, :cond_5

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    .line 166
    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    .line 170
    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    :goto_3
    if-ge v2, p1, :cond_7

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 188
    .line 189
    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 190
    .line 191
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v5, "AP_STA_REMOVE_EVENT:"

    .line 196
    .line 197
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v4, "AP_STA_REMOVE_EVENT:"

    .line 219
    .line 220
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    .line 240
    .line 241
    if-eqz v3, :cond_6

    .line 242
    .line 243
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_6

    .line 250
    .line 251
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-nez v3, :cond_6

    .line 260
    .line 261
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 266
    .line 267
    invoke-interface {v3, v4}, Lcom/android/internal/net/IOemNetd;->flushArpEntry(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :catch_0
    move-exception v3

    .line 272
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    :cond_6
    :goto_4
    new-instance v3, Landroid/content/Intent;

    .line 276
    .line 277
    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 278
    .line 279
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string v4, "EVENT"

    .line 283
    .line 284
    const-string v5, "sta_leave"

    .line 285
    .line 286
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    const-string v4, "MAC"

    .line 290
    .line 291
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    const-string v4, "IP"

    .line 297
    .line 298
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    const-string v4, "IS_STATIC"

    .line 304
    .line 305
    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    .line 306
    .line 307
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    const-string v1, "STA_COUNT"

    .line 311
    .line 312
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 324
    .line 325
    const-string v5, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 326
    .line 327
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :cond_7
    return-void

    .line 333
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    throw p0
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " mhs: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 46
    .line 47
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " "

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "\n"

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/16 v1, 0x64

    .line 94
    .line 95
    if-le p1, v1, :cond_0

    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception p1

    .line 117
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_1
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    throw p1
.end method

.method public declared-synchronized getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "--WifiApTetheredClientInfo history \n"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public getNumOfConnectedDevices()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getWifiApStaListDetail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    check-cast v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 41
    .line 42
    iget-object v5, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    const-string v6, "[\n\r]"

    .line 47
    .line 48
    const-string v7, ""

    .line 49
    .line 50
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iput-object v5, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    iget-object v5, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    sget-object v6, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    const-string v5, ""

    .line 72
    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_1

    .line 78
    .line 79
    iput-object v5, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 80
    .line 81
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v6, "\n"

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v6, "\n"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, "\n"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-wide v6, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 117
    .line 118
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    monitor-exit v0

    .line 139
    return-object p0

    .line 140
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw p0
.end method

.method public updateStaticClientDetailsFromNSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "updateStaticClientDetailsFromNSD"

    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 26
    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    move-object v5, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v5, p2

    .line 32
    :goto_0
    if-eqz p5, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 37
    .line 38
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 39
    .line 40
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    move-object v3, p1

    .line 44
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    move-object v3, p1

    .line 55
    :goto_1
    if-nez p5, :cond_3

    .line 56
    .line 57
    iget-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    iget-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 66
    .line 67
    sget-object p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->mLastTetheredClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;

    .line 78
    .line 79
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v4, p3

    .line 83
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_3
    monitor-exit v1

    .line 90
    return-void

    .line 91
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method
