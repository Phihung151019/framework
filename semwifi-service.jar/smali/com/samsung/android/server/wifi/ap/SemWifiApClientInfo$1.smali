.class Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string p1, "SemWifiApClientInfo"

    .line 14
    .line 15
    const-string v0, "SemWifiApCLientInfo got WIFI_AP_STA_DHCPACK_EVENT"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v0, "MAC"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 58
    .line 59
    const-string v1, "WIFI_AP_STA_DHCPACK_EVENT mhs client ci is null :"

    .line 60
    .line 61
    const-string v2, " cnt "

    .line 62
    .line 63
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 68
    .line 69
    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 118
    .line 119
    const-string v4, "sta_dhcpack"

    .line 120
    .line 121
    const/4 v5, -0x1

    .line 122
    invoke-static {v3, v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    const-string v3, "IP"

    .line 126
    .line 127
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    .line 133
    iput-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    .line 134
    .line 135
    const-string v3, "DEVICE"

    .line 136
    .line 137
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Ljava/lang/String;

    .line 142
    .line 143
    iput-object p2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    .line 144
    .line 145
    const/4 p2, 0x1

    .line 146
    iput-boolean p2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 147
    .line 148
    const-string p2, "sta_assoc"

    .line 149
    .line 150
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_1

    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 161
    .line 162
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "dnsmasq dhcpack mac:"

    .line 167
    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 172
    .line 173
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, " ip:"

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v0, " name:"

    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v0, " mConnectedTime:"

    .line 201
    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-wide v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 206
    .line 207
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 218
    .line 219
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mgetClientCntDhcpack(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v1, "mhs client cnt:"

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 231
    .line 232
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v1, " d:"

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p2, " h:"

    .line 250
    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-eqz p1, :cond_1

    .line 275
    .line 276
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 277
    .line 278
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V

    .line 279
    .line 280
    .line 281
    :cond_1
    return-void
.end method
