.class Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;-><init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 2
    .line 3
    const-string v0, "Entering StartedState"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$200(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 2
    .line 3
    const-string v0, "Exiting StartedState"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$400(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 4
    .line 5
    const-string v2, "com.samsung.android.server.wifi.stopcapture"

    .line 6
    .line 7
    const-string v3, "wlan0"

    .line 8
    .line 9
    const-string v4, "PacketCaptureManager"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v0, v5, :cond_4

    .line 13
    .line 14
    const/4 v6, 0x3

    .line 15
    if-eq v0, v6, :cond_0

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    if-eq v0, v6, :cond_4

    .line 19
    .line 20
    const/4 v6, 0x5

    .line 21
    if-eq v0, v6, :cond_4

    .line 22
    .line 23
    const/4 v6, 0x6

    .line 24
    if-eq v0, v6, :cond_4

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    return v5

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, v3}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->isCaptureRunning(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fputisCaptureRunning(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "ISCAPTURERUNNING FOR TCPDUMP CHECK "

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetisCaptureRunning(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetisCaptureRunning(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ne p1, v5, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetsource(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$smfindLatestTcpDumpFile(Ljava/io/File;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    .line 118
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 121
    .line 122
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fputcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetairLogFileNames(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 145
    .line 146
    const-wide/16 v0, 0x2710

    .line 147
    .line 148
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 149
    .line 150
    .line 151
    return v5

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 153
    .line 154
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$300(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;I)V

    .line 155
    .line 156
    .line 157
    const-string p1, "Sending CMD_STOP_CAPTURE from state machine ISCAPTURERUNNING"

    .line 158
    .line 159
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1, v3}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->stopCapture(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    const-string v0, "status of stop capture running after getting unexpected interface showing up in started state iscapturerunning "

    .line 175
    .line 176
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    new-instance p1, Landroid/content/Intent;

    .line 184
    .line 185
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 200
    .line 201
    invoke-virtual {p1, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 205
    .line 206
    invoke-static {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->-$$Nest$fgetmStoppedState(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)Lcom/android/internal/util/State;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 211
    .line 212
    .line 213
    return v5

    .line 214
    :cond_4
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v6, "Sending CMD_STOP_CAPTURE from state machine extra checks in statemachine "

    .line 217
    .line 218
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget p1, p1, Landroid/os/Message;->what:I

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 234
    .line 235
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 236
    .line 237
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-interface {p1, v3}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->stopCapture(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    const-string v0, "status of stop capture running after getting unexpected interface shwing up in started state iscapturerunning "

    .line 246
    .line 247
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    new-instance p1, Landroid/content/Intent;

    .line 255
    .line 256
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 262
    .line 263
    invoke-static {v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 271
    .line 272
    invoke-virtual {p1, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 273
    .line 274
    .line 275
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 276
    .line 277
    invoke-static {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->-$$Nest$fgetmStoppedState(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)Lcom/android/internal/util/State;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 282
    .line 283
    .line 284
    return v5

    .line 285
    :pswitch_data_0
    .packed-switch 0x24065
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
