.class public final Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;,
        Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_M_SEARCHES:I = 0x1003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x1002

.field private static final ACTION_SEND_M_SEARCH:I = 0x1001

.field private static final BASE:I = 0x1000

.field private static final DBG:Z

.field private static final M_SEARCH_RESPONSE_BUFFER_SIZE:I = 0x3e8

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final SSDP_M_SEARCH_RESULT:I = 0x1000

.field private static final SSDP_PORT:I = 0x76c

.field public static final TIMEOUT:I = -0x1

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private SSDP_M_SEARCH_STR:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mActiveMSearches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEventCounter:I

.field private mNetwork:Landroid/net/Network;

.field private mSsdpMSearch:[B

.field private final mTarget:Landroid/os/Handler;


# direct methods
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
    sput-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mNetwork:Landroid/net/Network;

    .line 8
    .line 9
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance p3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 22
    .line 23
    const-string p3, "M-SEARCH * HTTP/1.1\r\nHost: 239.255.255.250:1900\r\nMan: \"ssdp:discover\"\r\nST: urn:schemas-upnp-org:device:InternetGatewayDevice:1\r\nMX: 1\r\n\r\n"

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->SSDP_M_SEARCH_STR:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mSsdpMSearch:[B

    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mTarget:Landroid/os/Handler;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mEventCounter:I

    .line 41
    .line 42
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mNetwork:Landroid/net/Network;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private getIpv4LocalAddress()Ljava/net/InetAddress;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/net/InetAddress;

    .line 26
    .line 27
    instance-of v1, v0, Ljava/net/Inet4Address;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private getXmlLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "HTTP/1.1 200 OK"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const-string v0, "\n"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v5, v1

    .line 20
    move v3, v2

    .line 21
    move v4, v3

    .line 22
    :goto_0
    if-ge v2, v0, :cond_3

    .line 23
    .line 24
    aget-object v6, p1, v2

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const-string v8, "st:"

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/4 v9, 0x1

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    const-string v6, "internetgatewaydevice"

    .line 40
    .line 41
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    move v3, v9

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v8, "location:"

    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_2

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    sub-int/2addr v4, v9

    .line 62
    const/16 v5, 0xa

    .line 63
    .line 64
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-boolean p1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p2, "getXmlLocation - isInternetGatewayDevice: "

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p2, ", isFromGateway: "

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, ", Location: "

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->log(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    if-eqz v3, :cond_5

    .line 117
    .line 118
    if-eqz v4, :cond_5

    .line 119
    .line 120
    return-object v5

    .line 121
    :cond_5
    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->TAG:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private sendResponse(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sendResponse(IIILjava/lang/String;)V

    return-void
.end method

.method private sendResponse(IIILjava/lang/String;)V
    .locals 2

    .line 2
    sget-boolean p2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    if-eqz p2, :cond_0

    .line 3
    const-string p2, "Responding to packet "

    const-string v0, " val "

    const-string v1, " and xmlLocation "

    .line 4
    invoke-static {p2, v0, p1, p3, v1}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->log(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mTarget:Landroid/os/Handler;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mNetwork:Landroid/net/Network;

    invoke-virtual {p3}, Landroid/net/Network;->getNetId()I

    move-result p3

    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public cancelMSearches()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x1003

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
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
    const-string v3, "Sending M-SEARCH "

    .line 6
    .line 7
    const-string v4, "Send M-SEARCH::Error binding to socket "

    .line 8
    .line 9
    const/16 v0, -0x7f

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    :try_start_0
    iget v0, v2, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const-wide/16 v7, 0xc8

    .line 19
    .line 20
    const/16 v9, 0x1002

    .line 21
    .line 22
    const/4 v10, -0x2

    .line 23
    const/4 v11, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :pswitch_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    iget v2, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mEventCounter:I

    .line 66
    .line 67
    if-eq v0, v2, :cond_1

    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v3, v0

    .line 88
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    const/16 v0, 0x3e8

    .line 91
    .line 92
    :try_start_1
    new-array v4, v0, [B

    .line 93
    .line 94
    new-instance v12, Ljava/net/DatagramPacket;

    .line 95
    .line 96
    invoke-direct {v12, v4, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v3, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 100
    .line 101
    invoke-virtual {v0, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getLength()I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    invoke-direct {v0, v4, v6, v12}, Ljava/lang/String;-><init>([BII)V

    .line 111
    .line 112
    .line 113
    sget-boolean v4, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    .line 114
    .line 115
    if-eqz v4, :cond_3

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v12, "Received Packet: "

    .line 123
    .line 124
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v1, v4}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->log(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_1
    move-exception v0

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    :goto_2
    iget-object v4, v3, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mTargetAddress:Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {v1, v0, v4}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->getXmlLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    if-eqz v11, :cond_2

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v4, "xmlLocation: "

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->log(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v12

    .line 172
    iget-wide v14, v3, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mStart:J

    .line 173
    .line 174
    sub-long/2addr v12, v14

    .line 175
    long-to-int v0, v12

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, v3, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mResult:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :goto_3
    :try_start_2
    sget-boolean v4, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    .line 184
    .line 185
    if-eqz v4, :cond_4

    .line 186
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v12, "SemSsdp got socket exception: "

    .line 193
    .line 194
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->loge(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object v0, v3, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mResult:Ljava/lang/Integer;

    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_8

    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;

    .line 232
    .line 233
    iget-object v3, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mResult:Ljava/lang/Integer;

    .line 234
    .line 235
    if-eqz v3, :cond_7

    .line 236
    .line 237
    iget v4, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mInternalId:I

    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-direct {v1, v4, v6, v3, v11}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sendResponse(IIILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    iget-wide v12, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mStart:J

    .line 260
    .line 261
    iget v10, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mTimeout:I

    .line 262
    .line 263
    int-to-long v14, v10

    .line 264
    add-long/2addr v12, v14

    .line 265
    cmp-long v3, v3, v12

    .line 266
    .line 267
    if-lez v3, :cond_6

    .line 268
    .line 269
    iget v3, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mInternalId:I

    .line 270
    .line 271
    const/4 v4, -0x1

    .line 272
    invoke-direct {v1, v3, v6, v4}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sendResponse(III)V

    .line 273
    .line 274
    .line 275
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 278
    .line 279
    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_c

    .line 291
    .line 292
    iget v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mEventCounter:I

    .line 293
    .line 294
    invoke-virtual {v1, v9, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    .line 300
    .line 301
    goto/16 :goto_6

    .line 302
    .line 303
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;

    .line 306
    .line 307
    iget v12, v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;->mSeq:I

    .line 308
    .line 309
    iget-object v13, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 310
    .line 311
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 312
    .line 313
    .line 314
    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    if-eq v12, v13, :cond_9

    .line 316
    .line 317
    goto/16 :goto_6

    .line 318
    .line 319
    :cond_9
    :try_start_3
    new-instance v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;

    .line 320
    .line 321
    invoke-direct {v12, v1, v6}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;-><init>(Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;I)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->getIpv4LocalAddress()Ljava/net/InetAddress;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    if-nez v13, :cond_a

    .line 329
    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :cond_a
    const-string v14, "239.255.255.250"

    .line 333
    .line 334
    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 335
    .line 336
    .line 337
    move-result-object v14

    .line 338
    iget v15, v2, Landroid/os/Message;->arg1:I

    .line 339
    .line 340
    iput v15, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mInternalId:I

    .line 341
    .line 342
    iget v15, v2, Landroid/os/Message;->arg2:I

    .line 343
    .line 344
    iput v15, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mTimeout:I

    .line 345
    .line 346
    new-instance v15, Ljava/net/DatagramSocket;

    .line 347
    .line 348
    invoke-direct {v15, v11}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 349
    .line 350
    .line 351
    iput-object v15, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 352
    .line 353
    const/4 v11, 0x1

    .line 354
    invoke-virtual {v15, v11}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 355
    .line 356
    .line 357
    new-instance v15, Ljava/net/InetSocketAddress;

    .line 358
    .line 359
    const/16 v10, 0x76c

    .line 360
    .line 361
    invoke-direct {v15, v13, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 362
    .line 363
    .line 364
    iget-object v13, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 365
    .line 366
    invoke-virtual {v13, v15}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 367
    .line 368
    .line 369
    iget-object v13, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 370
    .line 371
    invoke-virtual {v13, v11}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 372
    .line 373
    .line 374
    iget-object v0, v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;->mTargetAddress:Ljava/lang/String;

    .line 375
    .line 376
    iput-object v0, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mTargetAddress:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    .line 378
    :try_start_4
    iget-object v0, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 379
    .line 380
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    .line 389
    .line 390
    .line 391
    move-result-object v13

    .line 392
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v13

    .line 396
    invoke-static {v0, v13}, Landroid/net/util/SocketUtils;->bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 397
    .line 398
    .line 399
    goto :goto_5

    .line 400
    :catch_2
    move-exception v0

    .line 401
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->loge(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mSsdpMSearch:[B

    .line 417
    .line 418
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, [B

    .line 423
    .line 424
    new-instance v4, Ljava/net/DatagramPacket;

    .line 425
    .line 426
    array-length v13, v0

    .line 427
    invoke-direct {v4, v0, v13, v14, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 428
    .line 429
    .line 430
    sget-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    .line 431
    .line 432
    if-eqz v0, :cond_b

    .line 433
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iget v3, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mInternalId:I

    .line 440
    .line 441
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v3, " to "

    .line 445
    .line 446
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v14}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v3, "."

    .line 457
    .line 458
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->log(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    :cond_b
    iget-object v0, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 469
    .line 470
    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 474
    .line 475
    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 476
    .line 477
    .line 478
    iget-object v0, v12, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mSocket:Ljava/net/DatagramSocket;

    .line 479
    .line 480
    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 481
    .line 482
    .line 483
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mActiveMSearches:Ljava/util/List;

    .line 484
    .line 485
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    iget v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mEventCounter:I

    .line 489
    .line 490
    add-int/2addr v0, v11

    .line 491
    iput v0, v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mEventCounter:I

    .line 492
    .line 493
    invoke-virtual {v1, v9, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    .line 499
    .line 500
    goto :goto_6

    .line 501
    :catch_3
    :try_start_6
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 502
    .line 503
    const/16 v2, -0x270f

    .line 504
    .line 505
    const/4 v3, -0x2

    .line 506
    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sendResponse(III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 507
    .line 508
    .line 509
    :cond_c
    :goto_6
    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :goto_7
    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMSearchAsync(IILjava/lang/String;Landroid/net/Network;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-object p4, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mNetwork:Landroid/net/Network;

    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, p0, v2, p3}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;-><init>(Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x1001

    .line 21
    .line 22
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    int-to-long v2, p2

    .line 27
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 28
    .line 29
    .line 30
    sget-boolean v1, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->DBG:Z

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "sendMSearchAsync - "

    .line 37
    .line 38
    const-string v2, ", "

    .line 39
    .line 40
    invoke-static {v1, v2, p1, p2, v2}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    return v0
.end method
