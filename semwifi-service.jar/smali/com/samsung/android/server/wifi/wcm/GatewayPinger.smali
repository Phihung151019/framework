.class public Lcom/samsung/android/server/wifi/wcm/GatewayPinger;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final CMD_CHECK_REACHABILITY:I = 0x2

.field private static final CMD_START_PING_TO_GATEWAY:I = 0x0

.field private static final CMD_STOP_PING:I = 0x1

.field private static final KEY_TCP_MONITOR_COMMAND:Ljava/lang/String; = "TCPMONITOR"

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final REACHABILITY_CHECK_ACTIVATE_DURATION_MS:I = 0x7530

.field public static final REACHABILITY_CHECK_INTERVAL_MS:I = 0xbb8

.field public static final REACHABILITY_CHECK_SLEEP_DURATION_MS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "GatewayPinger"


# instance fields
.field private mGateway:Ljava/lang/String;

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mPingStartTime:J

.field private mPingTimeoutMs:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/wcm/GatewayPinger;)Lcom/android/internal/net/IOemNetd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method private connectNativeNetdService()V
    .locals 3

    .line 1
    const-string v0, "GatewayPinger"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "netd"

    .line 5
    .line 6
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mNetdService:Landroid/net/INetd;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v2}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v2, "connectNativeNetdService: mOemNetd is null"

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const/4 v2, 0x0

    .line 43
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mNetdService:Landroid/net/INetd;

    .line 44
    .line 45
    :goto_0
    if-nez v1, :cond_2

    .line 46
    .line 47
    const-string p0, "connectNativeNetdService: connection failed"

    .line 48
    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method private isValidIPAddress(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private runNetdShellCommand(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mNetdService:Landroid/net/INetd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->connectNativeNetdService()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mNetdService:Landroid/net/INetd;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger$1;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger$1;-><init>(Lcom/samsung/android/server/wifi/wcm/GatewayPinger;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string p0, "GatewayPinger"

    .line 26
    .line 27
    const-string p1, "Netd Service is null"

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingStartTime:J

    .line 12
    .line 13
    sub-long/2addr v1, v3

    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "GatewayPinger"

    .line 17
    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingTimeoutMs:J

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    cmp-long p1, v4, v6

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    cmp-long p1, v1, v4

    .line 36
    .line 37
    if-gez p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p0, "Ping timer expired"

    .line 41
    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "/system/bin/ping -c 5 -i 0.03 -s 300 -I wlan0 "

    .line 49
    .line 50
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->runNetdShellCommand(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingTimeoutMs:J

    .line 66
    .line 67
    cmp-long p1, v3, v6

    .line 68
    .line 69
    const-wide/16 v3, 0xbb8

    .line 70
    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    const-wide/16 v8, 0x7530

    .line 74
    .line 75
    div-long/2addr v1, v8

    .line 76
    const-wide/16 v8, 0x3

    .line 77
    .line 78
    rem-long/2addr v1, v8

    .line 79
    cmp-long p1, v1, v6

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    const-wide/32 v3, 0xea60

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    :goto_1
    const-string p0, "mGateway is null or empty"

    .line 91
    .line 92
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public start(IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->updateGateway(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "GatewayPinger"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingTimeoutMs:J

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingStartTime:J

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p2, "Start ping to "

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, ", timeout "

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingTimeoutMs:J

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, "ms, start time "

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mPingStartTime:J

    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x2

    .line 65
    const-wide/16 p2, 0xbb8

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    :goto_0
    const-string p0, "mGateway is null or empty. Do not start ping"

    .line 72
    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "GatewayPinger"

    .line 2
    .line 3
    const-string v1, "Stop ping"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateGateway(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->isValidIPAddress(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->mGateway:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    return-void
.end method
