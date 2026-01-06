.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TcpMonitorHandler"
.end annotation


# static fields
.field private static final MSG_AP_RESET_DETECTION_COUNT:I = 0x16

.field private static final MSG_AP_RESET_DETECTION_HISTORY:I = 0x15

.field private static final MSG_AP_UPDATE_INFO:I = 0x14

.field private static final MSG_PACKAGE_ADD_INFO:I = 0x2

.field private static final MSG_PACKAGE_CREATE_INFO:I = 0x1

.field private static final MSG_PACKAGE_FOREGROUND_CHANGED:I = 0x9

.field private static final MSG_PACKAGE_REMOVE_INFO:I = 0x4

.field private static final MSG_PACKAGE_SET_CATEGORY:I = 0x8

.field private static final MSG_PACKAGE_UPDATE_CATEGORY:I = 0x6

.field private static final MSG_PACKAGE_UPDATE_CATEGORY_FAIL_HISTORY:I = 0x7

.field private static final MSG_PACKAGE_UPDATE_DETECTED_COUNT:I = 0xb

.field private static final MSG_PACKAGE_UPDATE_INFO:I = 0x3

.field private static final MSG_PACKAGE_UPDATE_MISSING_INFO_LIST:I = 0x5

.field private static final MSG_PACKAGE_UPDATE_VOIP_INFO:I = 0xa

.field private static final MSG_SAVE_FILES:I = 0x28

.field private static final MSG_SAVE_PACKAGE_INFO:I = 0x29

.field private static final MSG_SAVE_SWITCH_UID__INFO:I = 0x2a

.field private static final MSG_SWITCH_ENABLED_UID_LIST_UPDATED:I = 0x1f

