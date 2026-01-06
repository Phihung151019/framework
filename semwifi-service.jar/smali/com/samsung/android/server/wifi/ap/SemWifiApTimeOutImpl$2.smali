.class Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->registerSoftApCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiApTimeOutImpl"

    .line 2
    .line 3
    const-string v1, "Received timeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p1, v1, :cond_4

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v2, "power"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/os/PowerManager;

    .line 26
    .line 27
    const-string v2, "MobileAPCloseService"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Cannot acquire wake lock ~~ "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mgetConnectedDevicesNum(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x0

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/16 v3, 0xd

    .line 98
    .line 99
    if-ne v1, v3, :cond_2

    .line 100
    .line 101
    const-string v1, "Received timeout event,disabling hotspot"

    .line 102
    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 116
    .line 117
    .line 118
    :cond_2
    const-string v1, "VZW"

    .line 119
    .line 120
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 129
    .line 130
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const v1, 0x1041115

    .line 135
    .line 136
    .line 137
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 142
    .line 143
    .line 144
    :cond_3
    if-eqz p1, :cond_4

    .line 145
    .line 146
    :try_start_1
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_1
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v1, "Cannot release wake lock ~~ "

    .line 154
    .line 155
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_1
    return-void
.end method
