.class Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledPmControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_6

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x4

    .line 10
    if-eq v0, v3, :cond_4

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eq v0, v4, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 31
    .line 32
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mconvertTwtReasonCode(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "Teardown reason: "

    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " ("

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ")"

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 73
    .line 74
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 78
    .line 79
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 83
    .line 84
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 88
    .line 89
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 95
    .line 96
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 97
    .line 98
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;II)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/16 v2, 0xff

    .line 112
    .line 113
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 126
    .line 127
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p1, v0, v2, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;IIII)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 140
    .line 141
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mteardownScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-ltz v0, :cond_5

    .line 148
    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 150
    .line 151
    const-string v0, "Teardown requested"

    .line 152
    .line 153
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputtearDownRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 162
    .line 163
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 167
    .line 168
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 172
    .line 173
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 177
    .line 178
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 179
    .line 180
    .line 181
    const/16 p1, 0xfe

    .line 182
    .line 183
    invoke-static {p0, v4, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 192
    .line 193
    const-string v2, "Teardown request failed "

    .line 194
    .line 195
    invoke-static {v0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 203
    .line 204
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    .line 210
    if-eqz p1, :cond_7

    .line 211
    .line 212
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 213
    .line 214
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 215
    .line 216
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 217
    .line 218
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 219
    .line 220
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 221
    .line 222
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 223
    .line 224
    iget v4, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 225
    .line 226
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 227
    .line 228
    invoke-static {p1, v3, v4, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$msetupScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;II)I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-ltz p1, :cond_8

    .line 233
    .line 234
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 235
    .line 236
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 240
    .line 241
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 242
    .line 243
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 244
    .line 245
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 249
    .line 250
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 251
    .line 252
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 253
    .line 254
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 258
    .line 259
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 260
    .line 261
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 262
    .line 263
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 267
    .line 268
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fputsetupRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 272
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v2, "Setup requested "

    .line 276
    .line 277
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 281
    .line 282
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v2, " "

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 295
    .line 296
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$fgetmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 319
    .line 320
    const-string v1, "Setup request failed "

    .line 321
    .line 322
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 330
    .line 331
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->-$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V

    .line 332
    .line 333
    .line 334
    return-void
.end method
