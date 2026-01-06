.class Lcom/samsung/android/server/wifi/SemL4sController$2;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemL4sController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemL4sController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v2, :cond_4

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/net/Network;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/net/Network;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "EVENT_WIFI_DISCONNECTED: interface = "

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemL4sController;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->stopL4s()Z

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 61
    .line 62
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fputmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    const-string p0, "Wi-Fi disconnected, but ignored for non primary interface: "

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Landroid/net/Network;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 81
    .line 82
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/net/Network;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v0, "EVENT_WIFI_CONNECTED: interface = "

    .line 87
    .line 88
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemL4sController;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemL4sController;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->startL4s()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fputmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    const-string p0, "Wi-Fi connected, but ignored for non primary interface: "

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 142
    .line 143
    if-ne p1, v1, :cond_5

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    move v1, v3

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemL4sController;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eq v1, p1, :cond_7

    .line 154
    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_6

    .line 164
    .line 165
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->startL4s()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fputmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fputmL4sEnabledDuring24H(Lcom/samsung/android/server/wifi/SemL4sController;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->stopL4s()Z

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 186
    .line 187
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fputmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V

    .line 188
    .line 189
    .line 190
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 191
    .line 192
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fputmPolicyEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V

    .line 193
    .line 194
    .line 195
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v0, "L4S policy: "

    .line 198
    .line 199
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 203
    .line 204
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p1, Ljava/lang/String;

    .line 222
    .line 223
    const-string v0, "EVENT_PRIMARY_IFACE_CHANGED: "

    .line 224
    .line 225
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    if-eqz p1, :cond_9

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_9

    .line 239
    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$2;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 241
    .line 242
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemL4sController;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    :goto_2
    return-void
.end method
