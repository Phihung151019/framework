.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SemWifiApTrafficPriority"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;I)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "onAvailable: ActiveNetwork:"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;I)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "onAvailable: ActiveNetwork null:"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "SemWifiApTrafficPriority"

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const-string p0, "LinkProperties is null"

    .line 39
    .line 40
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    const-string p0, "lpInterface is null"

    .line 51
    .line 52
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    if-eqz v2, :cond_6

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ne v5, p1, :cond_5

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 78
    .line 79
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 80
    .line 81
    div-float/2addr v0, v2

    .line 82
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;F)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const-string v0, "Uplink: "

    .line 91
    .line 92
    const-string v5, ",mGapiValue:"

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmTrafficStatsRxBytes(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 114
    .line 115
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p2, "onCapabilitiesChanged cellular:"

    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 126
    .line 127
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 138
    .line 139
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)F

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    div-float/2addr v1, v2

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_3
    const/4 p1, 0x1

    .line 162
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_5

    .line 167
    .line 168
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_4

    .line 179
    .line 180
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmTrafficStatsRxBytes(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 186
    .line 187
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string p2, "onCapabilitiesChanged Wifi:"

    .line 193
    .line 194
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 198
    .line 199
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 210
    .line 211
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)F

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    div-float/2addr v1, v2

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    :cond_5
    return-void

    .line 233
    :cond_6
    const-string p1, "onCapabilitiesChanged no Active Network"

    .line 234
    .line 235
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 239
    .line 240
    const/4 p2, 0x0

    .line 241
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;F)V

    .line 242
    .line 243
    .line 244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 245
    .line 246
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmTrafficStatsRxBytes(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 247
    .line 248
    .line 249
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SemWifiApTrafficPriority"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne v0, p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p2, "mCurrentUpstreamInterface:"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 62
    .line 63
    const-string p1, ""

    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p0, "mCurrentUpstreamInterface is  empty"

    .line 69
    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    const-string p1, "SemWifiApTrafficPriority"

    .line 17
    .line 18
    const-string v0, "active network is lost"

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;F)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 36
    .line 37
    const-string v0, ""

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmTrafficStatsRxBytes(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fputmCurrSpeedEstimation(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
