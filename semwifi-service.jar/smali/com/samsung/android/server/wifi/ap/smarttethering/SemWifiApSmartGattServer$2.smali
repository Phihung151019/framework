.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p4, "onreceive WIFI_AP_STA_STATE_CHANGED_ACTION : count: "

    .line 2
    .line 3
    const-string p5, "SemWifiApSmartGattServer"

    .line 4
    .line 5
    invoke-static {p4, p3, p5}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 9
    .line 10
    invoke-static {p4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "event"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "Client Num"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "isMhsEnabledsmartly"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "state"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "mAuthDevices size"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/16 v0, 0xd

    .line 82
    .line 83
    if-ne p4, v0, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    const-string v1, "Client is connected so remove START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT"

    .line 102
    .line 103
    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "SemWifiApSmartGattServer:\tClient is connected so remove START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    .line 125
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/16 v2, 0x9

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    .line 135
    .line 136
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    const-string v1, "sta_leave"

    .line 142
    .line 143
    if-eqz p1, :cond_2

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_2

    .line 150
    .line 151
    if-nez p3, :cond_2

    .line 152
    .line 153
    if-ne p4, v0, :cond_2

    .line 154
    .line 155
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 156
    .line 157
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    if-eqz p3, :cond_2

    .line 162
    .line 163
    const-string p3, "Disabling Smart MHS"

    .line 164
    .line 165
    invoke-static {p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 169
    .line 170
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    const-string p4, "SemWifiApSmartGattServer:\tGattServer sta_leave  ClientNum == 0 start 30sec timeout to stopsoftap"

    .line 175
    .line 176
    invoke-virtual {p3, p4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 180
    .line 181
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetsmart_mhs_disabling_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/android/internal/util/WakeupMessage;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    if-eqz p3, :cond_2

    .line 186
    .line 187
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 188
    .line 189
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetsmart_mhs_disabling_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/android/internal/util/WakeupMessage;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {p3}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 194
    .line 195
    .line 196
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 197
    .line 198
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetsmart_mhs_disabling_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/android/internal/util/WakeupMessage;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    const-wide/16 p4, 0x7530

    .line 203
    .line 204
    invoke-static {p4, p5, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(JLcom/android/internal/util/WakeupMessage;)V

    .line 205
    .line 206
    .line 207
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_3

    .line 212
    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 214
    .line 215
    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mremoveAutoHotspotClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_3
    return-void
.end method
