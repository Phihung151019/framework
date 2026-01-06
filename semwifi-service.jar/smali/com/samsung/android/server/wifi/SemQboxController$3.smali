.class Lcom/samsung/android/server/wifi/SemQboxController$3;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemQboxController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemQboxController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemQboxController;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

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
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const-string v0, "disableMscs"

    .line 29
    .line 30
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/net/wifi/WifiManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disableMscs()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 46
    .line 47
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fputmIsMscsResent(Lcom/samsung/android/server/wifi/SemQboxController;Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmIsMscsResent(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/net/wifi/WifiManager;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmMscsParams(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/net/wifi/MscsParams;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->enableMscs(Landroid/net/wifi/MscsParams;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 76
    .line 77
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fputmIsMscsResent(Lcom/samsung/android/server/wifi/SemQboxController;Z)V

    .line 78
    .line 79
    .line 80
    :goto_0
    const-string p1, "enableMscs"

    .line 81
    .line 82
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-wide/32 v0, 0xea60

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 93
    .line 94
    if-ne p1, v3, :cond_2

    .line 95
    .line 96
    move v1, v3

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->getInterfaceVersion()V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmMscsPolicyEnabled(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eq v1, p1, :cond_5

    .line 109
    .line 110
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$misMscsSupported(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmIsMscsEnabled(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$mdisableMscs(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fputmIsMscsEnabled(Lcom/samsung/android/server/wifi/SemQboxController;Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    if-eqz v1, :cond_4

    .line 139
    .line 140
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fgetmIsMscsEnabled(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getOptimizerMode()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-lez p1, :cond_4

    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$menableMscs(Lcom/samsung/android/server/wifi/SemQboxController;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fputmIsMscsEnabled(Lcom/samsung/android/server/wifi/SemQboxController;Z)V

    .line 169
    .line 170
    .line 171
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 172
    .line 173
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$fputmMscsPolicyEnabled(Lcom/samsung/android/server/wifi/SemQboxController;Z)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 178
    .line 179
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$mremoveAllInternal(Lcom/samsung/android/server/wifi/SemQboxController;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 184
    .line 185
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 186
    .line 187
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$mremoveUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 192
    .line 193
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 194
    .line 195
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$maddUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "EVENT_PRIMARY_IFACE_CHANGED: "

    .line 204
    .line 205
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    if-eqz p1, :cond_5

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_5

    .line 219
    .line 220
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$3;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 221
    .line 222
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemQboxController;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    :goto_2
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
