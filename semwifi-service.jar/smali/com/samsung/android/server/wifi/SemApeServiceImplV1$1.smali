.class Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

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
    .locals 5

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
    const/4 v2, 0x0

    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    sparse-switch v4, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move v1, v3

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, p1

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string v4, "com.samsung.android.wifi.SET_APE_STATIC"

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v1, v0

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string v4, "com.samsung.android.wifi.ENABLE_APE"

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v1, v2

    .line 62
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_0
    const-string p1, "android.intent.extra.user_handle"

    .line 67
    .line 68
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 73
    .line 74
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/4 p2, 0x7

    .line 79
    invoke-virtual {p0, p2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 88
    .line 89
    const-string v0, "bandwidth"

    .line 90
    .line 91
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p2, "Set static bandwidth="

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 106
    .line 107
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_2
    const-string v1, "enable"

    .line 123
    .line 124
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ne v1, v0, :cond_3

    .line 129
    .line 130
    const-string p1, "uid"

    .line 131
    .line 132
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const-string v0, "package"

    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "type"

    .line 143
    .line 144
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-lez p1, :cond_4

    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 151
    .line 152
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0, v2, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 165
    .line 166
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    if-eqz p2, :cond_4

    .line 171
    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 173
    .line 174
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    .line 180
    .line 181
    :cond_4
    :goto_2
    return-void

    .line 182
    nop

    .line 183
    :sswitch_data_0
    .sparse-switch
        -0x1083e62d -> :sswitch_2
        0x30f8510d -> :sswitch_1
        0x392cb822 -> :sswitch_0
    .end sparse-switch

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
