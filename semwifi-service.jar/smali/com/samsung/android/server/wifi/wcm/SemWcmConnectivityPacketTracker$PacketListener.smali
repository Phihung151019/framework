.class final Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;
.super Lcom/samsung/android/server/wifi/util/SemPacketReader;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mInterface:Lcom/android/net/module/util/InterfaceParams;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 2
    .line 3
    iget p1, p3, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    .line 4
    .line 5
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    .line 6
    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 9
    .line 10
    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_PACKET:I

    .line 3
    .line 4
    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 14
    .line 15
    .line 16
    sget v2, Landroid/system/OsConstants;->ETH_P_ALL:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 19
    .line 20
    iget v3, v3, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :catch_0
    move-exception v2

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v2

    .line 33
    move-object v1, v0

    .line 34
    :goto_0
    const-string v3, "Failed to create packet tracking socket: "

    .line 35
    .line 36
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method protected handlePacket([BI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "]"

    .line 18
    .line 19
    const/16 v3, 0xe

    .line 20
    .line 21
    const/4 v4, 0x6

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v1, "\n["

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1, v5, p2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-static {p1, v5, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-string v7, "*"

    .line 67
    .line 68
    if-ge v6, v3, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 72
    .line 73
    iget-object v6, v6, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 74
    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/net/MacAddress;->toByteArray()[B

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    const-string v1, ">"

    .line 109
    .line 110
    :goto_0
    move-object v7, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const-string v1, "<"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    :goto_1
    const-string v1, " ["

    .line 116
    .line 117
    invoke-static {v7, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {p1, v5, p2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    const-string p1, " "

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    array-length p2, p1

    .line 145
    const-string v0, "RX"

    .line 146
    .line 147
    const-string v1, "TX"

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    const-string v6, "SemWcmConnectivityPacketTracker"

    .line 151
    .line 152
    if-le p2, v4, :cond_8

    .line 153
    .line 154
    const/4 p2, 0x4

    .line 155
    aget-object p2, p1, p2

    .line 156
    .line 157
    const-string v7, "arp"

    .line 158
    .line 159
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_8

    .line 164
    .line 165
    aget-object p2, p1, v5

    .line 166
    .line 167
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const/4 v1, 0x5

    .line 172
    if-eqz p2, :cond_7

    .line 173
    .line 174
    const-string p2, "who-has"

    .line 175
    .line 176
    aget-object v3, p1, v1

    .line 177
    .line 178
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_7

    .line 183
    .line 184
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 185
    .line 186
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    aget-object v3, p1, v4

    .line 191
    .line 192
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_7

    .line 197
    .line 198
    const/4 p2, 0x3

    .line 199
    aget-object p2, p1, p2

    .line 200
    .line 201
    const-string v3, "ff:ff:ff:ff:ff:ff"

    .line 202
    .line 203
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_6

    .line 208
    .line 209
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 210
    .line 211
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    add-int/2addr v3, v2

    .line 216
    invoke-static {p2, v3}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-eqz p2, :cond_5

    .line 224
    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v2, "mConsecutiveBroadcastArpQueriesToGateway: "

    .line 228
    .line 229
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 233
    .line 234
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 249
    .line 250
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    rem-int/2addr p2, v1

    .line 255
    const/4 v2, 0x2

    .line 256
    if-ne p2, v2, :cond_7

    .line 257
    .line 258
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 259
    .line 260
    iget-object p2, p2, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 261
    .line 262
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyReachabilityLost()V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 267
    .line 268
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_7

    .line 273
    .line 274
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 275
    .line 276
    invoke-static {p2, v5}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 277
    .line 278
    .line 279
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    if-eqz p2, :cond_7

    .line 284
    .line 285
    const-string p2, "IP reachability restored - unicast ARP query sent from device to gateway."

    .line 286
    .line 287
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 291
    .line 292
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-eqz p2, :cond_b

    .line 297
    .line 298
    aget-object p2, p1, v5

    .line 299
    .line 300
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-eqz p2, :cond_b

    .line 305
    .line 306
    const-string p2, "reply"

    .line 307
    .line 308
    aget-object v0, p1, v1

    .line 309
    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_b

    .line 315
    .line 316
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 317
    .line 318
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    aget-object p1, p1, v4

    .line 323
    .line 324
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_b

    .line 329
    .line 330
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 331
    .line 332
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    if-eqz p0, :cond_b

    .line 340
    .line 341
    const-string p0, "IP reachability restored - ARP reply received from gateway to device."

    .line 342
    .line 343
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_8
    array-length p2, p1

    .line 348
    if-le p2, v3, :cond_b

    .line 349
    .line 350
    const/16 p2, 0xc

    .line 351
    .line 352
    aget-object p2, p1, p2

    .line 353
    .line 354
    const-string v4, "dhcp4"

    .line 355
    .line 356
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    if-eqz p2, :cond_b

    .line 361
    .line 362
    aget-object p2, p1, v5

    .line 363
    .line 364
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    if-eqz p2, :cond_9

    .line 369
    .line 370
    const-string p2, "REQUEST,"

    .line 371
    .line 372
    aget-object v1, p1, v3

    .line 373
    .line 374
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-eqz p2, :cond_9

    .line 379
    .line 380
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 381
    .line 382
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_b

    .line 387
    .line 388
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 389
    .line 390
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 391
    .line 392
    .line 393
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 394
    .line 395
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 396
    .line 397
    const-string p1, "start"

    .line 398
    .line 399
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyDhcpSession(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_9
    aget-object p2, p1, v5

    .line 404
    .line 405
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    if-eqz p2, :cond_b

    .line 410
    .line 411
    const-string p2, "ACK:"

    .line 412
    .line 413
    aget-object p1, p1, v3

    .line 414
    .line 415
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-eqz p1, :cond_b

    .line 420
    .line 421
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 422
    .line 423
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    if-ne p1, v2, :cond_a

    .line 428
    .line 429
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 430
    .line 431
    iget-object p1, p1, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 432
    .line 433
    const-string p2, "complete"

    .line 434
    .line 435
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyDhcpSession(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-eqz p1, :cond_a

    .line 443
    .line 444
    const-string p1, "gotDhcpAck from AP"

    .line 445
    .line 446
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 450
    .line 451
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 452
    .line 453
    .line 454
    :cond_b
    :goto_4
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "--- START ---"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "--- START ("

    .line 23
    .line 24
    const-string v2, ") ---"

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "--- STOP ---"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "--- STOP ("

    .line 23
    .line 24
    const-string v2, ") ---"

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const-string v1, " (packet listener stopped unexpectedly)"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
