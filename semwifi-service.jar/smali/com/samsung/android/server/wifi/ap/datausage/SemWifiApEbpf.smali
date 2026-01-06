.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;,
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;,
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiApEbpf"

.field private static mSoftApInterface:Ljava/lang/String; = "swlan0"


# instance fields
.field private dummyMhsMac:Ljava/lang/String;

.field private final mClientCurrentUsageStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientPrevUsageStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedStaIp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedStaMac:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedStaMacTrimmed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;

.field private final mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private overAllHotspotLastTimeInMilliSecs:J

.field private pauseclients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetconverted(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getconverted(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientPrevUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientCurrentUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 31
    .line 32
    new-instance v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;

    .line 33
    .line 34
    invoke-direct {v2, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 45
    .line 46
    const-string v0, "1234"

    .line 47
    .line 48
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->dummyMhsMac:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 56
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMacTrimmed:Ljava/util/List;

    .line 63
    .line 64
    new-instance v0, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaIp:Ljava/util/HashSet;

    .line 70
    .line 71
    const-wide/16 v0, -0x1

    .line 72
    .line 73
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->overAllHotspotLastTimeInMilliSecs:J

    .line 74
    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    return-void
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    const-string v0, "SemWifiApEbpf"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    const-string v1, "netd"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

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
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mNetdService:Landroid/net/INetd;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const-string v1, "Can\'t bind service netd"

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    const-string v2, "Failed to get OemNetd listener "

    .line 66
    .line 67
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 71
    .line 72
    return-object p0
.end method

.method private getUntrimmedMacFromTrimmedMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x2

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v0, 0x1

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x3a

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x2

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private getWifiApDataUsageForOverAllMhs()J
    .locals 4

    .line 1
    const-string v0, "getWifiApDataUsageForOverAllMhs():  overall data is"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->getTotalDataUsage(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-string p0, "SemWifiApEbpf"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-wide v1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-wide v1
.end method

.method private getconverted(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " bps"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const-wide/32 v0, 0xf4240

    .line 26
    .line 27
    .line 28
    cmp-long p0, p1, v0

    .line 29
    .line 30
    if-gez p0, :cond_1

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    long-to-double p1, p1

    .line 38
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    div-double/2addr p1, v0

    .line 44
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " kbps"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    long-to-double p1, p1

    .line 63
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    div-double/2addr p1, v0

    .line 69
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " Mbps"

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method private handleWifiApDisabled()V
    .locals 2

    .line 1
    const-string v0, "SemWifiApEbpf"

    .line 2
    .line 3
    const-string v1, "EVENT_MHS_OFF"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaIp:Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMacTrimmed:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientPrevUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientCurrentUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->reset()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private updateStaTrafficStats(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v5, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMacTrimmed:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, v5, v6}, Lcom/android/internal/net/IOemNetd;->getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getWifiApDataUsageForOverAllMhs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    :goto_0
    const-string v8, "SemWifiApEbpf"

    .line 34
    .line 35
    if-eqz v4, :cond_b

    .line 36
    .line 37
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMacTrimmed:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4

    .line 43
    const-wide/16 v10, 0x0

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    if-eqz v13, :cond_a

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    check-cast v13, Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v1, v13}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getUntrimmedMacFromTrimmedMac(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientPrevUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-virtual {v14, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 69
    .line 70
    const/4 v15, 0x1

    .line 71
    if-nez v14, :cond_0

    .line 72
    .line 73
    const-string v14, "prevStats == null"

    .line 74
    .line 75
    invoke-static {v8, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 79
    .line 80
    invoke-direct {v14, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V

    .line 81
    .line 82
    .line 83
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientPrevUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move v9, v15

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    move-exception v0

    .line 91
    move-object v7, v8

    .line 92
    :goto_2
    move-wide v2, v10

    .line 93
    goto/16 :goto_a

    .line 94
    .line 95
    :cond_0
    const/4 v9, 0x0

    .line 96
    :goto_3
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientCurrentUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    invoke-virtual {v2, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 103
    .line 104
    if-nez v2, :cond_1

    .line 105
    .line 106
    const-string v2, "curStats == null"

    .line 107
    .line 108
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 112
    .line 113
    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientCurrentUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    invoke-virtual {v3, v13, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_1
    aget-object v3, v4, v12
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    .line 123
    move-object/from16 v18, v8

    .line 124
    .line 125
    :try_start_3
    iget-wide v7, v3, Landroid/net/MBBStatsParcel;->rtBytes:J

    .line 126
    .line 127
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 128
    .line 129
    move-wide/from16 v19, v7

    .line 130
    .line 131
    iget-wide v7, v3, Landroid/net/MBBStatsParcel;->totalBytes:J

    .line 132
    .line 133
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 134
    .line 135
    move-wide/from16 v21, v7

    .line 136
    .line 137
    sub-long v7, v21, v19

    .line 138
    .line 139
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 140
    .line 141
    iget-wide v7, v3, Landroid/net/MBBStatsParcel;->totalEgressBytes:J

    .line 142
    .line 143
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 144
    .line 145
    sub-long v7, v21, v7

    .line 146
    .line 147
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 148
    .line 149
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    .line 151
    invoke-virtual {v3, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 156
    .line 157
    if-nez v3, :cond_2

    .line 158
    .line 159
    const-string v3, "stats == null"
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    .line 161
    move-object/from16 v7, v18

    .line 162
    .line 163
    :try_start_4
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    new-instance v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 167
    .line 168
    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V

    .line 169
    .line 170
    .line 171
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    .line 173
    invoke-virtual {v8, v13, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :catch_2
    move-exception v0

    .line 178
    goto :goto_2

    .line 179
    :catch_3
    move-exception v0

    .line 180
    move-object/from16 v7, v18

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_2
    move-object/from16 v7, v18

    .line 184
    .line 185
    :goto_4
    if-eqz v9, :cond_5

    .line 186
    .line 187
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 188
    .line 189
    move-wide/from16 v18, v8

    .line 190
    .line 191
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 192
    .line 193
    add-long v8, v18, v8

    .line 194
    .line 195
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 196
    .line 197
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 198
    .line 199
    move-wide/from16 v18, v8

    .line 200
    .line 201
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 202
    .line 203
    add-long v8, v18, v8

    .line 204
    .line 205
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 206
    .line 207
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 208
    .line 209
    move-wide/from16 v18, v8

    .line 210
    .line 211
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 212
    .line 213
    add-long v8, v18, v8

    .line 214
    .line 215
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 216
    .line 217
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-ne v8, v15, :cond_3

    .line 222
    .line 223
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 224
    .line 225
    move-wide/from16 v18, v8

    .line 226
    .line 227
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 228
    .line 229
    add-long v8, v18, v8

    .line 230
    .line 231
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    const/4 v9, 0x2

    .line 239
    if-ne v8, v9, :cond_4

    .line 240
    .line 241
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 242
    .line 243
    move-wide/from16 v18, v8

    .line 244
    .line 245
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 246
    .line 247
    add-long v8, v18, v8

    .line 248
    .line 249
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 250
    .line 251
    :cond_4
    :goto_5
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 252
    .line 253
    move-wide/from16 v18, v8

    .line 254
    .line 255
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 256
    .line 257
    add-long v8, v18, v8

    .line 258
    .line 259
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 260
    .line 261
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 262
    .line 263
    move-wide/from16 v18, v8

    .line 264
    .line 265
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 266
    .line 267
    add-long v8, v18, v8

    .line 268
    .line 269
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 270
    .line 271
    const-wide/16 v8, 0x0

    .line 272
    .line 273
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitratePerSecond:J

    .line 274
    .line 275
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateIngressPerSecond:J

    .line 276
    .line 277
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateEgressPerSecond:J

    .line 278
    .line 279
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mNrtBitrateperSecond:J

    .line 280
    .line 281
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBitratePerSecond:J

    .line 282
    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 284
    .line 285
    .line 286
    move-result-wide v8

    .line 287
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mPreviousDataFetchTimestamp:J

    .line 288
    .line 289
    goto/16 :goto_7

    .line 290
    .line 291
    :cond_5
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 292
    .line 293
    move-wide/from16 v18, v8

    .line 294
    .line 295
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 296
    .line 297
    move-wide/from16 v20, v8

    .line 298
    .line 299
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 300
    .line 301
    sub-long v8, v20, v8

    .line 302
    .line 303
    add-long v8, v8, v18

    .line 304
    .line 305
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 306
    .line 307
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 308
    .line 309
    move-wide/from16 v18, v8

    .line 310
    .line 311
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 312
    .line 313
    move-wide/from16 v20, v8

    .line 314
    .line 315
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 316
    .line 317
    sub-long v8, v20, v8

    .line 318
    .line 319
    add-long v8, v8, v18

    .line 320
    .line 321
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 322
    .line 323
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 324
    .line 325
    move-wide/from16 v18, v8

    .line 326
    .line 327
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 328
    .line 329
    move-wide/from16 v20, v8

    .line 330
    .line 331
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 332
    .line 333
    sub-long v8, v20, v8

    .line 334
    .line 335
    add-long v8, v8, v18

    .line 336
    .line 337
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 338
    .line 339
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-ne v8, v15, :cond_6

    .line 344
    .line 345
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 346
    .line 347
    move-wide/from16 v18, v8

    .line 348
    .line 349
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 350
    .line 351
    move-wide/from16 v20, v8

    .line 352
    .line 353
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 354
    .line 355
    sub-long v8, v20, v8

    .line 356
    .line 357
    add-long v8, v8, v18

    .line 358
    .line 359
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    const/4 v9, 0x2

    .line 367
    if-ne v8, v9, :cond_7

    .line 368
    .line 369
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 370
    .line 371
    move-wide/from16 v18, v8

    .line 372
    .line 373
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 374
    .line 375
    move-wide/from16 v20, v8

    .line 376
    .line 377
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 378
    .line 379
    sub-long v8, v20, v8

    .line 380
    .line 381
    add-long v8, v8, v18

    .line 382
    .line 383
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 384
    .line 385
    :cond_7
    :goto_6
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 386
    .line 387
    move-wide/from16 v18, v8

    .line 388
    .line 389
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 390
    .line 391
    move-wide/from16 v20, v8

    .line 392
    .line 393
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 394
    .line 395
    sub-long v8, v20, v8

    .line 396
    .line 397
    add-long v8, v8, v18

    .line 398
    .line 399
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 400
    .line 401
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 402
    .line 403
    move-wide/from16 v18, v8

    .line 404
    .line 405
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 406
    .line 407
    move-wide/from16 v20, v8

    .line 408
    .line 409
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 410
    .line 411
    sub-long v8, v20, v8

    .line 412
    .line 413
    add-long v8, v8, v18

    .line 414
    .line 415
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 416
    .line 417
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mPreviousDataFetchTimestamp:J

    .line 418
    .line 419
    move-wide/from16 v18, v8

    .line 420
    .line 421
    const-wide/16 v8, 0x0

    .line 422
    .line 423
    cmp-long v13, v18, v8

    .line 424
    .line 425
    if-nez v13, :cond_8

    .line 426
    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 428
    .line 429
    .line 430
    move-result-wide v8

    .line 431
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mPreviousDataFetchTimestamp:J

    .line 432
    .line 433
    const-wide/16 v8, 0x0

    .line 434
    .line 435
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateIngressPerSecond:J

    .line 436
    .line 437
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateEgressPerSecond:J

    .line 438
    .line 439
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitratePerSecond:J

    .line 440
    .line 441
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mNrtBitrateperSecond:J

    .line 442
    .line 443
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBitratePerSecond:J

    .line 444
    .line 445
    :goto_7
    const-wide/16 v16, 0x0

    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 449
    .line 450
    .line 451
    move-result-wide v8

    .line 452
    iget-wide v10, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mPreviousDataFetchTimestamp:J

    .line 453
    .line 454
    sub-long v10, v8, v10

    .line 455
    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 457
    .line 458
    .line 459
    move-result-wide v8

    .line 460
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mPreviousDataFetchTimestamp:J

    .line 461
    .line 462
    const-wide/16 v16, 0x0

    .line 463
    .line 464
    cmp-long v8, v10, v16

    .line 465
    .line 466
    if-lez v8, :cond_9

    .line 467
    .line 468
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 469
    .line 470
    move-wide/from16 v18, v8

    .line 471
    .line 472
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 473
    .line 474
    sub-long v8, v18, v8

    .line 475
    .line 476
    const-wide/16 v18, 0x1f40

    .line 477
    .line 478
    mul-long v8, v8, v18

    .line 479
    .line 480
    div-long/2addr v8, v10

    .line 481
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitratePerSecond:J

    .line 482
    .line 483
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 484
    .line 485
    move-wide/from16 v20, v8

    .line 486
    .line 487
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 488
    .line 489
    sub-long v8, v20, v8

    .line 490
    .line 491
    mul-long v8, v8, v18

    .line 492
    .line 493
    div-long/2addr v8, v10

    .line 494
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateIngressPerSecond:J

    .line 495
    .line 496
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 497
    .line 498
    move-wide/from16 v20, v8

    .line 499
    .line 500
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 501
    .line 502
    sub-long v8, v20, v8

    .line 503
    .line 504
    mul-long v8, v8, v18

    .line 505
    .line 506
    div-long/2addr v8, v10

    .line 507
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateEgressPerSecond:J

    .line 508
    .line 509
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 510
    .line 511
    move-wide/from16 v20, v8

    .line 512
    .line 513
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 514
    .line 515
    sub-long v8, v20, v8

    .line 516
    .line 517
    mul-long v8, v8, v18

    .line 518
    .line 519
    div-long/2addr v8, v10

    .line 520
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mNrtBitrateperSecond:J

    .line 521
    .line 522
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 523
    .line 524
    move-wide/from16 v20, v8

    .line 525
    .line 526
    iget-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 527
    .line 528
    sub-long v8, v20, v8

    .line 529
    .line 530
    mul-long v8, v8, v18

    .line 531
    .line 532
    div-long/2addr v8, v10

    .line 533
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBitratePerSecond:J

    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_9
    const-string v3, "interval in MilliSec is 0"

    .line 537
    .line 538
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    :goto_8
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 542
    .line 543
    iput-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 544
    .line 545
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 546
    .line 547
    iput-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 548
    .line 549
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 550
    .line 551
    iput-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 552
    .line 553
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 554
    .line 555
    iput-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 556
    .line 557
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 558
    .line 559
    iput-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 560
    .line 561
    iget-wide v8, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 562
    .line 563
    iput-wide v8, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 564
    .line 565
    iget-wide v2, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 566
    .line 567
    iput-wide v2, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 568
    .line 569
    add-int/lit8 v12, v12, 0x1

    .line 570
    .line 571
    move-object v8, v7

    .line 572
    goto/16 :goto_1

    .line 573
    .line 574
    :cond_a
    move-wide v2, v10

    .line 575
    :goto_9
    move-object v7, v8

    .line 576
    goto :goto_b

    .line 577
    :catch_4
    move-exception v0

    .line 578
    move-object v7, v8

    .line 579
    const-wide/16 v16, 0x0

    .line 580
    .line 581
    move-wide/from16 v2, v16

    .line 582
    .line 583
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    const-string v8, "ArrayIndexOutOfBoundsException "

    .line 586
    .line 587
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_b
    const-wide/16 v16, 0x0

    .line 602
    .line 603
    move-wide/from16 v2, v16

    .line 604
    .line 605
    goto :goto_9

    .line 606
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    const-string v4, "updating the overall dataUsage , overall ="

    .line 609
    .line 610
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v4, " , global = "

    .line 617
    .line 618
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 622
    .line 623
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 638
    .line 639
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataBytes:J

    .line 640
    .line 641
    cmp-long v0, v5, v8

    .line 642
    .line 643
    if-lez v0, :cond_d

    .line 644
    .line 645
    sub-long v8, v5, v8

    .line 646
    .line 647
    iget-wide v10, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->overAllHotspotLastTimeInMilliSecs:J

    .line 648
    .line 649
    const-wide/16 v12, -0x1

    .line 650
    .line 651
    cmp-long v0, v10, v12

    .line 652
    .line 653
    if-nez v0, :cond_c

    .line 654
    .line 655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 656
    .line 657
    .line 658
    move-result-wide v10

    .line 659
    iput-wide v10, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->overAllHotspotLastTimeInMilliSecs:J

    .line 660
    .line 661
    goto :goto_c

    .line 662
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 663
    .line 664
    .line 665
    move-result-wide v10

    .line 666
    iget-wide v12, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->overAllHotspotLastTimeInMilliSecs:J

    .line 667
    .line 668
    sub-long v12, v10, v12

    .line 669
    .line 670
    long-to-double v14, v8

    .line 671
    long-to-double v12, v12

    .line 672
    div-double/2addr v14, v12

    .line 673
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    .line 674
    .line 675
    .line 676
    move-result-wide v12

    .line 677
    iput-wide v10, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->overAllHotspotLastTimeInMilliSecs:J

    .line 678
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v4, ""

    .line 688
    .line 689
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    const-string v4, "#tag_wifi_ap_lab_hotspot_speed_event#"

    .line 697
    .line 698
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    :goto_c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 702
    .line 703
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataBytes:J

    .line 704
    .line 705
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    const/4 v4, 0x2

    .line 710
    if-ne v0, v4, :cond_d

    .line 711
    .line 712
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 713
    .line 714
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCellularBytes:J

    .line 715
    .line 716
    add-long/2addr v4, v8

    .line 717
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCellularBytes:J

    .line 718
    .line 719
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 720
    .line 721
    add-long/2addr v4, v8

    .line 722
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 723
    .line 724
    :cond_d
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 725
    .line 726
    if-eqz v0, :cond_f

    .line 727
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    const-string v4, "intervalinMilliSec:"

    .line 731
    .line 732
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .line 744
    .line 745
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    if-eqz v1, :cond_f

    .line 760
    .line 761
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    check-cast v1, Ljava/util/Map$Entry;

    .line 766
    .line 767
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    check-cast v2, Ljava/lang/String;

    .line 772
    .line 773
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 778
    .line 779
    const-string v3, "mDataUsageStats : "

    .line 780
    .line 781
    const-string v4, " : "

    .line 782
    .line 783
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    if-eqz v1, :cond_e

    .line 788
    .line 789
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->toString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    goto :goto_e

    .line 794
    :cond_e
    const-string v1, "null"

    .line 795
    .line 796
    :goto_e
    invoke-static {v2, v1, v7}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    goto :goto_d

    .line 800
    :cond_f
    return-void
.end method


# virtual methods
.method public addIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->addIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object p0, v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "add Ip To Prio:"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", ipV4AddrList:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " ipV6AddrList1:"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " ipV6AddrList2:"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " ipV6AddrList3:"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " ipV6AddrList4:"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "SemWifiApEbpf"

    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return p0
.end method

.method public addToPrio(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->prioDevice(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object p0, v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    :goto_0
    const-string p1, "add To Prio:"

    .line 17
    .line 18
    const-string p2, "SemWifiApEbpf"

    .line 19
    .line 20
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public clearPriorityMap()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearPriorityMap()I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    :goto_0
    const-string v0, "clearPriorityMap:"

    .line 16
    .line 17
    const-string v1, "SemWifiApEbpf"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public delIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->delIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object p0, v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "del Ip To Prio:"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", ipV4AddrList:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " ipV6AddrList1:"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " ipV6AddrList2:"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " ipV6AddrList3:"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " ipV6AddrList4:"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "SemWifiApEbpf"

    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return p0
.end method

.method public disablePriority()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/android/internal/net/IOemNetd;->prioDisable(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p0, -0x1

    .line 17
    :goto_0
    const-string v0, "disable Priority:"

    .line 18
    .line 19
    const-string v1, "SemWifiApEbpf"

    .line 20
    .line 21
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public enablePriority(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Lcom/android/internal/net/IOemNetd;->prioEnable(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p0, -0x1

    .line 17
    :goto_0
    const-string p1, "enable Priority:"

    .line 18
    .line 19
    const-string v0, "SemWifiApEbpf"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getGlobalDataUsageStats()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 2
    .line 3
    return-object p0
.end method

.method handleDataUsageStatsUpdate(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DATA_USAGE_STATS_START_POLL,mhs= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",upstream= "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",client size "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "SemWifiApEbpf"

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_0

    .line 69
    .line 70
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->updateStaTrafficStats(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;

    .line 74
    .line 75
    return-object p0
.end method

.method handleDateAndSimChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 6
    .line 7
    return-void
.end method

.method handleWifiApStaConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaIp:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMacTrimmed:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->alive:Z

    .line 43
    .line 44
    iput-object p2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->ip:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 59
    .line 60
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->alive:Z

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 69
    .line 70
    iput-object p2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->ip:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 79
    .line 80
    const-wide/16 p1, 0x0

    .line 81
    .line 82
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mPreviousDataFetchTimestamp:J

    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method handleWifiApStaDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "SemWifiApEbpf"

    .line 2
    .line 3
    const-string v1, "STA disconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->alive:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 34
    .line 35
    iput-object p2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->ip:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 44
    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitratePerSecond:J

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 56
    .line 57
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateIngressPerSecond:J

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 66
    .line 67
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateEgressPerSecond:J

    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 76
    .line 77
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBitratePerSecond:J

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mClientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 86
    .line 87
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mNrtBitrateperSecond:J

    .line 88
    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaIp:Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMac:Ljava/util/HashSet;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mConnectedStaMacTrimmed:Ljava/util/List;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public pauseDevice(ZLjava/lang/String;J)I
    .locals 8

    .line 1
    const-string v0, "pauseDevice : enalbed = "

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 7
    .line 8
    move v4, p1

    .line 9
    move-object v5, p2

    .line 10
    move-wide v6, p3

    .line 11
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->pauseDevice(Ljava/lang/String;ZLjava/lang/String;J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string p0, "SemWifiApEbpf"

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, " mac="

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, ", totalDataToTarget = "

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public pauseInternet(Ljava/lang/String;J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseDevice(ZLjava/lang/String;J)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    :goto_0
    const-string p1, "pauseInternet:"

    .line 22
    .line 23
    const-string p2, "SemWifiApEbpf"

    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public pauseOverAllMhs(J)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->dummyMhsMac:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->dummyMhsMac:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseDevice(ZLjava/lang/String;J)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    :goto_0
    const-string p1, "pauseInternet for Over All MHS:"

    .line 22
    .line 23
    const-string p2, "SemWifiApEbpf"

    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public resumeInternet(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseDevice(ZLjava/lang/String;J)I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    const-string p0, "resumeInternet:"

    .line 32
    .line 33
    const-string p1, "SemWifiApEbpf"

    .line 34
    .line 35
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public resumeOverAllMhs()V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->dummyMhsMac:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseclients:Ljava/util/HashSet;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->dummyMhsMac:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->dummyMhsMac:Ljava/lang/String;

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseDevice(ZLjava/lang/String;J)I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const-string p0, "resumeInternet for over all mhs:"

    .line 34
    .line 35
    const-string v1, "SemWifiApEbpf"

    .line 36
    .line 37
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setHotspotState(Z)V
    .locals 5

    .line 1
    const-string v0, ", on Result="

    .line 2
    .line 3
    const-string v1, "Disable, MHS command:"

    .line 4
    .line 5
    const-string v2, "Enable, MHS command again : offResult="

    .line 6
    .line 7
    const-string v3, "Enable, MHS command:"

    .line 8
    .line 9
    const-string v4, "SemWifiApEbpf"

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApInterfaceName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sput-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "swlan0"

    .line 30
    .line 31
    sput-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {p1, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, ", Interface:"

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    if-gez p1, :cond_1

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p1, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v1, v3}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ",mSoftApInterface:"

    .line 129
    .line 130
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const/4 v0, 0x1

    .line 143
    invoke-static {v4, p1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mGlobalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->reset()V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {p1, v0}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_1
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleWifiApDisabled()V

    .line 187
    .line 188
    .line 189
    :goto_4
    return-void
.end method

.method public updatePriority(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->mSoftApInterface:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Lcom/android/internal/net/IOemNetd;->prioUpdate(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p0, -0x1

    .line 17
    :goto_0
    const-string p1, "update Priority:"

    .line 18
    .line 19
    const-string v0, "SemWifiApEbpf"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
