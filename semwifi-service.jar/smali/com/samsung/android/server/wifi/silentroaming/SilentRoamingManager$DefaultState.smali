.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 10
    .line 11
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    const-string v1, "SilentRoamingManager"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_10

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq v0, v2, :cond_f

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    if-eq v0, v4, :cond_14

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    if-eq v0, v4, :cond_d

    .line 29
    .line 30
    const/4 v4, 0x6

    .line 31
    if-eq v0, v4, :cond_b

    .line 32
    .line 33
    const/4 v4, 0x7

    .line 34
    const/16 v5, 0xe

    .line 35
    .line 36
    if-eq v0, v4, :cond_7

    .line 37
    .line 38
    const/16 v3, 0x9

    .line 39
    .line 40
    if-eq v0, v3, :cond_6

    .line 41
    .line 42
    const/16 v3, 0xa

    .line 43
    .line 44
    if-eq v0, v3, :cond_5

    .line 45
    .line 46
    const/16 v3, 0xd

    .line 47
    .line 48
    if-eq v0, v3, :cond_14

    .line 49
    .line 50
    if-eq v0, v5, :cond_2

    .line 51
    .line 52
    const/16 v3, 0x10

    .line 53
    .line 54
    if-eq v0, v3, :cond_1

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "unhandled message : "

    .line 59
    .line 60
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 64
    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getWhatToString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateLastSelectedNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getAutojoinGlobal()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 101
    .line 102
    const-string p1, "mIsAutoJoin is false do nothing "

    .line 103
    .line 104
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_4

    .line 123
    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 125
    .line 126
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 131
    .line 132
    .line 133
    return v2

    .line 134
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 145
    .line 146
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 149
    .line 150
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateFullScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 155
    .line 156
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePartialScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    .line 161
    .line 162
    .line 163
    return v2

    .line 164
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misSilentRoamingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_8

    .line 171
    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 173
    .line 174
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_14

    .line 179
    .line 180
    const-string p0, "Silent Roaming OFF"

    .line 181
    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_9

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 210
    .line 211
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 215
    .line 216
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 220
    .line 221
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_14

    .line 226
    .line 227
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 228
    .line 229
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 230
    .line 231
    .line 232
    return v2

    .line 233
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->queryWifiManagerForAsyncParameters()V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 239
    .line 240
    const-wide/16 v0, 0x64

    .line 241
    .line 242
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 243
    .line 244
    .line 245
    return v2

    .line 246
    :cond_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 247
    .line 248
    if-ne p1, v2, :cond_c

    .line 249
    .line 250
    move v3, v2

    .line 251
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 252
    .line 253
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-nez p1, :cond_14

    .line 258
    .line 259
    if-eqz v3, :cond_14

    .line 260
    .line 261
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 262
    .line 263
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_14

    .line 268
    .line 269
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 270
    .line 271
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 276
    .line 277
    .line 278
    return v2

    .line 279
    :cond_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 280
    .line 281
    if-ne p1, v2, :cond_e

    .line 282
    .line 283
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 284
    .line 285
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-gez p1, :cond_14

    .line 290
    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 292
    .line 293
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->getMaxPnoSsidsPerScan()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 302
    .line 303
    .line 304
    return v2

    .line 305
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 306
    .line 307
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 311
    .line 312
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 313
    .line 314
    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 316
    .line 317
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 318
    .line 319
    .line 320
    return v2

    .line 321
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 322
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v1, "Received CMD_STOP_PNO_SCAN , ConnectingWatchdogCount= "

    .line 326
    .line 327
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 331
    .line 332
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 347
    .line 348
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 349
    .line 350
    .line 351
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 352
    .line 353
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 357
    .line 358
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 362
    .line 363
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-eqz p1, :cond_14

    .line 368
    .line 369
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 370
    .line 371
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 372
    .line 373
    .line 374
    return v2

    .line 375
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 376
    .line 377
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    .line 382
    .line 383
    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v0, "starting Silent Roaming Wi-Fi: screenOn= "

    .line 387
    .line 388
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 392
    .line 393
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v0, ", isWifiConnected= "

    .line 401
    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 406
    .line 407
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v0, ", wifiEnabled= "

    .line 415
    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 420
    .line 421
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 436
    .line 437
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-eqz p1, :cond_14

    .line 442
    .line 443
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 444
    .line 445
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    if-eqz p1, :cond_12

    .line 450
    .line 451
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 452
    .line 453
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V

    .line 462
    .line 463
    .line 464
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 465
    .line 466
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 471
    .line 472
    .line 473
    move-result-wide v0

    .line 474
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V

    .line 475
    .line 476
    .line 477
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 478
    .line 479
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    if-eqz p1, :cond_11

    .line 488
    .line 489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 490
    .line 491
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/ConnectivityManager;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    if-eqz p1, :cond_11

    .line 500
    .line 501
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/NetworkInfo$State;)V

    .line 508
    .line 509
    .line 510
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 511
    .line 512
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 513
    .line 514
    .line 515
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 516
    .line 517
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->getMaxPnoSsidsPerScan()I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 526
    .line 527
    .line 528
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 529
    .line 530
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-nez p1, :cond_14

    .line 535
    .line 536
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 537
    .line 538
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    if-eqz p1, :cond_13

    .line 543
    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 545
    .line 546
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    if-nez p1, :cond_13

    .line 551
    .line 552
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 553
    .line 554
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 555
    .line 556
    .line 557
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 558
    .line 559
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 564
    .line 565
    .line 566
    return v2

    .line 567
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 568
    .line 569
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoNetworkList()V

    .line 570
    .line 571
    .line 572
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 573
    .line 574
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 579
    .line 580
    .line 581
    :cond_14
    :goto_0
    return v2
.end method
