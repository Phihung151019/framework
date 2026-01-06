.class Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Intent received action "

    .line 8
    .line 9
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v2, "uid"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, -0x1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    sparse-switch v5, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    :goto_0
    move v1, v4

    .line 31
    goto :goto_1

    .line 32
    :sswitch_0
    const-string v5, "com.samsung.android.wifi.APE_INFO"

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x3

    .line 42
    goto :goto_1

    .line 43
    :sswitch_1
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v1, p1

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string v5, "com.samsung.android.wifi.SET_APE_STATIC"

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v1, v0

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v5, "com.samsung.android.wifi.ENABLE_APE"

    .line 66
    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v1, v3

    .line 75
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_0
    const-string p1, "msg_type"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v0, "STREAMING_INFO"

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 95
    .line 96
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const/16 p1, 0xa

    .line 101
    .line 102
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_1
    const-string p1, "android.intent.extra.user_handle"

    .line 115
    .line 116
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 121
    .line 122
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const/4 p2, 0x7

    .line 127
    invoke-virtual {p0, p2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const-string v1, "nrt_alloc"

    .line 142
    .line 143
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 157
    .line 158
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->getEnabled()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    const-string v0, "logtxt"

    .line 167
    .line 168
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->setEnabled(Z)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_3
    const-string v1, "enable"

    .line 177
    .line 178
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-ne v1, v0, :cond_4

    .line 183
    .line 184
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const-string v0, "package"

    .line 189
    .line 190
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "type"

    .line 195
    .line 196
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-lez p1, :cond_5

    .line 201
    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 203
    .line 204
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0, v3, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 217
    .line 218
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    if-eqz p2, :cond_5

    .line 223
    .line 224
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 225
    .line 226
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    .line 232
    .line 233
    :cond_5
    :goto_2
    return-void

    .line 234
    nop

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x1083e62d -> :sswitch_3
        0x30f8510d -> :sswitch_2
        0x392cb822 -> :sswitch_1
        0x6f0d0030 -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
