.class Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

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
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->iface:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->enabled:Z

    .line 14
    .line 15
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->limit:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "TC "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v4, " "

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v5, "enabled: "

    .line 31
    .line 32
    invoke-static {p1, v5, v0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v5, "disabled: "

    .line 38
    .line 39
    invoke-static {p1, v5, v0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_9

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    if-gtz p1, :cond_3

    .line 58
    .line 59
    :cond_2
    if-nez v1, :cond_9

    .line 60
    .line 61
    if-gez p1, :cond_9

    .line 62
    .line 63
    :cond_3
    const-string v2, "swlan"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_8

    .line 70
    .line 71
    const-string v2, "wlan"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const-string v3, "p2p"

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_8

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_7

    .line 92
    .line 93
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgettwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$mqueryTwtCapability(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fputtwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;I)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgetconnectedIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Ljava/util/HashSet;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_6

    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 123
    .line 124
    const-string p1, "TC command for non-existing interface"

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 131
    .line 132
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgettwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v3, 0x2

    .line 137
    if-ne v2, v3, :cond_7

    .line 138
    .line 139
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgetmTwtMonitor(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setTCRule(ZI)V

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/android/internal/net/IOemNetd;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-interface {v2, v1, v0, p1}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 163
    .line 164
    const-string p1, "Error from Netd processing"

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    return-void

    .line 170
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 171
    .line 172
    const-string p1, "Wrong interface name"

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 179
    .line 180
    const-string p1, "Wrong parameter"

    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
