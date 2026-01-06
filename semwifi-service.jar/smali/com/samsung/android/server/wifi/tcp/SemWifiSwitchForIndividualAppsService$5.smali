.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmPolicyManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/NetworkPolicyManager;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p7, 0x0

    .line 18
    invoke-virtual {p2, p9, p7}, Landroid/net/NetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object p8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 23
    .line 24
    invoke-static {p8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmPolicyManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/NetworkPolicyManager;

    .line 25
    .line 26
    .line 27
    move-result-object p8

    .line 28
    invoke-virtual {p8, p9}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    .line 29
    .line 30
    .line 31
    move-result p8

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, ""

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move v1, p7

    .line 40
    :goto_0
    if-ge v1, p6, :cond_1

    .line 41
    .line 42
    const/16 v2, 0x9

    .line 43
    .line 44
    if-ge v1, v2, :cond_1

    .line 45
    .line 46
    aget-object v2, p5, v1

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, p6, -0x1

    .line 56
    .line 57
    if-ge v1, v2, :cond_0

    .line 58
    .line 59
    const-string v2, ":"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 68
    .line 69
    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    const-string p6, "SemWifiSwitchForIndividualAppsService"

    .line 74
    .line 75
    if-eqz p5, :cond_3

    .line 76
    .line 77
    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 78
    .line 79
    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 80
    .line 81
    .line 82
    move-result-object p5

    .line 83
    invoke-virtual {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 84
    .line 85
    .line 86
    move-result p5

    .line 87
    if-ne p5, p9, :cond_3

    .line 88
    .line 89
    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 90
    .line 91
    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmIsForegroundActivityDetectionStarted(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    .line 92
    .line 93
    .line 94
    move-result p5

    .line 95
    if-eqz p5, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    .line 98
    .line 99
    .line 100
    move-result p5

    .line 101
    if-eqz p5, :cond_2

    .line 102
    .line 103
    new-instance p5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "onDnsEvent - (Current UID)"

    .line 106
    .line 107
    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, "("

    .line 114
    .line 115
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p5, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ")"

    .line 122
    .line 123
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p5

    .line 130
    invoke-static {p6, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 134
    .line 135
    invoke-static {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmDnsDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    new-instance p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;

    .line 139
    .line 140
    invoke-direct {p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v1, Ljava/util/Date;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 149
    .line 150
    const-string v3, "yyyy-MM-dd HH:mm:ss "

    .line 151
    .line 152
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->date:Ljava/lang/String;

    .line 164
    .line 165
    iput p9, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->uid:I

    .line 166
    .line 167
    iput-object p1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->packageName:Ljava/lang/String;

    .line 168
    .line 169
    iput-object p4, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->hostName:Ljava/lang/String;

    .line 170
    .line 171
    iput p3, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->returnCode:I

    .line 172
    .line 173
    iput-boolean p2, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->isBlocked:Z

    .line 174
    .line 175
    iput p8, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->policy:I

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->ipAddress:Ljava/lang/String;

    .line 182
    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_4

    .line 190
    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-ne p1, p9, :cond_4

    .line 202
    .line 203
    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->foreground:Z

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_4
    iput-boolean p7, p5, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->foreground:Z

    .line 208
    .line 209
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 210
    .line 211
    invoke-static {p1, p5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V

    .line 212
    .line 213
    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p2, ","

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 245
    .line 246
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateRunningDnsList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_5

    .line 254
    .line 255
    const-string p0, "onDnsEvent ipaddress: "

    .line 256
    .line 257
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :cond_5
    return-void
.end method
