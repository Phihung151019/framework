.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field private retryCount:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    return-void
.end method

.method private hasAccount()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaccountManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/accounts/AccountManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaccountManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/accounts/AccountManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "com.osp.app.signin"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length p0, p0

    .line 23
    if-lez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    return v1
.end method

.method private hasSamsungAccount()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->hasSamsungAccountPackage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->hasAccount()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private hasSamsungAccountPackage()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "com.osp.app.signin"

    .line 12
    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :catch_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    const-string v6, "SemWifi.Continuity"

    .line 11
    .line 12
    if-eq v2, v4, :cond_13

    .line 13
    .line 14
    const-wide/16 v7, 0x1388

    .line 15
    .line 16
    if-eq v2, v3, :cond_11

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x6

    .line 20
    if-eq v2, v10, :cond_f

    .line 21
    .line 22
    const/16 v3, 0xc

    .line 23
    .line 24
    if-eq v2, v3, :cond_c

    .line 25
    .line 26
    const/16 v3, 0x1e

    .line 27
    .line 28
    if-eq v2, v3, :cond_b

    .line 29
    .line 30
    const/16 v3, 0x22

    .line 31
    .line 32
    if-eq v2, v3, :cond_a

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    const/16 v4, 0x9

    .line 37
    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    if-eq v2, v4, :cond_0

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 45
    .line 46
    if-ne v2, v5, :cond_9

    .line 47
    .line 48
    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const-string v1, "WifiInfo is null"

    .line 61
    .line 62
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 66
    .line 67
    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$200(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 68
    .line 69
    .line 70
    return v5

    .line 71
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    const-string v1, "metered network"

    .line 84
    .line 85
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 89
    .line 90
    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$300(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 91
    .line 92
    .line 93
    return v5

    .line 94
    :cond_3
    iget-object v3, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_8

    .line 105
    .line 106
    iget v3, v1, Landroid/os/Message;->what:I

    .line 107
    .line 108
    if-ne v3, v4, :cond_4

    .line 109
    .line 110
    move v12, v5

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    move v12, v9

    .line 113
    :goto_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    check-cast v1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 118
    .line 119
    :goto_1
    move-object v14, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    new-instance v1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 122
    .line 123
    invoke-direct {v1, v2, v9}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_2
    if-nez v12, :cond_6

    .line 128
    .line 129
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 130
    .line 131
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misFirstConnection(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_12

    .line 136
    .line 137
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 138
    .line 139
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misSupportedNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_12

    .line 144
    .line 145
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 146
    .line 147
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misSharingRestricted(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_12

    .line 152
    .line 153
    iget-object v10, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 154
    .line 155
    if-eqz v12, :cond_7

    .line 156
    .line 157
    const-wide/16 v7, 0x0

    .line 158
    .line 159
    :cond_7
    move-wide v15, v7

    .line 160
    const/4 v11, 0x6

    .line 161
    const/4 v13, 0x0

    .line 162
    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 163
    .line 164
    .line 165
    return v5

    .line 166
    :cond_8
    const-string v1, "Wi-Fi network is available but config is null"

    .line 167
    .line 168
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 172
    .line 173
    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$400(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 174
    .line 175
    .line 176
    return v5

    .line 177
    :cond_9
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 178
    .line 179
    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$100(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 180
    .line 181
    .line 182
    return v5

    .line 183
    :cond_a
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 184
    .line 185
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 188
    .line 189
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$maddNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V

    .line 190
    .line 191
    .line 192
    return v5

    .line 193
    :cond_b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 194
    .line 195
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$000(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetsharingState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 205
    .line 206
    .line 207
    return v5

    .line 208
    :cond_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 209
    .line 210
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 213
    .line 214
    if-eqz v1, :cond_d

    .line 215
    .line 216
    iget-object v3, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getKey()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$mrequiresScan(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    move v9, v5

    .line 229
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v3, "trying to connect networkId:"

    .line 232
    .line 233
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    if-eqz v9, :cond_e

    .line 240
    .line 241
    const-string v3, " (scan required)"

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_e
    const-string v3, ""

    .line 245
    .line 246
    :goto_3
    invoke-static {v1, v3, v6}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 250
    .line 251
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 256
    .line 257
    .line 258
    return v5

    .line 259
    :cond_f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 260
    .line 261
    invoke-static {v2, v10}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$500(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 262
    .line 263
    .line 264
    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 265
    .line 266
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 269
    .line 270
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 274
    .line 275
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$600(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_10

    .line 280
    .line 281
    iput v9, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    .line 282
    .line 283
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 286
    .line 287
    .line 288
    return v5

    .line 289
    :cond_10
    const-string v0, "wait for binding service"

    .line 290
    .line 291
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    return v5

    .line 295
    :cond_11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 296
    .line 297
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetfeatureController(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportAutoShare()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_12

    .line 306
    .line 307
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 308
    .line 309
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_12

    .line 314
    .line 315
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->hasSamsungAccount()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_12

    .line 320
    .line 321
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 322
    .line 323
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$mbindToContinuityService(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 324
    .line 325
    .line 326
    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 327
    .line 328
    invoke-virtual {v0, v4, v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 329
    .line 330
    .line 331
    :cond_12
    :goto_4
    return v5

    .line 332
    :cond_13
    iget v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    .line 333
    .line 334
    add-int/2addr v1, v5

    .line 335
    iput v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    .line 336
    .line 337
    if-ge v1, v3, :cond_14

    .line 338
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v2, "bind time out! try again ... "

    .line 342
    .line 343
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget v2, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 359
    .line 360
    iget v0, v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;->retryCount:I

    .line 361
    .line 362
    invoke-virtual {v1, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 363
    .line 364
    .line 365
    return v5

    .line 366
    :cond_14
    const-string v0, "failed to bind service"

    .line 367
    .line 368
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    return v5
.end method