.field private static final MSG_SWITCH_ENABLED_UID_UPDATE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerMonitor.TcpMonitorHandler"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

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
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1e

    .line 5
    .line 6
    const/16 v3, 0x2a

    .line 7
    .line 8
    const/16 v4, 0x15

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    if-eq v0, v2, :cond_27

    .line 12
    .line 13
    const/16 v2, 0x1f

    .line 14
    .line 15
    if-eq v0, v2, :cond_1e

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    const/4 v3, 0x2

    .line 19
    const/16 v4, 0x29

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    packed-switch v0, :pswitch_data_1

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_2

    .line 28
    .line 29
    .line 30
    goto/16 :goto_a

    .line 31
    .line 32
    :pswitch_0
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 33
    .line 34
    const-string v0, "MSG_SAVE_SWITCH_UID__INFO"

    .line 35
    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveSwitchEnabledUidListToFile(Ljava/util/ArrayList;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 56
    .line 57
    const-string v0, "MSG_SAVE_PACKAGE_INFO"

    .line 58
    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveWifiPackageInfoToFile(Ljava/util/HashMap;)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 79
    .line 80
    const-string v0, "MSG_SAVE_FILES"

    .line 81
    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 92
    .line 93
    const-string v0, "MSG_SAVE_FILES - saveWifiPackageInfoList"

    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveWifiPackageInfoToFile(Ljava/util/HashMap;)Z

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 120
    .line 121
    const-string v0, "MSG_SAVE_FILES - saveWifiApInfoList"

    .line 122
    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveWifiApInfoToFile(Ljava/util/HashMap;)Z

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 148
    .line 149
    const-string v0, "MSG_SAVE_FILES - saveWifiSwitchableAppList"

    .line 150
    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 161
    .line 162
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveSwitchEnabledUidListToFile(Ljava/util/ArrayList;)Z

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    .line 176
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 177
    .line 178
    const-string v1, "MSG_AP_RESET_DETECTION_COUNT"

    .line 179
    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    .line 185
    if-eqz p1, :cond_2d

    .line 186
    .line 187
    check-cast p1, Ljava/lang/String;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_2d

    .line 196
    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 198
    .line 199
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_2d

    .line 216
    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_4

    .line 232
    .line 233
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 234
    .line 235
    const-string v1, "MSG_AP_RESET_DETECTION_HISTORY"

    .line 236
    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 241
    .line 242
    if-eqz p1, :cond_2d

    .line 243
    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-eqz v0, :cond_5

    .line 251
    .line 252
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 253
    .line 254
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_5

    .line 267
    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 269
    .line 270
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 283
    .line 284
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setDetectedCount(I)V

    .line 285
    .line 286
    .line 287
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 288
    .line 289
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_2d

    .line 294
    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 296
    .line 297
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_2d

    .line 306
    .line 307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 308
    .line 309
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 314
    .line 315
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_2d

    .line 332
    .line 333
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_6

    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    goto :goto_1

    .line 357
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_7

    .line 362
    .line 363
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 364
    .line 365
    const-string v1, "MSG_AP_UPDATE_INFO"

    .line 366
    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 371
    .line 372
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmApInfoListLock(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 378
    .line 379
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_9

    .line 384
    .line 385
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 388
    .line 389
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 390
    .line 391
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-eqz v1, :cond_8

    .line 404
    .line 405
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 406
    .line 407
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    goto :goto_2

    .line 419
    :catchall_0
    move-exception p0

    .line 420
    goto :goto_3

    .line 421
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 422
    .line 423
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    :cond_9
    monitor-exit v0

    .line 435
    return-void

    .line 436
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    throw p0

    .line 438
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 439
    .line 440
    if-eqz p1, :cond_2d

    .line 441
    .line 442
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_a

    .line 447
    .line 448
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 449
    .line 450
    const-string v2, "MSG_PACKAGE_UPDATE_DETECTED_COUNT - "

    .line 451
    .line 452
    invoke-static {p1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 460
    .line 461
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    if-eqz v0, :cond_2d

    .line 466
    .line 467
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 468
    .line 469
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eqz v0, :cond_2d

    .line 482
    .line 483
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 484
    .line 485
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 498
    .line 499
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 500
    .line 501
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 514
    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    .line 516
    .line 517
    .line 518
    move-result p0

    .line 519
    add-int/2addr p0, v1

    .line 520
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setDetectedCount(I)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 525
    .line 526
    if-eqz p1, :cond_2d

    .line 527
    .line 528
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 529
    .line 530
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-eqz v0, :cond_2d

    .line 535
    .line 536
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 537
    .line 538
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_2d

    .line 551
    .line 552
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 553
    .line 554
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 567
    .line 568
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-nez v0, :cond_2d

    .line 573
    .line 574
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_b

    .line 579
    .line 580
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 581
    .line 582
    const-string v2, "MSG_PACKAGE_UPDATE_VOIP_INFO - "

    .line 583
    .line 584
    invoke-static {p1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 592
    .line 593
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 594
    .line 595
    .line 596
    move-result-object p0

    .line 597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object p0

    .line 605
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 606
    .line 607
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setIsVoip(Z)V

    .line 608
    .line 609
    .line 610
    return-void

    .line 611
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 612
    .line 613
    if-eqz v0, :cond_2d

    .line 614
    .line 615
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    .line 617
    if-eqz p1, :cond_2d

    .line 618
    .line 619
    check-cast p1, Ljava/lang/String;

    .line 620
    .line 621
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-eqz v1, :cond_c

    .line 626
    .line 627
    const-string v1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 628
    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    const-string v3, "MSG_PACKAGE_FOREGROUND_CHANGED - "

    .line 632
    .line 633
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    const-string v3, ", "

    .line 640
    .line 641
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v3, ","

    .line 648
    .line 649
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 653
    .line 654
    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 669
    .line 670
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetOrCreatePackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 679
    .line 680
    if-eqz v0, :cond_2d

    .line 681
    .line 682
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    .line 684
    if-eqz p1, :cond_2d

    .line 685
    .line 686
    check-cast p1, Ljava/lang/String;

    .line 687
    .line 688
    const-string v1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 689
    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v3, "MSG_PACKAGE_SET_CATEGORY - "

    .line 693
    .line 694
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v3, ", "

    .line 701
    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .line 714
    .line 715
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 716
    .line 717
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    if-eqz v1, :cond_2d

    .line 722
    .line 723
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 724
    .line 725
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_2d

    .line 738
    .line 739
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 740
    .line 741
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 754
    .line 755
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 759
    .line 760
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    if-eqz v1, :cond_2d

    .line 765
    .line 766
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 767
    .line 768
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    if-ne v1, v0, :cond_2d

    .line 777
    .line 778
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 779
    .line 780
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 781
    .line 782
    .line 783
    move-result-object p0

    .line 784
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    return-void

    .line 788
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 789
    .line 790
    if-eqz p1, :cond_2d

    .line 791
    .line 792
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_d

    .line 797
    .line 798
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 799
    .line 800
    const-string v1, "MSG_PACKAGE_UPDATE_CATEGORY_FAIL_HISTORY - "

    .line 801
    .line 802
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 810
    .line 811
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    if-eqz v0, :cond_2d

    .line 816
    .line 817
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 818
    .line 819
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    if-eqz v0, :cond_2d

    .line 832
    .line 833
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 834
    .line 835
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 848
    .line 849
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->addCategoryUpdateFailCount()V

    .line 850
    .line 851
    .line 852
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 853
    .line 854
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 867
    .line 868
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-le v0, v3, :cond_2d

    .line 873
    .line 874
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 875
    .line 876
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 877
    .line 878
    .line 879
    move-result-object p0

    .line 880
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object p0

    .line 888
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 889
    .line 890
    const-string p1, "FAILED"

    .line 891
    .line 892
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    return-void

    .line 896
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 897
    .line 898
    if-eqz v0, :cond_10

    .line 899
    .line 900
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 901
    .line 902
    if-eqz p1, :cond_10

    .line 903
    .line 904
    check-cast p1, Ljava/lang/String;

    .line 905
    .line 906
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    if-eqz v1, :cond_e

    .line 911
    .line 912
    const-string v1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 913
    .line 914
    const-string v2, "MSG_UPDATE_PACKAGE_CATEGORY - "

    .line 915
    .line 916
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 924
    .line 925
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->getApplicationCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object p1

    .line 933
    if-eqz p1, :cond_f

    .line 934
    .line 935
    const-string v1, "NONE"

    .line 936
    .line 937
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-nez v1, :cond_f

    .line 942
    .line 943
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 944
    .line 945
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    if-eqz v1, :cond_10

    .line 950
    .line 951
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 952
    .line 953
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    if-eqz v1, :cond_10

    .line 966
    .line 967
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 968
    .line 969
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 982
    .line 983
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 987
    .line 988
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    if-eqz v1, :cond_10

    .line 993
    .line 994
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 995
    .line 996
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    if-ne v1, v0, :cond_10

    .line 1005
    .line 1006
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1007
    .line 1008
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_4

    .line 1016
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1017
    .line 1018
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p1

    .line 1022
    if-eqz p1, :cond_10

    .line 1023
    .line 1024
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1025
    .line 1026
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1027
    .line 1028
    .line 1029
    move-result-object p1

    .line 1030
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    move-result p1

    .line 1038
    if-eqz p1, :cond_10

    .line 1039
    .line 1040
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1041
    .line 1042
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p1

    .line 1046
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1055
    .line 1056
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->addCategoryUpdateFailCount()V

    .line 1057
    .line 1058
    .line 1059
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1060
    .line 1061
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1062
    .line 1063
    .line 1064
    move-result-object p1

    .line 1065
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object p1

    .line 1073
    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1074
    .line 1075
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    .line 1076
    .line 1077
    .line 1078
    move-result p1

    .line 1079
    if-le p1, v3, :cond_10

    .line 1080
    .line 1081
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1082
    .line 1083
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1084
    .line 1085
    .line 1086
    move-result-object p1

    .line 1087
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p1

    .line 1095
    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1096
    .line 1097
    const-string v0, "FAILED"

    .line 1098
    .line 1099
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_10
    :goto_4
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1103
    .line 1104
    .line 1105
    return-void

    .line 1106
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1107
    .line 1108
    if-eqz v0, :cond_13

    .line 1109
    .line 1110
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    if-eqz v0, :cond_11

    .line 1115
    .line 1116
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1117
    .line 1118
    const-string v1, "MSG_PACKAGE_UPDATE_MISSING_INFO_LIST"

    .line 1119
    .line 1120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .line 1122
    .line 1123
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast p1, Ljava/util/ArrayList;

    .line 1126
    .line 1127
    if-eqz p1, :cond_13

    .line 1128
    .line 1129
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1130
    .line 1131
    .line 1132
    move-result v0

    .line 1133
    :cond_12
    :goto_5
    if-ge v5, v0, :cond_13

    .line 1134
    .line 1135
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    add-int/lit8 v5, v5, 0x1

    .line 1140
    .line 1141
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1142
    .line 1143
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1144
    .line 1145
    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    if-eqz v2, :cond_12

    .line 1150
    .line 1151
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1152
    .line 1153
    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1158
    .line 1159
    .line 1160
    move-result v6

    .line 1161
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v6

    .line 1165
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v2

    .line 1169
    if-nez v2, :cond_12

    .line 1170
    .line 1171
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1172
    .line 1173
    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1178
    .line 1179
    .line 1180
    move-result v6

    .line 1181
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v6

    .line 1185
    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    goto :goto_5

    .line 1189
    :cond_13
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1190
    .line 1191
    .line 1192
    move-result p1

    .line 1193
    if-eqz p1, :cond_14

    .line 1194
    .line 1195
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1196
    .line 1197
    const-string v0, "MSG_PACKAGE_UPDATE_MISSING_INFO_LIST - update none categories"

    .line 1198
    .line 1199
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    :cond_14
    new-instance p1, Ljava/util/HashMap;

    .line 1203
    .line 1204
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1205
    .line 1206
    .line 1207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1208
    .line 1209
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    if-eqz v0, :cond_16

    .line 1214
    .line 1215
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1216
    .line 1217
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    if-nez v0, :cond_16

    .line 1226
    .line 1227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1228
    .line 1229
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    :cond_15
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-eqz v1, :cond_16

    .line 1246
    .line 1247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1252
    .line 1253
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v2

    .line 1257
    const-string v5, "NONE"

    .line 1258
    .line 1259
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v2

    .line 1263
    if-eqz v2, :cond_15

    .line 1264
    .line 1265
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    goto :goto_6

    .line 1281
    :cond_16
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1282
    .line 1283
    .line 1284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1285
    .line 1286
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    if-eqz v0, :cond_2d

    .line 1291
    .line 1292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1293
    .line 1294
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1299
    .line 1300
    .line 1301
    move-result-object p0

    .line 1302
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    .line 1304
    .line 1305
    return-void

    .line 1306
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1307
    .line 1308
    if-eqz p1, :cond_2d

    .line 1309
    .line 1310
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    if-eqz v0, :cond_17

    .line 1315
    .line 1316
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1317
    .line 1318
    const-string v1, "MSG_PACKAGE_REMOVE_INFO - "

    .line 1319
    .line 1320
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    .line 1326
    .line 1327
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1328
    .line 1329
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0

    .line 1333
    if-eqz v0, :cond_18

    .line 1334
    .line 1335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1336
    .line 1337
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v1

    .line 1345
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v0

    .line 1349
    if-eqz v0, :cond_18

    .line 1350
    .line 1351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1352
    .line 1353
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1358
    .line 1359
    .line 1360
    move-result-object p1

    .line 1361
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    :cond_18
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1365
    .line 1366
    .line 1367
    return-void

    .line 1368
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1369
    .line 1370
    if-eqz p1, :cond_2d

    .line 1371
    .line 1372
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    if-eqz v0, :cond_19

    .line 1377
    .line 1378
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1379
    .line 1380
    const-string v1, "MSG_PACKAGE_UPDATE_INFO - "

    .line 1381
    .line 1382
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v1

    .line 1386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    .line 1388
    .line 1389
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1390
    .line 1391
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1392
    .line 1393
    .line 1394
    move-result-object p1

    .line 1395
    if-eqz p1, :cond_2d

    .line 1396
    .line 1397
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1398
    .line 1399
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updatePackageInfo(Landroid/content/Context;)V

    .line 1404
    .line 1405
    .line 1406
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1407
    .line 1408
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    if-eqz v0, :cond_2d

    .line 1413
    .line 1414
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1415
    .line 1416
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1417
    .line 1418
    .line 1419
    move-result-object p0

    .line 1420
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1421
    .line 1422
    .line 1423
    move-result v0

    .line 1424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    return-void

    .line 1432
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1433
    .line 1434
    if-eqz p1, :cond_2d

    .line 1435
    .line 1436
    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1437
    .line 1438
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1439
    .line 1440
    .line 1441
    move-result v0

    .line 1442
    if-eqz v0, :cond_1a

    .line 1443
    .line 1444
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1445
    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    const-string v3, "MSG_PACKAGE_ADD_INFO - "

    .line 1449
    .line 1450
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->toString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v3

    .line 1457
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v1

    .line 1464
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    .line 1466
    .line 1467
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1468
    .line 1469
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    if-eqz v0, :cond_1b

    .line 1474
    .line 1475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1476
    .line 1477
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v0

    .line 1481
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1482
    .line 1483
    .line 1484
    move-result v1

    .line 1485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v1

    .line 1489
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    :cond_1b
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1493
    .line 1494
    .line 1495
    move-result v0

    .line 1496
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 1497
    .line 1498
    .line 1499
    move-result-object p1

    .line 1500
    invoke-virtual {p0, v2, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1501
    .line 1502
    .line 1503
    move-result-object p1

    .line 1504
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1508
    .line 1509
    .line 1510
    return-void

    .line 1511
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1512
    .line 1513
    if-eqz v0, :cond_2d

    .line 1514
    .line 1515
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1516
    .line 1517
    check-cast p1, Ljava/lang/String;

    .line 1518
    .line 1519
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1520
    .line 1521
    .line 1522
    move-result v1

    .line 1523
    if-eqz v1, :cond_1c

    .line 1524
    .line 1525
    const-string v1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1526
    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    const-string v6, "MSG_PACKAGE_CREATE_INFO - "

    .line 1530
    .line 1531
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1535
    .line 1536
    .line 1537
    const-string v6, ", "

    .line 1538
    .line 1539
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v3

    .line 1549
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    .line 1551
    .line 1552
    :cond_1c
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1553
    .line 1554
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1555
    .line 1556
    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v3

    .line 1560
    invoke-direct {v1, v3, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1564
    .line 1565
    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v3

    .line 1569
    if-eqz v3, :cond_1d

    .line 1570
    .line 1571
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1572
    .line 1573
    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v3

    .line 1577
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v6

    .line 1581
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    :cond_1d
    invoke-virtual {p0, v2, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1585
    .line 1586
    .line 1587
    move-result-object p1

    .line 1588
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1592
    .line 1593
    .line 1594
    return-void

    .line 1595
    :cond_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1596
    .line 1597
    if-eqz p1, :cond_2d

    .line 1598
    .line 1599
    check-cast p1, Ljava/util/ArrayList;

    .line 1600
    .line 1601
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1602
    .line 1603
    .line 1604
    move-result v0

    .line 1605
    if-eqz v0, :cond_1f

    .line 1606
    .line 1607
    const-string v0, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1608
    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1610
    .line 1611
    const-string v2, "MSG_SWITCH_ENABLED_UID_LIST_UPDATED - "

    .line 1612
    .line 1613
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v1

    .line 1623
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .line 1625
    .line 1626
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1627
    .line 1628
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v0

    .line 1632
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1633
    .line 1634
    .line 1635
    move-result v1

    .line 1636
    move v2, v5

    .line 1637
    :cond_20
    :goto_7
    if-ge v2, v1, :cond_23

    .line 1638
    .line 1639
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v6

    .line 1643
    add-int/lit8 v2, v2, 0x1

    .line 1644
    .line 1645
    check-cast v6, Ljava/lang/Integer;

    .line 1646
    .line 1647
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1648
    .line 1649
    .line 1650
    move-result v7

    .line 1651
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v6

    .line 1655
    if-nez v6, :cond_20

    .line 1656
    .line 1657
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1658
    .line 1659
    .line 1660
    move-result v6

    .line 1661
    if-eqz v6, :cond_21

    .line 1662
    .line 1663
    const-string v6, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1664
    .line 1665
    const-string v8, "MSG_SWITCH_ENABLED_UID_LIST_UPDATED - delete "

    .line 1666
    .line 1667
    invoke-static {v7, v8}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v8

    .line 1671
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .line 1673
    .line 1674
    :cond_21
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1675
    .line 1676
    invoke-static {v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v6

    .line 1680
    if-eqz v6, :cond_22

    .line 1681
    .line 1682
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1683
    .line 1684
    invoke-static {v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v6

    .line 1688
    invoke-virtual {p0, v4, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v8

    .line 1692
    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1693
    .line 1694
    .line 1695
    :cond_22
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1696
    .line 1697
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v8

    .line 1701
    invoke-virtual {v6, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 1702
    .line 1703
    .line 1704
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1705
    .line 1706
    const/16 v8, 0xb

    .line 1707
    .line 1708
    invoke-static {v6, v7, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)V

    .line 1709
    .line 1710
    .line 1711
    goto :goto_7

    .line 1712
    :cond_23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1713
    .line 1714
    .line 1715
    move-result v0

    .line 1716
    :cond_24
    :goto_8
    if-ge v5, v0, :cond_26

    .line 1717
    .line 1718
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v1

    .line 1722
    add-int/lit8 v5, v5, 0x1

    .line 1723
    .line 1724
    check-cast v1, Ljava/lang/Integer;

    .line 1725
    .line 1726
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1727
    .line 1728
    .line 1729
    move-result v2

    .line 1730
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1731
    .line 1732
    invoke-static {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v4

    .line 1736
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1737
    .line 1738
    .line 1739
    move-result v1

    .line 1740
    if-nez v1, :cond_24

    .line 1741
    .line 1742
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1743
    .line 1744
    .line 1745
    move-result v1

    .line 1746
    if-eqz v1, :cond_25

    .line 1747
    .line 1748
    const-string v1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1749
    .line 1750
    const-string v4, "MSG_SWITCH_ENABLED_UID_LIST_UPDATED - insert "

    .line 1751
    .line 1752
    invoke-static {v2, v4}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v4

    .line 1756
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .line 1758
    .line 1759
    :cond_25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1760
    .line 1761
    const/16 v4, 0xa

    .line 1762
    .line 1763
    invoke-static {v1, v2, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)V

    .line 1764
    .line 1765
    .line 1766
    goto :goto_8

    .line 1767
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1768
    .line 1769
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/util/ArrayList;)V

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1773
    .line 1774
    .line 1775
    return-void

    .line 1776
    :cond_27
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1777
    .line 1778
    if-eqz v0, :cond_2d

    .line 1779
    .line 1780
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1781
    .line 1782
    if-nez p1, :cond_28

    .line 1783
    .line 1784
    move v1, v5

    .line 1785
    :cond_28
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    .line 1786
    .line 1787
    .line 1788
    move-result p1

    .line 1789
    if-eqz p1, :cond_29

    .line 1790
    .line 1791
    const-string p1, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    .line 1792
    .line 1793
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    const-string v6, "MSG_SWITCH_ENABLED_UID_UPDATE - "

    .line 1796
    .line 1797
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    const-string v6, ", "

    .line 1804
    .line 1805
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v2

    .line 1815
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    .line 1817
    .line 1818
    :cond_29
    if-eqz v1, :cond_2a

    .line 1819
    .line 1820
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1821
    .line 1822
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1823
    .line 1824
    .line 1825
    move-result-object p1

    .line 1826
    if-eqz p1, :cond_2c

    .line 1827
    .line 1828
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1829
    .line 1830
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1831
    .line 1832
    .line 1833
    move-result-object p1

    .line 1834
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v1

    .line 1838
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1839
    .line 1840
    .line 1841
    move-result p1

    .line 1842
    if-nez p1, :cond_2c

    .line 1843
    .line 1844
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1845
    .line 1846
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1847
    .line 1848
    .line 1849
    move-result-object p1

    .line 1850
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1855
    .line 1856
    .line 1857
    goto :goto_9

    .line 1858
    :cond_2a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1859
    .line 1860
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1861
    .line 1862
    .line 1863
    move-result-object p1

    .line 1864
    if-eqz p1, :cond_2b

    .line 1865
    .line 1866
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1867
    .line 1868
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1869
    .line 1870
    .line 1871
    move-result-object p1

    .line 1872
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v1

    .line 1876
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1877
    .line 1878
    .line 1879
    move-result p1

    .line 1880
    if-eqz p1, :cond_2b

    .line 1881
    .line 1882
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1883
    .line 1884
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1885
    .line 1886
    .line 1887
    move-result-object p1

    .line 1888
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1889
    .line 1890
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v1

    .line 1894
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v2

    .line 1898
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1899
    .line 1900
    .line 1901
    move-result v1

    .line 1902
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1903
    .line 1904
    .line 1905
    :cond_2b
    invoke-virtual {p0, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1906
    .line 1907
    .line 1908
    move-result-object p1

    .line 1909
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1910
    .line 1911
    .line 1912
    :cond_2c
    :goto_9
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1913
    .line 1914
    .line 1915
    :cond_2d
    :goto_a
    return-void

    .line 1916
    nop

    .line 1917
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
