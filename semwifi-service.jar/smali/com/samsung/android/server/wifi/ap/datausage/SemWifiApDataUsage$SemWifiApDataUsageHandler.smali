.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemWifiApDataUsageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v5, "handleMessage: "

    .line 16
    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v5, v1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    invoke-static {v3, v5, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 23
    .line 24
    .line 25
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    .line 27
    .line 28
    iget v3, v1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    const-string v4, "ibinder"

    .line 31
    .line 32
    const-string v5, "client_name"

    .line 33
    .line 34
    const-string v6, "client_ip"

    .line 35
    .line 36
    const-string v7, "callback_identifier"

    .line 37
    .line 38
    const-string v8, "client_mac"

    .line 39
    .line 40
    packed-switch v3, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "handleMessage : Unknown Event = "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v1, v1, Landroid/os/Message;->what:I

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 61
    .line 62
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleClientDhcpFingerprintResultUpdated(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleGuestClientConnection(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_2
    if-eqz v2, :cond_0

    .line 81
    .line 82
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v1, "client_device_type"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const-string v1, "is_static_ip"

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    const-string v1, "is_dhcp_name_disabled"

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    const-string v1, "client_is_autohotspot_client"

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 119
    .line 120
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSetClientDeviceTypeAndDeviceName(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "HANDLE_EVENT_SET_CLIENT_DEVICE_TYPE_AND_NAME : bundle is null"

    .line 129
    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_3
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v3, "client_edited_name"

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 147
    .line 148
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSetClientDeviceName(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v1, "HANDLE_EVENT_SET_CLIENT_DEVICE_NAME : bundle is null"

    .line 157
    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 163
    .line 164
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Ljava/lang/Long;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$msaveOverAllDataLimitAndSyncCallback(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;J)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_5
    if-eqz v2, :cond_2

    .line 177
    .line 178
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageCallBackManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->unregisterClientDataUsageCallback(I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_6
    if-eqz v2, :cond_2

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    move-object v10, v3

    .line 205
    check-cast v10, Landroid/os/IBinder;

    .line 206
    .line 207
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    .line 209
    move-object v11, v1

    .line 210
    check-cast v11, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    .line 211
    .line 212
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object v13, v1

    .line 227
    check-cast v13, Ljava/lang/String;

    .line 228
    .line 229
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 230
    .line 231
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageCallBackManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApClientListManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_7
    if-eqz v2, :cond_2

    .line 246
    .line 247
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageCallBackManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->unregisterClientListDataUsageCallback(I)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_8
    if-eqz v2, :cond_2

    .line 268
    .line 269
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    move-object v9, v3

    .line 274
    check-cast v9, Landroid/os/IBinder;

    .line 275
    .line 276
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    .line 278
    move-object v10, v1

    .line 279
    check-cast v10, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;

    .line 280
    .line 281
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    const-string v1, "list_callback_top_param"

    .line 292
    .line 293
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v12

    .line 303
    const-string v1, "list_callback_max_param"

    .line 304
    .line 305
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Ljava/lang/Integer;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 316
    .line 317
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageCallBackManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 322
    .line 323
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApClientListManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 330
    .line 331
    .line 332
    move-result-wide v15

    .line 333
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 334
    .line 335
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApOverAllDataLimitManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 340
    .line 341
    .line 342
    move-result-wide v17

    .line 343
    invoke-virtual/range {v8 .. v18}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IIILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v1, Ljava/lang/Integer;

    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 356
    .line 357
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleUpdatePollingRateEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v1, Ljava/lang/String;

    .line 364
    .line 365
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 366
    .line 367
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleClientSettingRestoreEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :pswitch_b
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 372
    .line 373
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleFactoryResetEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :pswitch_c
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 378
    .line 379
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleWidgetFunctionalities(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 384
    .line 385
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleUpdateHistoryDbEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 389
    .line 390
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetisMhsActive(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_2

    .line 399
    .line 400
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 401
    .line 402
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApClientListManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getConnectedClientCount()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-lez v1, :cond_2

    .line 411
    .line 412
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 413
    .line 414
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const/16 v1, 0xf

    .line 419
    .line 420
    const-wide/16 v2, 0x7530

    .line 421
    .line 422
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :pswitch_e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 427
    .line 428
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleUpdateDataUsageEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 432
    .line 433
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetisMhsActive(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_2

    .line 442
    .line 443
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 444
    .line 445
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApClientListManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getConnectedClientCount()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-lez v1, :cond_2

    .line 454
    .line 455
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 456
    .line 457
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 462
    .line 463
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmDataUsagePollingRateInMillSec(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    int-to-long v2, v0

    .line 472
    const/16 v0, 0xe

    .line 473
    .line 474
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 475
    .line 476
    .line 477
    :cond_2
    return-void

    .line 478
    :pswitch_f
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 479
    .line 480
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleShutdownEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :pswitch_10
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 485
    .line 486
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleBootCompleteEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 487
    .line 488
    .line 489
    return-void

    .line 490
    :pswitch_11
    if-eqz v2, :cond_3

    .line 491
    .line 492
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    const-string v3, "client_pause_sharing"

    .line 497
    .line 498
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 503
    .line 504
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSetClientPauseSharing(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Z)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :cond_3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    const-string v1, "HANDLE_EVENT_SET_CLIENT_PAUSE_SHARING : bundle is null"

    .line 513
    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    return-void

    .line 518
    :pswitch_12
    if-eqz v2, :cond_4

    .line 519
    .line 520
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    const-string v3, "client_time_limit"

    .line 525
    .line 526
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 527
    .line 528
    .line 529
    move-result-wide v2

    .line 530
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 531
    .line 532
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSetClientTimeLimit(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;J)V

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    :cond_4
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    const-string v1, "HANDLE_EVENT_SET_CLIENT_TIME_LIMIT : bundle is null"

    .line 541
    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :pswitch_13
    if-eqz v2, :cond_5

    .line 547
    .line 548
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    const-string v3, "client_data_limit"

    .line 553
    .line 554
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 555
    .line 556
    .line 557
    move-result-wide v2

    .line 558
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 559
    .line 560
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSetClientDataLimit(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;J)V

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    const-string v1, "HANDLE_EVENT_SET_CLIENT_DATA_LIMIT : bundle is null"

    .line 569
    .line 570
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v1, Ljava/lang/Long;

    .line 577
    .line 578
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 579
    .line 580
    .line 581
    move-result-wide v1

    .line 582
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 583
    .line 584
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSetDailyMhsDataLimit(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;J)V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :pswitch_15
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 589
    .line 590
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleStreamChangedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V

    .line 599
    .line 600
    .line 601
    return-void

    .line 602
    :pswitch_16
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v1, Ljava/lang/String;

    .line 605
    .line 606
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 607
    .line 608
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleSimChangeEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    return-void

    .line 612
    :pswitch_17
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 613
    .line 614
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleDateChangedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 615
    .line 616
    .line 617
    return-void

    .line 618
    :pswitch_18
    if-eqz v2, :cond_6

    .line 619
    .line 620
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 629
    .line 630
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleClientDisconnectedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :cond_6
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    const-string v1, "disconnected bundle is null"

    .line 639
    .line 640
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .line 642
    .line 643
    return-void

    .line 644
    :pswitch_19
    if-eqz v2, :cond_7

    .line 645
    .line 646
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 659
    .line 660
    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleClientConnectedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :cond_7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    const-string v1, "connected bundle is null"

    .line 669
    .line 670
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    :pswitch_1a
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 675
    .line 676
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleWifiApDisableEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_1b
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 681
    .line 682
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mhandleWifiApEnabledEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    nop

    .line 687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
