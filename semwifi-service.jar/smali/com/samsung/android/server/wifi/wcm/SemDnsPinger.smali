.class public final Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;,
        Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;,
        Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x91003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x91002

.field private static final ACTION_PING_DNS:I = 0x91001

.field private static final ACTION_PING_DNS_SPECIFIC:I = 0x91004

.field private static final BASE:I = 0x91000

.field public static final CACHED_RESULT:I = 0x1

.field private static final DBG:Z

.field public static final DNS_PING_RESULT:I = 0x91000

.field public static final DNS_PING_RESULT_SPECIFIC:I = 0x91005

.field private static final DNS_PORT:I = 0x35

.field private static final DNS_RESPONSE_BUFFER_SIZE:I = 0x200

.field private static MostRecentDnsResultMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_INTERNET:I = -0x3

.field public static final PRIVATE_IP_ADDRESS:I = 0x2

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final REQUESTED_URL_ALREADY_IP_ADDRESS:I = 0x3

.field private static final SMARTCM_DBG:Z = false

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field DnsResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field final lock:Ljava/lang/Object;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsQuery:[B

.field private mEventCounter:I

.field mLp:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field private final mTarget:Landroid/os/Handler;

.field mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/Random;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mNetwork:Landroid/net/Network;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mNetwork:Landroid/net/Network;

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    .line 65
    .line 66
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "connectivity"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mNetwork:Landroid/net/Network;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "default_dns_server"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x1040350

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    const-string v0, "getDefaultDns::malformed default dns address"

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private getKernelTime()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    long-to-double v0, v0

    .line 10
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    div-double/2addr v0, v2

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "("

    .line 19
    .line 20
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ") "

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    sub-int/2addr v3, v4

    .line 21
    :goto_0
    if-ltz v3, :cond_5

    .line 22
    .line 23
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 28
    .line 29
    iget-object v5, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    aget-byte v5, v5, v2

    .line 36
    .line 37
    and-int/lit16 v5, v5, 0xff

    .line 38
    .line 39
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 44
    .line 45
    iget-object v6, v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    aget-byte v6, v6, v4

    .line 52
    .line 53
    and-int/lit16 v6, v6, 0xff

    .line 54
    .line 55
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 60
    .line 61
    iget-object v7, v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x2

    .line 68
    aget-byte v7, v7, v8

    .line 69
    .line 70
    and-int/lit16 v7, v7, 0xff

    .line 71
    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 77
    .line 78
    iget-object v8, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const/4 v9, 0x3

    .line 85
    aget-byte v8, v8, v9

    .line 86
    .line 87
    and-int/lit16 v8, v8, 0xff

    .line 88
    .line 89
    const/16 v9, 0xa

    .line 90
    .line 91
    if-eq v5, v9, :cond_3

    .line 92
    .line 93
    const/16 v9, 0xc0

    .line 94
    .line 95
    if-ne v5, v9, :cond_0

    .line 96
    .line 97
    const/16 v9, 0xa8

    .line 98
    .line 99
    if-eq v6, v9, :cond_3

    .line 100
    .line 101
    :cond_0
    const/16 v9, 0xac

    .line 102
    .line 103
    if-ne v5, v9, :cond_1

    .line 104
    .line 105
    const/16 v9, 0x10

    .line 106
    .line 107
    if-lt v6, v9, :cond_1

    .line 108
    .line 109
    const/16 v9, 0x1f

    .line 110
    .line 111
    if-le v6, v9, :cond_3

    .line 112
    .line 113
    :cond_1
    if-ne v5, v4, :cond_2

    .line 114
    .line 115
    const/16 v9, 0x21

    .line 116
    .line 117
    if-ne v6, v9, :cond_2

    .line 118
    .line 119
    const/16 v9, 0xcb

    .line 120
    .line 121
    if-ne v7, v9, :cond_2

    .line 122
    .line 123
    const/16 v9, 0x27

    .line 124
    .line 125
    if-ne v8, v9, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " - Dns Response with Private Network IP Address !!! - "

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, "."

    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p1, "."

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p1, "."

    .line 168
    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catchall_0
    move-exception p0

    .line 184
    goto :goto_3

    .line 185
    :cond_4
    :goto_2
    monitor-exit v0

    .line 186
    return v4

    .line 187
    :cond_5
    monitor-exit v0

    .line 188
    return v2

    .line 189
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    throw p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private sendResponse(III)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Responding to packet "

    const-string v1, " externalId "

    const-string v2, " and val "

    .line 3
    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v0, 0x91005

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v0, 0x91000

    invoke-virtual {p0, v0, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendResponse(IIILjava/lang/String;)V
    .locals 8

    .line 36
    const-string v0, "Sending most recent DNS result, "

    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v1, :cond_0

    .line 37
    const-string v2, "Responding to packet "

    const-string v3, " externalId "

    const-string v4, " val "

    .line 38
    invoke-static {v2, v3, p1, p2, v4}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-ne p3, v3, :cond_1

    .line 41
    :try_start_0
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    if-eqz p4, :cond_1

    .line 43
    iget-object v3, p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expired "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->ttl:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " msec ago."

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 46
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 47
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x1

    and-int/2addr p2, p4

    if-ne p2, p4, :cond_3

    .line 48
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const p4, 0x91005

    invoke-virtual {p0, p4, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 49
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const p4, 0x91000

    invoke-virtual {p0, p4, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private sendResponse(IIILjava/lang/String;II)V
    .locals 3

    .line 13
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "Responding to packet "

    const-string v1, " externalId "

    const-string v2, " and val "

    .line 15
    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 17
    const-string p2, "SPECIFIC DNS PING: url - "

    const-string v0, ", responseVal : "

    .line 18
    invoke-static {p3, p2, p4, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 20
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object p4, p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 22
    iget-object p5, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v0, 0x91005

    invoke-virtual {p0, v0, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long p3, p6

    invoke-virtual {p5, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    aget-byte v5, p1, v4

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    aget-byte v6, p1, v5

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    aget-byte v6, p1, v6

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    aget-byte v6, p1, v6

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    aget-byte v6, p1, v6

    .line 23
    .line 24
    const/4 v6, 0x5

    .line 25
    aget-byte v7, p1, v6

    .line 26
    .line 27
    const/4 v7, 0x6

    .line 28
    aget-byte v7, p1, v7

    .line 29
    .line 30
    and-int/lit16 v7, v7, 0xff

    .line 31
    .line 32
    const/16 v8, 0x8

    .line 33
    .line 34
    shl-int/2addr v7, v8

    .line 35
    const/4 v9, 0x7

    .line 36
    aget-byte v9, p1, v9

    .line 37
    .line 38
    and-int/lit16 v9, v9, 0xff

    .line 39
    .line 40
    add-int/2addr v7, v9

    .line 41
    aget-byte v9, p1, v8

    .line 42
    .line 43
    const/16 v9, 0x9

    .line 44
    .line 45
    aget-byte v9, p1, v9

    .line 46
    .line 47
    const/16 v9, 0xa

    .line 48
    .line 49
    aget-byte v9, p1, v9

    .line 50
    .line 51
    const/16 v9, 0xb

    .line 52
    .line 53
    aget-byte v10, p1, v9

    .line 54
    .line 55
    new-instance v10, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_0
    add-int/lit8 v11, v9, 0x1

    .line 61
    .line 62
    aget-byte v12, p1, v11

    .line 63
    .line 64
    const/16 v13, 0x2e

    .line 65
    .line 66
    if-eqz v12, :cond_1

    .line 67
    .line 68
    move v9, v5

    .line 69
    :goto_1
    aget-byte v12, p1, v11

    .line 70
    .line 71
    if-gt v9, v12, :cond_0

    .line 72
    .line 73
    const-string v12, "%c"

    .line 74
    .line 75
    add-int v14, v11, v9

    .line 76
    .line 77
    aget-byte v14, p1, v14

    .line 78
    .line 79
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    aget-byte v9, p1, v11

    .line 101
    .line 102
    add-int/2addr v9, v11

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    sub-int/2addr v11, v5

    .line 109
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    add-int/2addr v9, v6

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    move v12, v4

    .line 131
    :goto_2
    if-ge v12, v7, :cond_4

    .line 132
    .line 133
    add-int/lit8 v14, v9, 0xc

    .line 134
    .line 135
    const/16 v15, 0x200

    .line 136
    .line 137
    if-ge v14, v15, :cond_4

    .line 138
    .line 139
    add-int/lit8 v14, v9, 0x1

    .line 140
    .line 141
    move/from16 p2, v8

    .line 142
    .line 143
    aget-byte v8, p1, v14

    .line 144
    .line 145
    const/16 v4, 0xc0

    .line 146
    .line 147
    and-int/2addr v8, v4

    .line 148
    if-ne v8, v4, :cond_2

    .line 149
    .line 150
    add-int/lit8 v9, v9, 0x2

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_2
    :goto_3
    add-int/2addr v14, v5

    .line 154
    aget-byte v4, p1, v14

    .line 155
    .line 156
    if-eqz v4, :cond_3

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_3
    move v9, v14

    .line 160
    :goto_4
    add-int/lit8 v4, v9, 0x1

    .line 161
    .line 162
    aget-byte v4, p1, v4

    .line 163
    .line 164
    and-int/lit16 v4, v4, 0xff

    .line 165
    .line 166
    shl-int/lit8 v4, v4, 0x8

    .line 167
    .line 168
    add-int/lit8 v8, v9, 0x2

    .line 169
    .line 170
    aget-byte v8, p1, v8

    .line 171
    .line 172
    and-int/lit16 v8, v8, 0xff

    .line 173
    .line 174
    add-int/2addr v4, v8

    .line 175
    add-int/lit8 v8, v9, 0x3

    .line 176
    .line 177
    aget-byte v8, p1, v8

    .line 178
    .line 179
    add-int/lit8 v8, v9, 0x4

    .line 180
    .line 181
    aget-byte v8, p1, v8

    .line 182
    .line 183
    add-int/lit8 v8, v9, 0x5

    .line 184
    .line 185
    aget-byte v8, p1, v8

    .line 186
    .line 187
    and-int/lit16 v8, v8, 0xff

    .line 188
    .line 189
    shl-int/lit8 v8, v8, 0x18

    .line 190
    .line 191
    add-int/lit8 v14, v9, 0x6

    .line 192
    .line 193
    aget-byte v14, p1, v14

    .line 194
    .line 195
    and-int/lit16 v14, v14, 0xff

    .line 196
    .line 197
    shl-int/lit8 v14, v14, 0x10

    .line 198
    .line 199
    add-int/2addr v8, v14

    .line 200
    add-int/lit8 v14, v9, 0x7

    .line 201
    .line 202
    aget-byte v14, p1, v14

    .line 203
    .line 204
    and-int/lit16 v14, v14, 0xff

    .line 205
    .line 206
    shl-int/lit8 v14, v14, 0x8

    .line 207
    .line 208
    add-int/2addr v8, v14

    .line 209
    add-int/lit8 v14, v9, 0x8

    .line 210
    .line 211
    aget-byte v14, p1, v14

    .line 212
    .line 213
    and-int/lit16 v14, v14, 0xff

    .line 214
    .line 215
    add-int/2addr v8, v14

    .line 216
    add-int/lit8 v14, v9, 0x9

    .line 217
    .line 218
    aget-byte v14, p1, v14

    .line 219
    .line 220
    and-int/lit16 v14, v14, 0xff

    .line 221
    .line 222
    shl-int/lit8 v14, v14, 0x8

    .line 223
    .line 224
    add-int/lit8 v16, v9, 0xa

    .line 225
    .line 226
    aget-byte v13, p1, v16

    .line 227
    .line 228
    and-int/lit16 v13, v13, 0xff

    .line 229
    .line 230
    add-int/2addr v14, v13

    .line 231
    add-int v13, v16, v14

    .line 232
    .line 233
    if-lt v13, v15, :cond_5

    .line 234
    .line 235
    :cond_4
    move-object v5, v6

    .line 236
    goto/16 :goto_7

    .line 237
    .line 238
    :cond_5
    if-ne v4, v5, :cond_6

    .line 239
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    add-int/lit8 v13, v9, 0xb

    .line 246
    .line 247
    aget-byte v13, p1, v13

    .line 248
    .line 249
    and-int/lit16 v13, v13, 0xff

    .line 250
    .line 251
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const/16 v13, 0x2e

    .line 259
    .line 260
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    add-int/lit8 v14, v9, 0xc

    .line 264
    .line 265
    aget-byte v14, p1, v14

    .line 266
    .line 267
    and-int/lit16 v14, v14, 0xff

    .line 268
    .line 269
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    add-int/lit8 v14, v9, 0xd

    .line 280
    .line 281
    aget-byte v14, p1, v14

    .line 282
    .line 283
    and-int/lit16 v14, v14, 0xff

    .line 284
    .line 285
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    add-int/lit8 v9, v9, 0xe

    .line 296
    .line 297
    aget-byte v14, p1, v9

    .line 298
    .line 299
    and-int/lit16 v14, v14, 0xff

    .line 300
    .line 301
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    new-instance v14, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 309
    .line 310
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    invoke-direct {v0, v15}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    mul-int/lit16 v8, v8, 0x3e8

    .line 319
    .line 320
    move-object/from16 v17, v6

    .line 321
    .line 322
    int-to-long v5, v8

    .line 323
    add-long/2addr v5, v2

    .line 324
    invoke-direct {v14, v0, v15, v5, v6}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;J)V

    .line 325
    .line 326
    .line 327
    move-object/from16 v5, v17

    .line 328
    .line 329
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    const-string v6, "["

    .line 333
    .line 334
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v4, "] "

    .line 345
    .line 346
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_6
    move-object v5, v6

    .line 351
    const/16 v13, 0x2e

    .line 352
    .line 353
    const/4 v4, 0x0

    .line 354
    :goto_5
    if-ge v4, v14, :cond_7

    .line 355
    .line 356
    const-string v6, "%02X"

    .line 357
    .line 358
    add-int/lit8 v16, v16, 0x1

    .line 359
    .line 360
    aget-byte v8, p1, v16

    .line 361
    .line 362
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    add-int/lit8 v4, v4, 0x1

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_7
    move/from16 v9, v16

    .line 377
    .line 378
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 379
    .line 380
    move/from16 v8, p2

    .line 381
    .line 382
    move-object v6, v5

    .line 383
    const/4 v4, 0x0

    .line 384
    const/4 v5, 0x1

    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :goto_7
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 388
    .line 389
    if-eqz v2, :cond_8

    .line 390
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getKernelTime()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v3, "DNS Result - "

    .line 404
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v3, ", "

    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 435
    .line 436
    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 438
    .line 439
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-nez v3, :cond_9

    .line 444
    .line 445
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 446
    .line 447
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    goto/16 :goto_b

    .line 453
    .line 454
    :cond_9
    const/4 v3, 0x0

    .line 455
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-ge v3, v4, :cond_a

    .line 460
    .line 461
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 462
    .line 463
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    check-cast v4, Ljava/util/List;

    .line 468
    .line 469
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    check-cast v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 474
    .line 475
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    add-int/lit8 v3, v3, 0x1

    .line 479
    .line 480
    goto :goto_8

    .line 481
    :cond_a
    :goto_9
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-nez v3, :cond_b

    .line 486
    .line 487
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    .line 488
    .line 489
    const/4 v4, 0x0

    .line 490
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    check-cast v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 495
    .line 496
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    if-eqz v4, :cond_b

    .line 514
    .line 515
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    check-cast v4, Ljava/lang/String;

    .line 520
    .line 521
    goto :goto_a

    .line 522
    :cond_b
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 523
    .line 524
    if-eqz v3, :cond_c

    .line 525
    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    const-string v4, "Hashmap DnsResultMap contains "

    .line 532
    .line 533
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 537
    .line 538
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v4, " entries, url: "

    .line 546
    .line 547
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v4, " - "

    .line 554
    .line 555
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 559
    .line 560
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    check-cast v1, Ljava/util/List;

    .line 565
    .line 566
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v1, " IPs"

    .line 574
    .line 575
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    :cond_c
    monitor-exit v2

    .line 586
    return-void

    .line 587
    :goto_b
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    throw v0
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xc

    .line 3
    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    new-array v4, v3, [B

    .line 11
    .line 12
    fill-array-data v4, :array_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const-string v6, "."

    .line 20
    .line 21
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [B

    .line 34
    .line 35
    move v7, v0

    .line 36
    move v6, v5

    .line 37
    :goto_0
    if-ltz v6, :cond_1

    .line 38
    .line 39
    aget-byte v8, p1, v6

    .line 40
    .line 41
    const/16 v9, 0x2e

    .line 42
    .line 43
    if-ne v8, v9, :cond_0

    .line 44
    .line 45
    aput-byte v7, p1, v6

    .line 46
    .line 47
    move v7, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    int-to-byte v7, v7

    .line 52
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v6, v5, 0x12

    .line 56
    .line 57
    new-array v6, v6, [B

    .line 58
    .line 59
    invoke-static {v2, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v5, 0x1

    .line 63
    .line 64
    invoke-static {p1, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v5, v5, 0xd

    .line 68
    .line 69
    invoke-static {v4, v0, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, [B

    .line 77
    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDnsQuery:[B

    .line 79
    .line 80
    return-void

    .line 81
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private updateDnsResultMap(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    if-eqz p0, :cond_5

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v3, 0x1

    .line 23
    sub-int/2addr p1, v3

    .line 24
    :goto_0
    if-ltz p1, :cond_5

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    aget-byte v4, v4, v5

    .line 40
    .line 41
    and-int/lit16 v4, v4, 0xff

    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 48
    .line 49
    iget-object v5, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    aget-byte v5, v5, v3

    .line 56
    .line 57
    and-int/lit16 v5, v5, 0xff

    .line 58
    .line 59
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 64
    .line 65
    iget-object v6, v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/4 v7, 0x2

    .line 72
    aget-byte v6, v6, v7

    .line 73
    .line 74
    and-int/lit16 v6, v6, 0xff

    .line 75
    .line 76
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 81
    .line 82
    iget-object v7, v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const/4 v8, 0x3

    .line 89
    aget-byte v7, v7, v8

    .line 90
    .line 91
    and-int/lit16 v7, v7, 0xff

    .line 92
    .line 93
    const/16 v8, 0xa

    .line 94
    .line 95
    if-eq v4, v8, :cond_3

    .line 96
    .line 97
    const/16 v8, 0xc0

    .line 98
    .line 99
    if-ne v4, v8, :cond_0

    .line 100
    .line 101
    const/16 v8, 0xa8

    .line 102
    .line 103
    if-eq v5, v8, :cond_3

    .line 104
    .line 105
    :cond_0
    const/16 v8, 0xac

    .line 106
    .line 107
    if-ne v4, v8, :cond_1

    .line 108
    .line 109
    const/16 v8, 0x10

    .line 110
    .line 111
    if-lt v5, v8, :cond_1

    .line 112
    .line 113
    const/16 v8, 0x1f

    .line 114
    .line 115
    if-le v5, v8, :cond_3

    .line 116
    .line 117
    :cond_1
    if-ne v4, v3, :cond_2

    .line 118
    .line 119
    const/16 v4, 0x21

    .line 120
    .line 121
    if-ne v5, v4, :cond_2

    .line 122
    .line 123
    const/16 v4, 0xcb

    .line 124
    .line 125
    if-ne v6, v4, :cond_2

    .line 126
    .line 127
    const/16 v4, 0x27

    .line 128
    .line 129
    if-ne v7, v4, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    .line 137
    .line 138
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->ttl:J

    .line 139
    .line 140
    cmp-long v4, v1, v4

    .line 141
    .line 142
    if-lez v4, :cond_4

    .line 143
    .line 144
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_5
    monitor-exit v0

    .line 158
    return-void

    .line 159
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p0
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    const v0, 0x91003

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public getDnsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "getCurLinkProperties:: LP is null!"

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    :goto_0
    const-string v0, "getDns::LinkProps has null dns - returning default"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 40
    .line 41
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "sendDnsPing::Error binding to socket "

    .line 6
    .line 7
    const/16 v0, -0x7f

    .line 8
    .line 9
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    :try_start_0
    iget v0, v2, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const v12, 0x91002

    .line 17
    .line 18
    .line 19
    const/4 v13, -0x2

    .line 20
    const/4 v14, 0x1

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_c

    .line 25
    .line 26
    :pswitch_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_d

    .line 52
    .line 53
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_c

    .line 59
    .line 60
    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 61
    .line 62
    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    .line 63
    .line 64
    if-eq v0, v2, :cond_1

    .line 65
    .line 66
    goto/16 :goto_c

    .line 67
    .line 68
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_b

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v3, v0

    .line 85
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    const/16 v0, 0x200

    .line 88
    .line 89
    :try_start_1
    new-array v4, v0, [B

    .line 90
    .line 91
    new-instance v5, Ljava/net/DatagramPacket;

    .line 92
    .line 93
    invoke-direct {v5, v4, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 99
    .line 100
    .line 101
    aget-byte v0, v4, v9

    .line 102
    .line 103
    iget-short v6, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 104
    .line 105
    shr-int/lit8 v7, v6, 0x8

    .line 106
    .line 107
    int-to-byte v7, v7

    .line 108
    if-ne v0, v7, :cond_3

    .line 109
    .line 110
    aget-byte v0, v4, v14

    .line 111
    .line 112
    int-to-byte v6, v6

    .line 113
    if-ne v0, v6, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move-exception v0

    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_3
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    const-string v0, "response ID doesn\'t match with query ID."

    .line 124
    .line 125
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_9

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    .line 145
    .line 146
    aget-byte v7, v4, v9

    .line 147
    .line 148
    iget-short v15, v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 149
    .line 150
    shr-int/lit8 v10, v15, 0x8

    .line 151
    .line 152
    int-to-byte v10, v10

    .line 153
    if-ne v7, v10, :cond_5

    .line 154
    .line 155
    aget-byte v7, v4, v14

    .line 156
    .line 157
    int-to-byte v10, v15

    .line 158
    if-ne v7, v10, :cond_5

    .line 159
    .line 160
    iget-object v7, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    iget-object v6, v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_5

    .line 171
    .line 172
    const-string v0, "response ID didn\'t match, but DNS response is usable."

    .line 173
    .line 174
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_2
    const/4 v0, 0x3

    .line 178
    aget-byte v0, v4, v0

    .line 179
    .line 180
    and-int/lit8 v0, v0, 0xf

    .line 181
    .line 182
    if-nez v0, :cond_7

    .line 183
    .line 184
    const/4 v0, 0x6

    .line 185
    aget-byte v0, v4, v0

    .line 186
    .line 187
    if-nez v0, :cond_6

    .line 188
    .line 189
    const/4 v0, 0x7

    .line 190
    aget-byte v0, v4, v0

    .line 191
    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    iget-wide v10, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->start:J

    .line 199
    .line 200
    sub-long/2addr v6, v10

    .line 201
    long-to-int v0, v6

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, [B

    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    iget-object v5, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 219
    .line 220
    invoke-direct {v1, v0, v4, v5}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsDB([BILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 224
    .line 225
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    .line 231
    const/4 v0, 0x2

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :cond_7
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 241
    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    const-string v0, "Reply code is not 0(No Error) or Answer Record Count is 0"

    .line 245
    .line 246
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    const/4 v0, -0x3

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 255
    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :cond_9
    const-string v0, "response ID didn\'t match, ignoring packet"

    .line 259
    .line 260
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :goto_3
    :try_start_2
    sget-boolean v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 266
    .line 267
    if-eqz v4, :cond_a

    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v5, "SemDnsPinger.pingDns got socket exception: "

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_11

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    move-object v10, v2

    .line 314
    check-cast v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    .line 315
    .line 316
    iget-object v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 317
    .line 318
    if-eqz v2, :cond_10

    .line 319
    .line 320
    iget-short v3, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 321
    .line 322
    and-int/2addr v3, v14

    .line 323
    if-ne v3, v14, :cond_f

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-lez v2, :cond_f

    .line 330
    .line 331
    iget-object v11, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 332
    .line 333
    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :try_start_3
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 335
    .line 336
    iget-object v3, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Ljava/util/List;

    .line 343
    .line 344
    if-eqz v2, :cond_d

    .line 345
    .line 346
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 347
    .line 348
    .line 349
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    if-lez v2, :cond_d

    .line 351
    .line 352
    :try_start_4
    iget v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 353
    .line 354
    iget-short v3, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 355
    .line 356
    iget-object v4, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    iget-object v5, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 363
    .line 364
    sget-object v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    .line 365
    .line 366
    iget-object v7, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    check-cast v7, Ljava/util/List;

    .line 373
    .line 374
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    const/4 v7, 0x0

    .line 383
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :catchall_1
    move-exception v0

    .line 388
    goto :goto_6

    .line 389
    :cond_d
    :try_start_5
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 390
    .line 391
    if-eqz v2, :cond_e

    .line 392
    .line 393
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    .line 394
    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v4, "There are no results about "

    .line 401
    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-object v4, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    :cond_e
    iget v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 418
    .line 419
    iget-short v3, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 420
    .line 421
    invoke-direct {v1, v2, v3, v13}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    .line 422
    .line 423
    .line 424
    :catch_2
    :goto_5
    monitor-exit v11

    .line 425
    goto :goto_7

    .line 426
    :goto_6
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 427
    :try_start_6
    throw v0

    .line 428
    :cond_f
    iget v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 429
    .line 430
    iget-short v3, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 431
    .line 432
    iget-object v4, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 433
    .line 434
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    .line 439
    .line 440
    .line 441
    :goto_7
    iget-object v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 444
    .line 445
    .line 446
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_4

    .line 450
    .line 451
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 452
    .line 453
    .line 454
    move-result-wide v2

    .line 455
    iget-wide v4, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->start:J

    .line 456
    .line 457
    iget v6, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->timeout:I

    .line 458
    .line 459
    int-to-long v6, v6

    .line 460
    add-long/2addr v4, v6

    .line 461
    cmp-long v2, v2, v4

    .line 462
    .line 463
    if-lez v2, :cond_c

    .line 464
    .line 465
    iget v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 466
    .line 467
    iget-short v3, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 468
    .line 469
    iget-object v4, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 470
    .line 471
    const/4 v5, -0x1

    .line 472
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(IIILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v2, v10, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 478
    .line 479
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_4

    .line 484
    .line 485
    :cond_11
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 486
    .line 487
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-nez v0, :cond_17

    .line 492
    .line 493
    iget v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    .line 494
    .line 495
    invoke-virtual {v1, v12, v0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-wide/16 v2, 0xc8

    .line 500
    .line 501
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 502
    .line 503
    .line 504
    goto/16 :goto_c

    .line 505
    .line 506
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    .line 509
    .line 510
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->seq:I

    .line 511
    .line 512
    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 513
    .line 514
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 515
    .line 516
    .line 517
    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 518
    if-eq v4, v5, :cond_12

    .line 519
    .line 520
    goto/16 :goto_c

    .line 521
    .line 522
    :cond_12
    const v4, 0x91001

    .line 523
    .line 524
    .line 525
    :try_start_7
    new-instance v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    .line 526
    .line 527
    invoke-direct {v5, v1, v9}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;I)V

    .line 528
    .line 529
    .line 530
    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 531
    .line 532
    iget-object v7, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    .line 533
    .line 534
    invoke-direct {v1, v7}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget v7, v2, Landroid/os/Message;->arg1:I

    .line 538
    .line 539
    iput v7, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 540
    .line 541
    iget v7, v2, Landroid/os/Message;->arg2:I

    .line 542
    .line 543
    iput v7, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->timeout:I

    .line 544
    .line 545
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    .line 546
    .line 547
    iput-object v0, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 548
    .line 549
    new-instance v0, Ljava/net/DatagramSocket;

    .line 550
    .line 551
    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 552
    .line 553
    .line 554
    iput-object v0, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 555
    .line 556
    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 557
    .line 558
    .line 559
    :try_start_8
    iget-object v0, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 560
    .line 561
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    .line 562
    .line 563
    .line 564
    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 565
    :try_start_9
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v10

    .line 577
    invoke-static {v0, v10}, Landroid/net/util/SocketUtils;->bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 578
    .line 579
    .line 580
    :try_start_a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 581
    .line 582
    .line 583
    goto :goto_a

    .line 584
    :catch_3
    move-exception v0

    .line 585
    goto :goto_9

    .line 586
    :catchall_2
    move-exception v0

    .line 587
    move-object v10, v0

    .line 588
    if-eqz v7, :cond_13

    .line 589
    .line 590
    :try_start_b
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 591
    .line 592
    .line 593
    goto :goto_8

    .line 594
    :catchall_3
    move-exception v0

    .line 595
    :try_start_c
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    :cond_13
    :goto_8
    throw v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 599
    :goto_9
    :try_start_d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    :goto_a
    iget v0, v2, Landroid/os/Message;->what:I

    .line 615
    .line 616
    if-ne v0, v4, :cond_14

    .line 617
    .line 618
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    shl-int/2addr v0, v14

    .line 625
    int-to-short v0, v0

    .line 626
    iput-short v0, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 627
    .line 628
    goto :goto_b

    .line 629
    :cond_14
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    shl-int/2addr v0, v14

    .line 636
    add-int/2addr v0, v14

    .line 637
    int-to-short v0, v0

    .line 638
    iput-short v0, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 639
    .line 640
    :goto_b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDnsQuery:[B

    .line 641
    .line 642
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    check-cast v0, [B

    .line 647
    .line 648
    iget-short v3, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 649
    .line 650
    shr-int/lit8 v7, v3, 0x8

    .line 651
    .line 652
    int-to-byte v7, v7

    .line 653
    aput-byte v7, v0, v9

    .line 654
    .line 655
    int-to-byte v3, v3

    .line 656
    aput-byte v3, v0, v14

    .line 657
    .line 658
    new-instance v3, Ljava/net/DatagramPacket;

    .line 659
    .line 660
    array-length v7, v0

    .line 661
    const/16 v10, 0x35

    .line 662
    .line 663
    invoke-direct {v3, v0, v7, v6, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 664
    .line 665
    .line 666
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 667
    .line 668
    if-eqz v0, :cond_15

    .line 669
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .line 674
    .line 675
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getKernelTime()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v7

    .line 679
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v7, "Sending a ping "

    .line 683
    .line 684
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    iget v7, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 688
    .line 689
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v7, " to "

    .line 693
    .line 694
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const-string v6, " with packetId "

    .line 705
    .line 706
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    iget-short v6, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 710
    .line 711
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v6, "("

    .line 715
    .line 716
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    iget-short v6, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 720
    .line 721
    const v7, 0xffff

    .line 722
    .line 723
    .line 724
    and-int/2addr v6, v7

    .line 725
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v6, ")."

    .line 733
    .line 734
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    :cond_15
    iget-object v0, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 745
    .line 746
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 747
    .line 748
    .line 749
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 750
    .line 751
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    iget v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    .line 755
    .line 756
    add-int/2addr v0, v14

    .line 757
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    .line 758
    .line 759
    invoke-virtual {v1, v12, v0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    const-wide/16 v5, 0xc8

    .line 764
    .line 765
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 766
    .line 767
    .line 768
    goto :goto_c

    .line 769
    :catch_4
    :try_start_e
    iget v0, v2, Landroid/os/Message;->what:I

    .line 770
    .line 771
    if-ne v0, v4, :cond_16

    .line 772
    .line 773
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 774
    .line 775
    const/16 v2, -0x270e

    .line 776
    .line 777
    invoke-direct {v1, v0, v2, v13}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    .line 778
    .line 779
    .line 780
    goto :goto_c

    .line 781
    :cond_16
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 782
    .line 783
    const/16 v2, -0x270f

    .line 784
    .line 785
    invoke-direct {v1, v0, v2, v13}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 786
    .line 787
    .line 788
    :cond_17
    :goto_c
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 789
    .line 790
    .line 791
    return-void

    .line 792
    :goto_d
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 793
    .line 794
    .line 795
    throw v0

    .line 796
    nop

    .line 797
    :pswitch_data_0
    .packed-switch 0x91001
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public macToString([B)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string p0, ""

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p1

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "0"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    aget-byte v2, p1, v0

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x2

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    array-length v1, p1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    if-eq v0, v1, :cond_1

    .line 49
    .line 50
    const-string v1, ":"

    .line 51
    .line 52
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object p0
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "www.google.com"

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v2, p0, p1, v3, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const p1, 0x91001

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    int-to-long p2, p3

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 32
    .line 33
    .line 34
    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 10

    .line 1
    const-string v1, "DNS Result Hashmap - HIT!!! USE PREVIOUS RESULT   ("

    .line 2
    .line 3
    const-string v2, "DNS Result Hashmap - HIT!!! BUT NO RESULTS   ("

    .line 4
    .line 5
    const-string v3, "DNS Result Hashmap - NO HIT!!! SENDING DNS QUERY!  "

    .line 6
    .line 7
    const-string v5, "URL is already an IP address. "

    .line 8
    .line 9
    sget-object v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    :try_start_0
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    sget-boolean v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 20
    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    .line 39
    .line 40
    const v8, 0x91005

    .line 41
    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-virtual {p0, v8, v6, v9, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-wide/16 v8, 0x32

    .line 49
    .line 50
    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return v6

    .line 54
    :catch_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v7

    .line 57
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v5, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const v8, 0x91004

    .line 64
    .line 65
    .line 66
    if-nez v5, :cond_2

    .line 67
    .line 68
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object p0, v0

    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_1
    :goto_0
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-direct {v1, p0, p1, v2, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v8, v6, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    int-to-long v0, p3

    .line 108
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .line 110
    .line 111
    :goto_1
    move v1, v6

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_2
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    const/4 v3, 0x0

    .line 139
    :goto_2
    if-nez v3, :cond_5

    .line 140
    .line 141
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 142
    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ")"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-direct {v1, p0, p1, v2, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v8, v6, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    int-to-long v0, p3

    .line 184
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    sget-boolean p1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 189
    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p2, ")"

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    sget-object p1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    .line 216
    .line 217
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    const/4 v3, 0x1

    .line 222
    move v1, v6

    .line 223
    const/16 v6, 0x32

    .line 224
    .line 225
    const/16 v2, -0x2b67

    .line 226
    .line 227
    move-object v0, p0

    .line 228
    move-object v4, p4

    .line 229
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(IIILjava/lang/String;II)V

    .line 230
    .line 231
    .line 232
    :goto_3
    monitor-exit v7

    .line 233
    return v1

    .line 234
    :goto_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    throw p0
.end method

.method public pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, p0, p1, v2, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x91004

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    int-to-long p2, p3

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "setCurrentLinkProperties: lp="

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 27
    .line 28
    return-void
.end method
