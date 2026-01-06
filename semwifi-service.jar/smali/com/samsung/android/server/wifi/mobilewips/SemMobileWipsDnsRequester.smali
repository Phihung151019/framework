.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;
    }
.end annotation


# static fields
.field private static final EVENT_DNS_BULK_QUERY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MobileWips::dns"


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

.field private mDnsThread:Landroid/os/HandlerThread;

.field private mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public sendDnsQueries(Landroid/net/LinkProperties;[J[B[BLjava/lang/String;Ljava/util/List;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "[J[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v9

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    .line 18
    .line 19
    const-string v2, "MobileWips::dns"

    .line 20
    .line 21
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 38
    .line 39
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    .line 43
    .line 44
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    new-instance v11, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v12, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    move v0, v9

    .line 63
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x1

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    add-int/lit8 v14, v0, 0x1

    .line 77
    .line 78
    move/from16 v15, p7

    .line 79
    .line 80
    if-eq v15, v0, :cond_3

    .line 81
    .line 82
    move v8, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v8, v9

    .line 85
    :goto_1
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    move-object/from16 v2, p1

    .line 92
    .line 93
    move-object/from16 v3, p2

    .line 94
    .line 95
    move-object/from16 v4, p3

    .line 96
    .line 97
    move-object/from16 v5, p4

    .line 98
    .line 99
    move-object/from16 v6, p5

    .line 100
    .line 101
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;Landroid/net/LinkProperties;[J[B[BLjava/lang/String;[BZ)V

    .line 102
    .line 103
    .line 104
    move-object v2, v0

    .line 105
    move-object v0, v3

    .line 106
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move v0, v14

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    move-object/from16 v0, p2

    .line 112
    .line 113
    array-length v2, v0

    .line 114
    const-wide/16 v4, 0x0

    .line 115
    .line 116
    move v6, v9

    .line 117
    :goto_2
    if-ge v6, v2, :cond_5

    .line 118
    .line 119
    aget-wide v7, v0, v6

    .line 120
    .line 121
    add-long/2addr v4, v7

    .line 122
    add-int/lit8 v6, v6, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const-string v0, "dnsMac"

    .line 126
    .line 127
    move-object/from16 v6, p5

    .line 128
    .line 129
    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "dnsReq"

    .line 133
    .line 134
    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "timeoutOneQuery"

    .line 138
    .line 139
    invoke-virtual {v11, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    const/16 v0, 0x3e8

    .line 143
    .line 144
    iput v0, v10, Landroid/os/Message;->what:I

    .line 145
    .line 146
    invoke-virtual {v10, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    .line 150
    .line 151
    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    return v3

    .line 155
    :catch_0
    return v9
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    :cond_1
    return-void
.end method
