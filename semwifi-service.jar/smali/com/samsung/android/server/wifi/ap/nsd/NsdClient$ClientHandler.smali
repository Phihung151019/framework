.class Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

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
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$mprocessWifiConnected(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-lez p1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "mRetryWifiInfoFetch:"

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {p1, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sub-int/2addr v2, v0

    .line 57
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fputmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmClientHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-wide/16 v2, 0x7d0

    .line 67
    .line 68
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$mstopNsdServer(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "isServiceStarted:"

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static {v2, v4, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 128
    .line 129
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, ",try start after 300 msec"

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    const-wide/16 v2, 0x12c

    .line 149
    .line 150
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$mstartNsdServer(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V

    .line 157
    .line 158
    .line 159
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    .line 161
    .line 162
    const-wide/32 v2, 0x1d4c0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    .line 167
    .line 168
    return-void
.end method
