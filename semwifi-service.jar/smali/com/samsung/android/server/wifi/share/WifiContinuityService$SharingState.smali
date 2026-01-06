.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemWifi.Continuity"

    .line 5
    .line 6
    const-string v1, "stop sharing"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$800(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->stopDiscovery()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x24

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetdefaultState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->hasConfig()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    const-string p1, "SemWifi.Continuity"

    .line 49
    .line 50
    const-string v0, "failed to share profile, config is null"

    .line 51
    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_0
    const-string p1, "SemWifi.Continuity"

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "start sharing "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetclock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastSharedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;-><init>(Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->startDiscovery(Ljava/util/List;Landroid/os/Handler;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    monitor-enter v0

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetshareableNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getNetworkId()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 165
    .line 166
    const/4 v0, 0x5

    .line 167
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$700(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 171
    .line 172
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getNetworkId()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    const-wide/16 v3, 0x7530

    .line 181
    .line 182
    invoke-virtual {p0, v0, p1, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIJ)V

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    throw p0

    .line 189
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->hasConfig()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_2

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->isRequiredForcedConnection()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_2

    .line 210
    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 212
    .line 213
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V

    .line 214
    .line 215
    .line 216
    const-string p1, "SemWifi.Continuity"

    .line 217
    .line 218
    const-string v0, "force connection was required, restart discovery"

    .line 219
    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->stopDiscovery()V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 233
    .line 234
    const/4 p1, 0x7

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 236
    .line 237
    .line 238
    return v2

    .line 239
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 242
    .line 243
    .line 244
    return v2

    .line 245
    :pswitch_4
    const-string p0, "SemWifi.Continuity"

    .line 246
    .line 247
    const-string p1, "already bound"

    .line 248
    .line 249
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    return v2

    .line 253
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 254
    .line 255
    if-ne p1, v2, :cond_3

    .line 256
    .line 257
    :cond_2
    return v2

    .line 258
    :cond_3
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 259
    .line 260
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$munbind(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 261
    .line 262
    .line 263
    return v2

    .line 264
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 265
    .line 266
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetdefaultState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 271
    .line 272
    .line 273
    return v2

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
