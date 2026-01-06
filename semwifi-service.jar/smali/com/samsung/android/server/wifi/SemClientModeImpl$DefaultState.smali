.class Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    const-string p0, "SemClientModeImpl"

    .line 2
    .line 3
    const-string v0, "entering DefaultState"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch v0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_2

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_3

    .line 19
    .line 20
    .line 21
    packed-switch v0, :pswitch_data_4

    .line 22
    .line 23
    .line 24
    packed-switch v0, :pswitch_data_5

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_6

    .line 28
    .line 29
    .line 30
    packed-switch v0, :pswitch_data_7

    .line 31
    .line 32
    .line 33
    packed-switch v0, :pswitch_data_8

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Error! unhandled message"

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->reset()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmLastSubId(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsSupportAdps(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 80
    .line 81
    const v2, 0x20137

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mresetSpeedTimesAndMarkWifiOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mresetFwLogFolder(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 118
    .line 119
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 120
    .line 121
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 122
    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v3, v4, v2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleEapMessage(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    .line 131
    instance-of v2, v0, Landroid/os/Bundle;

    .line 132
    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 136
    .line 137
    check-cast v0, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mprocessBigDataLogEvent(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    if-ne v2, v1, :cond_1

    .line 153
    .line 154
    move v4, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    move v4, v3

    .line 157
    :goto_0
    if-eq v0, v4, :cond_4

    .line 158
    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 160
    .line 161
    if-ne v2, v1, :cond_2

    .line 162
    .line 163
    move v3, v1

    .line 164
    :cond_2
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 178
    .line 179
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setImsCallingState(Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 188
    .line 189
    const/4 v2, -0x4

    .line 190
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_2
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 200
    .line 201
    const/4 v2, -0x5

    .line 202
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_3
    :sswitch_5
    const-string v0, "SemClientModeImpl"

    .line 207
    .line 208
    const-string v2, "Error! empty message encountered"

    .line 209
    .line 210
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_4
    :goto_1
    :sswitch_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 214
    .line 215
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 216
    .line 217
    .line 218
    return v1

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x20049 -> :sswitch_4
        0x20060 -> :sswitch_4
        0x20065 -> :sswitch_3
        0x200f3 -> :sswitch_2
        0x20137 -> :sswitch_4
        0x20208 -> :sswitch_6
        0x2020a -> :sswitch_4
        0x2400d -> :sswitch_1
        0x2402b -> :sswitch_4
        0x24051 -> :sswitch_0
        0x24074 -> :sswitch_4
        0x24076 -> :sswitch_4
    .end sparse-switch

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
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
    :pswitch_data_0
    .packed-switch 0x2006a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20087
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201f4
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2021c
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x24003
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x24006
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2400f
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2402d
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2406a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
