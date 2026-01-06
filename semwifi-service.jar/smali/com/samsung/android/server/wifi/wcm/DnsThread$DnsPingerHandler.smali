.class Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/DnsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsPingerHandler"
.end annotation


# instance fields
.field mCallbackHandler:Landroid/os/Handler;

.field private mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

.field mId:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;


# direct methods
.method static bridge synthetic -$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Looper;Landroid/os/Handler;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 7
    .line 8
    const-string v0, "WifiConnectivityMonitor.DnsPingerHandler"

    .line 9
    .line 10
    invoke-direct {p2, p1, p0, v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;-><init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Handler;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mId:J

    .line 18
    .line 19
    return-void
.end method

.method private finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x91000

    .line 4
    .line 5
    .line 6
    const-string v2, "WifiConnectivityMonitor.DnsThread"

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const v1, 0x91005

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Ignore msg id : "

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p1, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 34
    .line 35
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->checkDnsResult(III)I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/16 v1, 0xa

    .line 43
    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "send DNS CHECK Result ["

    .line 56
    .line 57
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mId:J

    .line 61
    .line 62
    const-string v5, "]"

    .line 63
    .line 64
    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 72
    .line 73
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmForcedCheckResult(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 77
    .line 78
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmForcedCheckRtt(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 84
    .line 85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Ljava/net/InetAddress;

    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmForcedCheckAddress(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/net/InetAddress;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 93
    .line 94
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catch_0
    move-exception p0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "DnsPingerHandler - "

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method

.method public sendDnsPing(Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    long-to-int p2, p2

    .line 5
    invoke-virtual {v0, v1, p2, p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->requestDnsQuerying(IILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "WifiConnectivityMonitor.DnsThread"

    .line 18
    .line 19
    const-string p2, "DNS List is empty, need to check quality"

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 p3, -0x1

    .line 45
    const/4 v0, 0x0

    .line 46
    const/16 v1, 0xa

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-virtual {p2, v1, v2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
