.class Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnMainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

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
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "Conn.Personalizer"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "ConnMainHandler.handleMessage: undefined case: msg="

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v3, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 39
    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionUserEnabled(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 60
    .line 61
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionUserDisabled(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    const-string p1, "ConnMainHandler.handleMessage: EVENT_RESET_W24H"

    .line 70
    .line 71
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 75
    .line 76
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$msendBufferedBigdata(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_2
    const-string p1, "ConnMainHandler.handleMessage: EVENT_WIFI_ENABLED"

    .line 81
    .line 82
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmIsBootComplete(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->loadConfigsAndSetConnOption()V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->updateDefaultConnectionRssiThreshold()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_3
    const-string v0, "ConnMainHandler.handleMessage: EVENT_PRIMARY_IFACE_CHANGED"

    .line 117
    .line 118
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 122
    .line 123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fputmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v0, "Primary Wi-Fi changed: "

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setPrimaryInterfaceName(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 177
    .line 178
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConnectionBigdataManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_4

    .line 183
    .line 184
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 185
    .line 186
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConnectionBigdataManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 191
    .line 192
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->setPrimaryInterfaceName(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_4
    const-string p1, "ConnMainHandler.handleMessage: EVENT_BOOT_COMPLETED"

    .line 201
    .line 202
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 206
    .line 207
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p1, :cond_4

    .line 212
    .line 213
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fputmIsBootComplete(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 219
    .line 220
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->handleLazyBootCompleted()V

    .line 225
    .line 226
    .line 227
    :cond_4
    return-void

    .line 228
    :pswitch_5
    const-string p1, "ConnMainHandler.handleMessage: EVENT_CONNECTION_FAILED"

    .line 229
    .line 230
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 234
    .line 235
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$mrunDetector(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;I)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_6
    const-string p1, "ConnMainHandler.handleMessage: EVENT_DISCONNECTED"

    .line 240
    .line 241
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 245
    .line 246
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$mrunDetector(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;I)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
