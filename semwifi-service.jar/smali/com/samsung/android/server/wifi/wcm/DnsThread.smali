.class Lcom/samsung/android/server/wifi/wcm/DnsThread;
.super Ljava/lang/Thread;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;,
        Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;,
        Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;,
        Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final DNS_DEFAULT_TIMEOUT_MS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.DnsThread"


# instance fields
.field private final DNS_TIMEOUT:I

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private mAlreadyFinished:Z

.field private final mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

.field private mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

.field private final mForce:Z

.field private mForcedCheckAddress:Ljava/net/InetAddress;

.field private mForcedCheckResult:I

.field private mForcedCheckRtt:I

.field private final mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field private mTimeout:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForcedCheckAddress(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForcedCheckResult(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckResult:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForcedCheckRtt(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckRtt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DNS_TIMEOUT:I

    .line 14
    .line 15
    const-wide/16 v1, 0xbb8

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckResult:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckRtt:I

    .line 29
    .line 30
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckAddress:Ljava/net/InetAddress;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mNetwork:Landroid/net/Network;

    .line 33
    .line 34
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 35
    .line 36
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;-><init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 42
    .line 43
    const-wide/16 v0, 0x3e8

    .line 44
    .line 45
    cmp-long p3, p4, v0

    .line 46
    .line 47
    if-ltz p3, :cond_0

    .line 48
    .line 49
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    .line 50
    .line 51
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForce:Z

    .line 52
    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mUrl:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v2, "latch result : "

    .line 4
    .line 5
    const-string v3, "wait mInetAddress result ["

    .line 6
    .line 7
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    .line 8
    .line 9
    const/16 v5, 0x600

    .line 10
    .line 11
    invoke-interface {v4, v5}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyAnalyticsDisconnectReason(S)V

    .line 12
    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForce:Z

    .line 15
    .line 16
    const/4 v6, -0x1

    .line 17
    const/4 v7, 0x3

    .line 18
    const/16 v8, 0xa

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const-string v10, "WifiConnectivityMonitor.DnsThread"

    .line 22
    .line 23
    const-string v11, "DNS_CHECK_TIMEOUT ["

    .line 24
    .line 25
    if-eqz v4, :cond_6

    .line 26
    .line 27
    const-string v0, "dnsPingerThread"

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 34
    .line 35
    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    move-object v1, p0

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;-><init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Looper;Landroid/os/Handler;J)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mUrl:Ljava/lang/String;

    .line 52
    .line 53
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->sendDnsPing(Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    .line 61
    .line 62
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, "-F] - latch timeout"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 102
    .line 103
    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 112
    .line 113
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckResult:I

    .line 114
    .line 115
    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckRtt:I

    .line 116
    .line 117
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckAddress:Ljava/net/InetAddress;

    .line 118
    .line 119
    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 127
    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->-$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V

    .line 131
    .line 132
    .line 133
    iput-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 134
    .line 135
    :cond_2
    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12}, Landroid/os/HandlerThread;->interrupt()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_2
    :try_start_1
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 143
    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, "-F] "

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 174
    .line 175
    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 183
    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->-$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V

    .line 187
    .line 188
    .line 189
    iput-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 190
    .line 191
    :cond_4
    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12}, Landroid/os/HandlerThread;->interrupt()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :catchall_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 199
    .line 200
    if-eqz v0, :cond_5

    .line 201
    .line 202
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->-$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V

    .line 203
    .line 204
    .line 205
    iput-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 206
    .line 207
    :cond_5
    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 208
    .line 209
    .line 210
    invoke-virtual {v12}, Landroid/os/HandlerThread;->interrupt()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_6
    new-instance v4, Lcom/samsung/android/server/wifi/SemStopwatch;

    .line 215
    .line 216
    invoke-direct {v4}, Lcom/samsung/android/server/wifi/SemStopwatch;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemStopwatch;->start()Lcom/samsung/android/server/wifi/SemStopwatch;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    const/4 v5, 0x1

    .line 224
    :try_start_2
    iget-object v12, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 225
    .line 226
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 227
    .line 228
    .line 229
    sget-boolean v12, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 230
    .line 231
    if-eqz v12, :cond_7

    .line 232
    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 241
    .line 242
    .line 243
    move-result-wide v13

    .line 244
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 258
    .line 259
    iget-wide v12, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    .line 260
    .line 261
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    .line 263
    invoke-virtual {v3, v12, v13, v14}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    sget-boolean v12, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 268
    .line 269
    if-eqz v12, :cond_8

    .line 270
    .line 271
    new-instance v12, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    :cond_8
    if-nez v3, :cond_a

    .line 287
    .line 288
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 289
    .line 290
    if-eqz v2, :cond_9

    .line 291
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 298
    .line 299
    .line 300
    move-result-wide v11

    .line 301
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    :cond_9
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 315
    .line 316
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 317
    .line 318
    invoke-virtual {v2, v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_a
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    .line 330
    .line 331
    if-eqz v2, :cond_b

    .line 332
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v3, "send DNS CHECK Result ["

    .line 336
    .line 337
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 341
    .line 342
    .line 343
    move-result-wide v5

    .line 344
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 358
    .line 359
    if-eqz v0, :cond_c

    .line 360
    .line 361
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->getType()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    long-to-int v3, v3

    .line 372
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->getResultIp()Ljava/net/InetAddress;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_c
    const-string v0, "There is no callback handler"

    .line 387
    .line 388
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v3, "InterruptedException ["

    .line 395
    .line 396
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 400
    .line 401
    .line 402
    move-result-wide v11

    .line 403
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 417
    .line 418
    if-eqz v0, :cond_d

    .line 419
    .line 420
    return-void

    .line 421
    :cond_d
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 422
    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    .line 424
    .line 425
    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J

    .line 433
    .line 434
    .line 435
    return-void
.end method

.method public setCurrentNetwork(Landroid/net/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-void
.end method

.method public setDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    .line 2
    .line 3
    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    return-void
.end method
