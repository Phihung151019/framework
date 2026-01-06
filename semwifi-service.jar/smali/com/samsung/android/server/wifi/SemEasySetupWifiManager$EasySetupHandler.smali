.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasySetupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SemWifiEasySetupManager"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "EasySetupHandler msg.what : "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 31
    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Undefined case : "

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Ljava/util/List;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mcheckEasySetupNetwork(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 66
    .line 67
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "com.samsung.android.oneconnect"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmEasySetupSettings(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 101
    .line 102
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fputmIsEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v0, "keyguard"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/app/KeyguardManager;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_2

    .line 125
    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_1

    .line 133
    .line 134
    const-string p1, "UnLocked"

    .line 135
    .line 136
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 140
    .line 141
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$misEasySetupEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isHomeActivityVisible()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_2

    .line 162
    .line 163
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isSufficientPartialScan()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_2

    .line 170
    .line 171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 177
    .line 178
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mresetPartialScanTimerWhenScreenOnOff(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_2

    .line 202
    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 204
    .line 205
    const-wide/high16 v0, -0x8000000000000000L

    .line 206
    .line 207
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 208
    .line 209
    :cond_2
    return-void

    .line 210
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 211
    .line 212
    const/4 p1, 0x1

    .line 213
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
