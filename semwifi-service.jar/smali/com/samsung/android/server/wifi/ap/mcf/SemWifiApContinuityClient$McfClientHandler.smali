.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "McfClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

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
    .locals 9

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "MHSMcf:Client"

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "CMD_START_ADVERTISE ,getDiscoveryManager() is null, isServiceBinded:"

    .line 22
    .line 23
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getNearbyMyDevices()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetMHSDiscoverData(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 73
    .line 74
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$fgetisDiscoveryGoingOn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    const-string p0, "DiscoveryGoing stopped,so dont send messages"

    .line 81
    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    const-string p1, "getNearbyMyDevices is zero"

    .line 93
    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    array-length v4, v3

    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    .line 119
    .line 120
    invoke-interface {v4}, Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractDevice;->getDeviceId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v4}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getModelName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v5, :cond_4

    .line 129
    .line 130
    const-string v6, "send to "

    .line 131
    .line 132
    const-string v7, ",modelId:"

    .line 133
    .line 134
    const-string v8, ",message:"

    .line 135
    .line 136
    invoke-static {v6, v5, v7, v4, v8}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    new-instance v6, Ljava/lang/String;

    .line 141
    .line 142
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 143
    .line 144
    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v5, v3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->sendMessage(Ljava/lang/String;[B)Z

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    const-string p1, "CMD_START_ADVERTISE, message is null"

    .line 162
    .line 163
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_7

    .line 171
    .line 172
    const-wide/16 v1, 0x1388

    .line 173
    .line 174
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_1
    return-void
.end method
