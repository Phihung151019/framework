.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final BOOTP_FLAGS:[B

.field private static final CI_YI_SI_AI_ADDR:[B

.field private static final CODE:I = 0x0

.field private static final DATA:[B

.field private static final DHCP_OPTION_START:I = 0x11a

.field private static final DNS_DPORT:I = 0x35

.field private static final DNS_IPV4_MSG_TYPE_LOCATION:I = 0x2a

.field private static final DPORT:I = 0x43

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final ETHER_ARP_TYPE:[B

.field private static final ETHER_HEADER_LENGTH:I = 0xe

.field private static final ETHER_IP_TYPE:[B

.field private static final ETH_IPV4_MAC_SRC_LOCATION:I = 0x6

.field private static final FLAGS_FRAGMENT_OFFSET:[B

.field private static final HOPS:I = 0x0

.field private static final HW_ADDR_LENGTH:I = 0x6

.field private static final HW_TYPE:I = 0x1

.field private static final ICMP_CHECKSUM:I = 0x0

.field private static final ICMP_HEADER_LENGTH:I = 0x40

.field private static final ICMP_REPLY_TTL_LOCATION:I = 0x16

.field private static final IDENTIFICATION:[B

.field private static final IDENTIFIER:[B

.field private static final IDENTIFIER_LOCATION:I = 0x26

.field private static final IPV4_LENGTH:I = 0x4

.field private static final IP_CHECKSUM:I = 0x0

.field private static final IP_HEADER_LENGTH:I = 0x14

.field private static final JAVA_IP_TTL:I = 0x19

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAGIC_COOKIE:[B

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final MSG_TYPE:I = 0x1

.field private static final MSG_TYPE_LOCATION:I = 0x2a

.field private static final MSG_TYPE_OFFER:I = 0x2

.field private static final MSG_TYPE_REQUEST:I = 0x1

.field private static final OPTION_DISCOVER:I = 0x35

.field private static final OPTION_DISCOVER_DHCP:I = 0x1

.field private static final OPTION_DISCOVER_LENGTH:I = 0x1

.field private static final OPTION_END:I = 0xff

.field private static final OPTION_ROUTER:I = 0x3

.field private static final PROTOCOL:I = 0x1

.field private static final SECS:I = 0x0

.field private static final SEQUENCE_LOCATION:I = 0x28

.field private static final SEQUENCE_NUMBER:[B

.field private static final SPORT:I = 0x44

.field private static final TAG:Ljava/lang/String; = "MobileWips::FrameworkPktSender"

.field private static final TCP_ACK_NUMBER:[B

.field private static final TCP_CHECKSUM:I = 0x0

.field private static final TCP_DPORT:I = 0x50

.field private static final TCP_DPORT_DNS:I = 0x35

.field private static final TCP_HEADER_LENGTH:I = 0x14

.field private static final TCP_HEADER_LENGTH_FLAGS:[B

.field private static final TCP_PROTOCOL:I = 0x6

.field private static final TCP_SEQ_NUMBER:[B

.field private static final TCP_SPORT:I = 0xfde8

.field private static final TCP_TOTAL_LENGTH:I = 0x28

.field private static final TCP_WINDOW_SIZE:I = 0xfa0

.field private static final TIMESTAMP:[B

.field private static final TOS:I = 0x0

.field private static final TOTAL_LENGTH:I = 0x54

.field private static final TRANSACTION_ID:[B

.field private static final TRANSACTION_ID_LOCATION:I = 0x2e

.field private static final TTL:I = 0x40

.field private static final TYPE:I = 0x8

.field private static final UDP_CHECKSUM:I = 0x0

.field private static final UDP_IPV4_DST_PORT_LOCATION:I = 0x24

.field private static final UDP_IPV4_SRC_PORT_LOCATION:I = 0x22

.field private static final UDP_IP_DST_ADDR:[B

.field private static final UDP_IP_SRC_ADDR:[B

.field private static final UDP_LENGTH:I = 0xfc

.field private static final UDP_PROTOCOL:I = 0x11

.field private static final UDP_TOTAL_LENGTH:I = 0x110

.field private static final VERSION_HEADER_LENGTH:I = 0x45


# instance fields
.field private L2_BROADCAST:[B

.field private SRC_ADDR:[B

.field private mInterfaceName:Ljava/lang/String;

.field private mSocket:Ljava/io/FileDescriptor;

.field private mSocketArpSniff:Ljava/io/FileDescriptor;

.field private mSocketArpSniffRecv:Ljava/io/FileDescriptor;

.field private mSocketDhcp:Ljava/io/FileDescriptor;

.field private mSocketIcmp:Ljava/io/FileDescriptor;

.field private mSocketRecv:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_ARP_TYPE:[B

    .line 10
    .line 11
    new-array v2, v1, [B

    .line 12
    .line 13
    fill-array-data v2, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    .line 17
    .line 18
    new-array v2, v1, [B

    .line 19
    .line 20
    fill-array-data v2, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFICATION:[B

    .line 24
    .line 25
    new-array v2, v1, [B

    .line 26
    .line 27
    fill-array-data v2, :array_3

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->FLAGS_FRAGMENT_OFFSET:[B

    .line 31
    .line 32
    new-array v2, v1, [B

    .line 33
    .line 34
    fill-array-data v2, :array_4

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFIER:[B

    .line 38
    .line 39
    new-array v2, v1, [B

    .line 40
    .line 41
    fill-array-data v2, :array_5

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SEQUENCE_NUMBER:[B

    .line 45
    .line 46
    new-array v0, v0, [B

    .line 47
    .line 48
    fill-array-data v0, :array_6

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TIMESTAMP:[B

    .line 52
    .line 53
    const/16 v0, 0x30

    .line 54
    .line 55
    new-array v0, v0, [B

    .line 56
    .line 57
    fill-array-data v0, :array_7

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->DATA:[B

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    new-array v2, v0, [B

    .line 64
    .line 65
    fill-array-data v2, :array_8

    .line 66
    .line 67
    .line 68
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_SRC_ADDR:[B

    .line 69
    .line 70
    new-array v2, v0, [B

    .line 71
    .line 72
    fill-array-data v2, :array_9

    .line 73
    .line 74
    .line 75
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_DST_ADDR:[B

    .line 76
    .line 77
    new-array v2, v0, [B

    .line 78
    .line 79
    fill-array-data v2, :array_a

    .line 80
    .line 81
    .line 82
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TRANSACTION_ID:[B

    .line 83
    .line 84
    new-array v2, v1, [B

    .line 85
    .line 86
    fill-array-data v2, :array_b

    .line 87
    .line 88
    .line 89
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->BOOTP_FLAGS:[B

    .line 90
    .line 91
    new-array v2, v0, [B

    .line 92
    .line 93
    fill-array-data v2, :array_c

    .line 94
    .line 95
    .line 96
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->CI_YI_SI_AI_ADDR:[B

    .line 97
    .line 98
    new-array v2, v0, [B

    .line 99
    .line 100
    fill-array-data v2, :array_d

    .line 101
    .line 102
    .line 103
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->MAGIC_COOKIE:[B

    .line 104
    .line 105
    new-array v2, v0, [B

    .line 106
    .line 107
    fill-array-data v2, :array_e

    .line 108
    .line 109
    .line 110
    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_SEQ_NUMBER:[B

    .line 111
    .line 112
    new-array v0, v0, [B

    .line 113
    .line 114
    fill-array-data v0, :array_f

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_ACK_NUMBER:[B

    .line 118
    .line 119
    new-array v0, v1, [B

    .line 120
    .line 121
    fill-array-data v0, :array_10

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_HEADER_LENGTH_FLAGS:[B

    .line 125
    .line 126
    return-void

    .line 127
    :array_0
    .array-data 1
        0x8t
        0x6t
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    nop

    .line 133
    :array_1
    .array-data 1
        0x8t
        0x0t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    nop

    .line 139
    :array_2
    .array-data 1
        -0x4dt
        -0x28t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :array_3
    .array-data 1
        0x40t
        0x0t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    nop

    .line 151
    :array_4
    .array-data 1
        0x58t
        0x6t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    nop

    .line 157
    :array_5
    .array-data 1
        0x0t
        0x2t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    nop

    .line 163
    :array_6
    .array-data 1
        -0x42t
        -0x1dt
        0x77t
        0x5at
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_7
    .array-data 1
        0x69t
        0x2et
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_9
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_a
    .array-data 1
        -0x7at
        0x16t
        0x6t
        0x2t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_b
    .array-data 1
        -0x80t
        0x0t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    nop

    .line 223
    :array_c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_d
    .array-data 1
        0x63t
        -0x7et
        0x53t
        0x63t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x64t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x64t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_10
    .array-data 1
        0x50t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 16
    .line 17
    const-string v0, "wlan0"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mInterfaceName:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private calculationChecksum([B)J
    .locals 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    array-length p0, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move-wide v3, v0

    .line 9
    :goto_0
    const-wide/16 v5, 0x1

    .line 10
    .line 11
    const-wide/32 v7, -0x10000

    .line 12
    .line 13
    .line 14
    const v9, 0xff00

    .line 15
    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    const-wide/32 v11, 0xffff

    .line 19
    .line 20
    .line 21
    if-le p0, v10, :cond_2

    .line 22
    .line 23
    aget-byte v10, p1, v2

    .line 24
    .line 25
    shl-int/lit8 v10, v10, 0x8

    .line 26
    .line 27
    and-int/2addr v9, v10

    .line 28
    add-int/lit8 v10, v2, 0x1

    .line 29
    .line 30
    aget-byte v10, p1, v10

    .line 31
    .line 32
    and-int/lit16 v10, v10, 0xff

    .line 33
    .line 34
    or-int/2addr v9, v10

    .line 35
    int-to-long v9, v9

    .line 36
    add-long/2addr v3, v9

    .line 37
    and-long/2addr v7, v3

    .line 38
    cmp-long v7, v7, v0

    .line 39
    .line 40
    if-lez v7, :cond_1

    .line 41
    .line 42
    and-long/2addr v3, v11

    .line 43
    add-long/2addr v3, v5

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    add-int/lit8 p0, p0, -0x2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-lez p0, :cond_3

    .line 50
    .line 51
    aget-byte p0, p1, v2

    .line 52
    .line 53
    shl-int/lit8 p0, p0, 0x8

    .line 54
    .line 55
    and-int/2addr p0, v9

    .line 56
    int-to-long p0, p0

    .line 57
    add-long/2addr v3, p0

    .line 58
    and-long p0, v3, v7

    .line 59
    .line 60
    cmp-long p0, p0, v0

    .line 61
    .line 62
    if-lez p0, :cond_3

    .line 63
    .line 64
    and-long p0, v3, v11

    .line 65
    .line 66
    add-long v3, p0, v5

    .line 67
    .line 68
    :cond_3
    not-long p0, v3

    .line 69
    and-long/2addr p0, v11

    .line 70
    return-wide p0
.end method

.method private createPacketDns(I[B[B[B[BZ)Ljava/nio/ByteBuffer;
    .locals 12

    .line 1
    move-object/from16 v6, p4

    .line 2
    .line 3
    const/16 v1, 0x5dc

    .line 4
    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const/16 v1, 0x14

    .line 16
    .line 17
    move v2, v1

    .line 18
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 26
    .line 27
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget-object v5, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    .line 51
    .line 52
    move-object/from16 v9, p5

    .line 53
    .line 54
    invoke-direct {p0, v8, v9, v4, v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 55
    .line 56
    .line 57
    if-eqz p6, :cond_0

    .line 58
    .line 59
    const/16 v9, 0x8

    .line 60
    .line 61
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    array-length v2, v6

    .line 66
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    array-length v2, v6

    .line 83
    add-int/lit8 v2, v2, 0x1c

    .line 84
    .line 85
    const/16 v3, 0x11

    .line 86
    .line 87
    move-object v0, p0

    .line 88
    move-object v4, p2

    .line 89
    move-object v5, p3

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    .line 91
    .line 92
    .line 93
    move-object v11, v1

    .line 94
    array-length v0, v6

    .line 95
    add-int/lit8 v4, v0, 0x8

    .line 96
    .line 97
    const/16 v3, 0x35

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    move-object v0, p0

    .line 101
    move v2, p1

    .line 102
    move-object v1, v10

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeUDP(Ljava/nio/ByteBuffer;IIII)V

    .line 104
    .line 105
    .line 106
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 126
    .line 127
    .line 128
    return-object v7

    .line 129
    :cond_0
    move-object v11, v1

    .line 130
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/16 v0, 0x20

    .line 135
    .line 136
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    const/16 v2, 0x28

    .line 153
    .line 154
    const/4 v3, 0x6

    .line 155
    move-object v0, p0

    .line 156
    move-object v4, p2

    .line 157
    move-object v5, p3

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    .line 159
    .line 160
    .line 161
    const/4 v4, 0x6

    .line 162
    const/16 v5, 0x14

    .line 163
    .line 164
    move-object v2, p2

    .line 165
    move-object v3, p3

    .line 166
    move-object v1, v9

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makePsuedoHeader(Ljava/nio/ByteBuffer;[B[BII)V

    .line 168
    .line 169
    .line 170
    const/16 v2, 0x35

    .line 171
    .line 172
    invoke-direct {p0, v6, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeTCP(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 187
    .line 188
    .line 189
    return-object v7
.end method

.method private declared-synchronized getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mInterfaceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method private getMacAddress(Ljava/lang/String;)[B
    .locals 7

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const-string v1, "MobileWips::FrameworkPktSender"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_1
    const-string p1, "NetworkInterface.getNetworkInterfaces() is null"

    .line 11
    .line 12
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    check-cast v5, Ljava/net/NetworkInterface;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x6

    .line 58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const-string p1, "Get hardware interface failed"

    .line 65
    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 71
    .line 72
    .line 73
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    :goto_1
    array-length v1, p1

    .line 79
    if-ge v3, v1, :cond_3

    .line 80
    .line 81
    const-string v1, "%02X"

    .line 82
    .line 83
    aget-byte v2, p1, v3

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v2, 0x10

    .line 98
    .line 99
    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->intToByteArray(I)[B

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x3

    .line 112
    aget-byte v1, v1, v2

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 124
    .line 125
    .line 126
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :catch_0
    :cond_4
    return-object p0
.end method

.method public static longToBytes(J)[B
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private macStringToByteArray(Ljava/lang/String;)[B
    .locals 4

    .line 1
    const/4 p0, 0x6

    .line 2
    new-array v0, p0, [B

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p0, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v2, v1, 0x3

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x2

    .line 12
    .line 13
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-byte v2, v2

    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method private makeARP(Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 15
    .line 16
    int-to-short v0, v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x6

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    new-array p0, v0, [B

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private makeDHCP(Ljava/nio/ByteBuffer;[B)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TRANSACTION_ID:[B

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->BOOTP_FLAGS:[B

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->CI_YI_SI_AI_ADDR:[B

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    const/16 p2, 0xec

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    sget-object p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->MAGIC_COOKIE:[B

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    const/16 p2, 0x35

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    const/4 p0, -0x1

    .line 73
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method private makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private makeICMP(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    .line 11
    .line 12
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFIER:[B

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SEQUENCE_NUMBER:[B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TIMESTAMP:[B

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->DATA:[B

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->calculationChecksum([B)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->longToBytes(J)[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 v3, 0x6

    .line 65
    aget-byte v3, p0, v3

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x7

    .line 71
    aget-byte p0, p0, v3

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {p1, v0, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private makeIP(Ljava/nio/ByteBuffer;II[B[B)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_1

    .line 4
    .line 5
    if-nez p5, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x45

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    int-to-short p2, p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    sget-object p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFICATION:[B

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    sget-object p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->FLAGS_FRAGMENT_OFFSET:[B

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    const/16 p2, 0x40

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    int-to-byte p2, p3

    .line 50
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->calculationChecksum([B)J

    .line 70
    .line 71
    .line 72
    move-result-wide p2

    .line 73
    invoke-static {p2, p3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->longToBytes(J)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/4 p2, 0x6

    .line 78
    aget-byte p2, p0, p2

    .line 79
    .line 80
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    const/4 p2, 0x7

    .line 84
    aget-byte p0, p0, p2

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    const/16 p2, 0xa

    .line 94
    .line 95
    invoke-virtual {p1, p2, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method private makePsuedoHeader(Ljava/nio/ByteBuffer;[B[BII)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    int-to-byte p0, p4

    .line 19
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    int-to-short p0, p5

    .line 23
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private makeTCP(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    .line 13
    .line 14
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    const/16 v1, -0x218

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    int-to-short p3, p3

    .line 25
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    sget-object p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_SEQ_NUMBER:[B

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    sget-object p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_ACK_NUMBER:[B

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    sget-object p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_HEADER_LENGTH_FLAGS:[B

    .line 39
    .line 40
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    const/16 p3, 0xfa0

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->calculationChecksum([B)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->longToBytes(J)[B

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 p2, 0x6

    .line 77
    aget-byte p2, p0, p2

    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    const/4 p2, 0x7

    .line 83
    aget-byte p0, p0, p2

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    const/16 p2, 0x10

    .line 93
    .line 94
    invoke-virtual {p1, p2, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    return-void
.end method

.method private makeUDP(Ljava/nio/ByteBuffer;IIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    int-to-short p0, p2

    .line 5
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    int-to-short p0, p3

    .line 9
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    int-to-short p0, p4

    .line 13
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    int-to-short p0, p5

    .line 17
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public pingTcp([B[BIII)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string p5, "pingTcp "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/16 v0, -0xbe

    .line 12
    .line 13
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :try_start_0
    sget v3, Landroid/system/OsConstants;->AF_INET:I

    .line 20
    .line 21
    sget v4, Landroid/system/OsConstants;->SOCK_STREAM:I

    .line 22
    .line 23
    invoke-static {v3, v4, v1}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-lez p4, :cond_0

    .line 28
    .line 29
    sget v3, Landroid/system/OsConstants;->IPPROTO_IP:I

    .line 30
    .line 31
    sget v4, Landroid/system/OsConstants;->IP_TTL:I

    .line 32
    .line 33
    invoke-static {v2, v3, v4, p4}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-static {v2, p1, v1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/net/util/SocketUtils;->bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, p2, p3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "MobileWips::FrameworkPktSender"

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :goto_2
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public sendArp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const-string v2, "sendArp "

    .line 6
    .line 7
    const-string v3, "MobileWips::FrameworkPktSender"

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    :try_start_0
    sget v6, Landroid/system/OsConstants;->AF_PACKET:I

    .line 16
    .line 17
    sget v7, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-static {v6, v7, v8}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    iput-object v9, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-static {v9}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    iget-object v10, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 35
    .line 36
    sget v11, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 37
    .line 38
    int-to-short v11, v11

    .line 39
    iget v12, v9, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 40
    .line 41
    invoke-static {v11, v12, v5}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    invoke-static {v10, v11}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v6, v7, v8}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iput-object v6, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 53
    .line 54
    sget v7, Landroid/system/OsConstants;->ETH_P_ARP:I

    .line 55
    .line 56
    int-to-short v7, v7

    .line 57
    iget v10, v9, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 58
    .line 59
    invoke-static {v7, v10, v5}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v6, v7}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-direct {v1, v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iput-object v6, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    move/from16 v10, p2

    .line 81
    .line 82
    int-to-long v10, v10

    .line 83
    add-long/2addr v6, v10

    .line 84
    move-object/from16 v10, p5

    .line 85
    .line 86
    invoke-direct {v1, v10}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    const/16 v11, 0x5dc

    .line 91
    .line 92
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    const/16 v13, 0xe

    .line 97
    .line 98
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    const/16 v15, 0x1c

    .line 103
    .line 104
    move/from16 p1, v13

    .line 105
    .line 106
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 111
    .line 112
    .line 113
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 114
    .line 115
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    .line 131
    .line 132
    iget-object v15, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 133
    .line 134
    sget-object v11, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_ARP_TYPE:[B

    .line 135
    .line 136
    invoke-direct {v1, v14, v5, v15, v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v5, p4

    .line 140
    .line 141
    invoke-direct {v1, v13, v10, v5, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeARP(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 152
    .line 153
    .line 154
    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 155
    .line 156
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    .line 157
    .line 158
    .line 159
    move-result-object v17

    .line 160
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    .line 161
    .line 162
    .line 163
    move-result v19

    .line 164
    iget v9, v9, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 165
    .line 166
    iget-object v10, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    .line 167
    .line 168
    invoke-static {v8, v9, v10}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 169
    .line 170
    .line 171
    move-result-object v21

    .line 172
    const/16 v18, 0x0

    .line 173
    .line 174
    const/16 v20, 0x0

    .line 175
    .line 176
    move-object/from16 v16, v5

    .line 177
    .line 178
    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 179
    .line 180
    .line 181
    const/16 v5, 0x5dc

    .line 182
    .line 183
    new-array v9, v5, [B

    .line 184
    .line 185
    const/4 v5, 0x6

    .line 186
    new-array v10, v5, [B

    .line 187
    .line 188
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    cmp-long v11, v11, v6

    .line 193
    .line 194
    if-gez v11, :cond_4

    .line 195
    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 197
    .line 198
    .line 199
    move-result-wide v11

    .line 200
    sub-long v11, v6, v11

    .line 201
    .line 202
    iget-object v13, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 203
    .line 204
    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 205
    .line 206
    sget v15, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 207
    .line 208
    invoke-static {v11, v12}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v13, v14, v15, v11}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 213
    .line 214
    .line 215
    iget-object v11, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 216
    .line 217
    const/16 v12, 0x5dc

    .line 218
    .line 219
    invoke-static {v11, v9, v8, v12}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    const/16 v13, 0x1c

    .line 224
    .line 225
    if-lt v11, v13, :cond_3

    .line 226
    .line 227
    aget-byte v11, v9, p1

    .line 228
    .line 229
    if-nez v11, :cond_3

    .line 230
    .line 231
    const/16 v11, 0xf

    .line 232
    .line 233
    aget-byte v11, v9, v11

    .line 234
    .line 235
    const/4 v13, 0x1

    .line 236
    if-ne v11, v13, :cond_3

    .line 237
    .line 238
    const/16 v11, 0x10

    .line 239
    .line 240
    aget-byte v11, v9, v11

    .line 241
    .line 242
    const/16 v14, 0x8

    .line 243
    .line 244
    if-ne v11, v14, :cond_3

    .line 245
    .line 246
    const/16 v11, 0x11

    .line 247
    .line 248
    aget-byte v11, v9, v11

    .line 249
    .line 250
    if-nez v11, :cond_3

    .line 251
    .line 252
    const/16 v11, 0x12

    .line 253
    .line 254
    aget-byte v11, v9, v11

    .line 255
    .line 256
    if-ne v11, v5, :cond_3

    .line 257
    .line 258
    const/16 v11, 0x13

    .line 259
    .line 260
    aget-byte v11, v9, v11

    .line 261
    .line 262
    const/4 v14, 0x4

    .line 263
    if-ne v11, v14, :cond_3

    .line 264
    .line 265
    const/16 v11, 0x14

    .line 266
    .line 267
    aget-byte v11, v9, v11

    .line 268
    .line 269
    if-nez v11, :cond_3

    .line 270
    .line 271
    const/16 v11, 0x1c

    .line 272
    .line 273
    aget-byte v14, v9, v11

    .line 274
    .line 275
    aget-byte v15, v0, v8

    .line 276
    .line 277
    if-ne v14, v15, :cond_3

    .line 278
    .line 279
    const/16 v14, 0x1d

    .line 280
    .line 281
    aget-byte v14, v9, v14

    .line 282
    .line 283
    aget-byte v15, v0, v13

    .line 284
    .line 285
    if-ne v14, v15, :cond_3

    .line 286
    .line 287
    const/16 v14, 0x1e

    .line 288
    .line 289
    aget-byte v14, v9, v14

    .line 290
    .line 291
    const/4 v15, 0x2

    .line 292
    aget-byte v11, v0, v15

    .line 293
    .line 294
    if-ne v14, v11, :cond_3

    .line 295
    .line 296
    const/16 v11, 0x1f

    .line 297
    .line 298
    aget-byte v11, v9, v11

    .line 299
    .line 300
    const/4 v14, 0x3

    .line 301
    aget-byte v14, v0, v14

    .line 302
    .line 303
    if-ne v11, v14, :cond_3

    .line 304
    .line 305
    const/16 v11, 0x16

    .line 306
    .line 307
    invoke-static {v9, v11, v10, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    .line 309
    .line 310
    invoke-static {v10}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->macToString([B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    move v14, v8

    .line 315
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-ge v14, v5, :cond_1

    .line 320
    .line 321
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    check-cast v5, Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_0

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 335
    .line 336
    goto :goto_1

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    goto/16 :goto_7

    .line 339
    .line 340
    :catch_0
    move-exception v0

    .line 341
    goto :goto_3

    .line 342
    :catch_1
    move-exception v0

    .line 343
    goto/16 :goto_5

    .line 344
    .line 345
    :cond_1
    const/16 v5, 0x15

    .line 346
    .line 347
    aget-byte v5, v9, v5

    .line 348
    .line 349
    if-ne v5, v13, :cond_2

    .line 350
    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v13, "REQ"

    .line 357
    .line 358
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    goto :goto_2

    .line 372
    :cond_2
    if-ne v5, v15, :cond_3

    .line 373
    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v13, "REP"

    .line 380
    .line 381
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .line 393
    .line 394
    :cond_3
    :goto_2
    const/4 v5, 0x6

    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 398
    .line 399
    if-eqz v0, :cond_5

    .line 400
    .line 401
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 402
    .line 403
    .line 404
    :cond_5
    const/4 v2, 0x0

    .line 405
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 406
    .line 407
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 408
    .line 409
    if-eqz v0, :cond_6

    .line 410
    .line 411
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 412
    .line 413
    .line 414
    :cond_6
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    .line 416
    return-object v4

    .line 417
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    .line 438
    .line 439
    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 440
    .line 441
    if-eqz v0, :cond_7

    .line 442
    .line 443
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 444
    .line 445
    .line 446
    :cond_7
    const/4 v2, 0x0

    .line 447
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 448
    .line 449
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 450
    .line 451
    if-eqz v0, :cond_8

    .line 452
    .line 453
    :goto_4
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 454
    .line 455
    .line 456
    :cond_8
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :goto_5
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    .line 480
    .line 481
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 482
    .line 483
    if-eqz v0, :cond_9

    .line 484
    .line 485
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 486
    .line 487
    .line 488
    :cond_9
    const/4 v2, 0x0

    .line 489
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 490
    .line 491
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 492
    .line 493
    if-eqz v0, :cond_8

    .line 494
    .line 495
    goto :goto_4

    .line 496
    :catch_2
    :goto_6
    return-object v4

    .line 497
    :goto_7
    :try_start_6
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 498
    .line 499
    if-eqz v2, :cond_a

    .line 500
    .line 501
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 502
    .line 503
    .line 504
    :cond_a
    const/4 v2, 0x0

    .line 505
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 506
    .line 507
    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 508
    .line 509
    if-eqz v3, :cond_b

    .line 510
    .line 511
    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 512
    .line 513
    .line 514
    :cond_b
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 515
    .line 516
    :catch_3
    throw v0
.end method

.method public declared-synchronized sendArpToSniffing(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_1
    sget v4, Landroid/system/OsConstants;->AF_PACKET:I

    .line 13
    .line 14
    sget v5, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    iput-object v7, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-static {v7}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v8, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 32
    .line 33
    sget v9, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 34
    .line 35
    int-to-short v9, v9

    .line 36
    iget v10, v7, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 37
    .line 38
    invoke-static {v9, v10, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-static {v8, v9}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 50
    .line 51
    sget v5, Landroid/system/OsConstants;->ETH_P_ARP:I

    .line 52
    .line 53
    int-to-short v5, v5

    .line 54
    iget v8, v7, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 55
    .line 56
    invoke-static {v5, v8, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v4, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v1, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iput-object v4, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    move/from16 v8, p2

    .line 78
    .line 79
    int-to-long v8, v8

    .line 80
    add-long/2addr v4, v8

    .line 81
    move-object/from16 v8, p5

    .line 82
    .line 83
    invoke-direct {v1, v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const/16 v9, 0x5dc

    .line 88
    .line 89
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    const/16 v11, 0xe

    .line 94
    .line 95
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    const/16 v13, 0x1c

    .line 100
    .line 101
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 106
    .line 107
    .line 108
    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 109
    .line 110
    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    iget-object v15, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    .line 126
    .line 127
    move/from16 p1, v11

    .line 128
    .line 129
    iget-object v11, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 130
    .line 131
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_ARP_TYPE:[B

    .line 132
    .line 133
    invoke-direct {v1, v12, v15, v11, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 134
    .line 135
    .line 136
    move-object/from16 v3, p4

    .line 137
    .line 138
    invoke-direct {v1, v14, v8, v3, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeARP(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    .line 150
    .line 151
    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 152
    .line 153
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 154
    .line 155
    .line 156
    move-result-object v17

    .line 157
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    .line 158
    .line 159
    .line 160
    move-result v19

    .line 161
    iget v7, v7, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 162
    .line 163
    iget-object v8, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    .line 164
    .line 165
    invoke-static {v6, v7, v8}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 166
    .line 167
    .line 168
    move-result-object v21

    .line 169
    const/16 v18, 0x0

    .line 170
    .line 171
    const/16 v20, 0x0

    .line 172
    .line 173
    move-object/from16 v16, v3

    .line 174
    .line 175
    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 176
    .line 177
    .line 178
    new-array v3, v9, [B

    .line 179
    .line 180
    const/4 v7, 0x6

    .line 181
    new-array v8, v7, [B

    .line 182
    .line 183
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 184
    .line 185
    .line 186
    move-result-wide v10

    .line 187
    cmp-long v10, v10, v4

    .line 188
    .line 189
    if-gez v10, :cond_2

    .line 190
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 192
    .line 193
    .line 194
    move-result-wide v10

    .line 195
    sub-long v10, v4, v10

    .line 196
    .line 197
    iget-object v12, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 198
    .line 199
    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 200
    .line 201
    sget v15, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 202
    .line 203
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-static {v12, v14, v15, v10}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 208
    .line 209
    .line 210
    iget-object v10, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 211
    .line 212
    invoke-static {v10, v3, v6, v9}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-lt v10, v13, :cond_0

    .line 217
    .line 218
    aget-byte v10, v3, p1

    .line 219
    .line 220
    if-nez v10, :cond_0

    .line 221
    .line 222
    const/16 v10, 0xf

    .line 223
    .line 224
    aget-byte v10, v3, v10

    .line 225
    .line 226
    const/4 v11, 0x1

    .line 227
    if-ne v10, v11, :cond_0

    .line 228
    .line 229
    const/16 v10, 0x10

    .line 230
    .line 231
    aget-byte v10, v3, v10

    .line 232
    .line 233
    const/16 v12, 0x8

    .line 234
    .line 235
    if-ne v10, v12, :cond_0

    .line 236
    .line 237
    const/16 v10, 0x11

    .line 238
    .line 239
    aget-byte v10, v3, v10

    .line 240
    .line 241
    if-nez v10, :cond_0

    .line 242
    .line 243
    const/16 v10, 0x12

    .line 244
    .line 245
    aget-byte v10, v3, v10

    .line 246
    .line 247
    if-ne v10, v7, :cond_0

    .line 248
    .line 249
    const/16 v10, 0x13

    .line 250
    .line 251
    aget-byte v10, v3, v10

    .line 252
    .line 253
    const/4 v12, 0x4

    .line 254
    if-ne v10, v12, :cond_0

    .line 255
    .line 256
    const/16 v10, 0x14

    .line 257
    .line 258
    aget-byte v10, v3, v10

    .line 259
    .line 260
    if-nez v10, :cond_0

    .line 261
    .line 262
    aget-byte v10, v3, v13

    .line 263
    .line 264
    aget-byte v12, v0, v6

    .line 265
    .line 266
    if-ne v10, v12, :cond_0

    .line 267
    .line 268
    const/16 v10, 0x1d

    .line 269
    .line 270
    aget-byte v10, v3, v10

    .line 271
    .line 272
    aget-byte v12, v0, v11

    .line 273
    .line 274
    if-ne v10, v12, :cond_0

    .line 275
    .line 276
    const/16 v10, 0x1e

    .line 277
    .line 278
    aget-byte v10, v3, v10

    .line 279
    .line 280
    const/4 v12, 0x2

    .line 281
    aget-byte v14, v0, v12

    .line 282
    .line 283
    if-ne v10, v14, :cond_0

    .line 284
    .line 285
    const/16 v10, 0x1f

    .line 286
    .line 287
    aget-byte v10, v3, v10

    .line 288
    .line 289
    const/4 v14, 0x3

    .line 290
    aget-byte v14, v0, v14

    .line 291
    .line 292
    if-ne v10, v14, :cond_0

    .line 293
    .line 294
    const/16 v10, 0x16

    .line 295
    .line 296
    invoke-static {v3, v10, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    .line 298
    .line 299
    invoke-static {v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->macToString([B)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    const/16 v14, 0x15

    .line 304
    .line 305
    aget-byte v14, v3, v14

    .line 306
    .line 307
    if-ne v14, v11, :cond_1

    .line 308
    .line 309
    new-instance v11, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v12, "REQ"

    .line 315
    .line 316
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :catchall_0
    move-exception v0

    .line 332
    goto/16 :goto_6

    .line 333
    .line 334
    :catch_0
    move-exception v0

    .line 335
    goto :goto_3

    .line 336
    :catch_1
    move-exception v0

    .line 337
    goto :goto_4

    .line 338
    :cond_1
    if-ne v14, v12, :cond_0

    .line 339
    .line 340
    new-instance v11, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v12, "REP"

    .line 346
    .line 347
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 363
    .line 364
    if-eqz v0, :cond_3

    .line 365
    .line 366
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 367
    .line 368
    .line 369
    :cond_3
    const/4 v3, 0x0

    .line 370
    goto :goto_1

    .line 371
    :catchall_1
    move-exception v0

    .line 372
    goto/16 :goto_7

    .line 373
    .line 374
    :goto_1
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 375
    .line 376
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 377
    .line 378
    if-eqz v0, :cond_4

    .line 379
    .line 380
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 381
    .line 382
    .line 383
    :cond_4
    const/4 v3, 0x0

    .line 384
    :goto_2
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const-string v3, "MobileWips::FrameworkPktSender"

    .line 392
    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    const-string v5, "sendArpS "

    .line 399
    .line 400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    .line 412
    .line 413
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 414
    .line 415
    if-eqz v0, :cond_5

    .line 416
    .line 417
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 418
    .line 419
    .line 420
    :cond_5
    const/4 v3, 0x0

    .line 421
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 422
    .line 423
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 424
    .line 425
    if-eqz v0, :cond_6

    .line 426
    .line 427
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    .line 429
    .line 430
    :cond_6
    const/4 v3, 0x0

    .line 431
    goto :goto_2

    .line 432
    :goto_4
    :try_start_5
    const-string v3, "MobileWips::FrameworkPktSender"

    .line 433
    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    const-string v5, "sendArpS "

    .line 440
    .line 441
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    .line 457
    .line 458
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 459
    .line 460
    if-eqz v0, :cond_7

    .line 461
    .line 462
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 463
    .line 464
    .line 465
    :cond_7
    const/4 v3, 0x0

    .line 466
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 467
    .line 468
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 469
    .line 470
    if-eqz v0, :cond_8

    .line 471
    .line 472
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 473
    .line 474
    .line 475
    :cond_8
    const/4 v3, 0x0

    .line 476
    goto :goto_2

    .line 477
    :catch_2
    :goto_5
    monitor-exit p0

    .line 478
    return-object v2

    .line 479
    :goto_6
    :try_start_7
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 480
    .line 481
    if-eqz v2, :cond_9

    .line 482
    .line 483
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 484
    .line 485
    .line 486
    :cond_9
    const/4 v3, 0x0

    .line 487
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 488
    .line 489
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 490
    .line 491
    if-eqz v2, :cond_a

    .line 492
    .line 493
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 494
    .line 495
    .line 496
    :cond_a
    const/4 v3, 0x0

    .line 497
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 498
    .line 499
    :catch_3
    :try_start_8
    throw v0

    .line 500
    :goto_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 501
    throw v0
.end method

.method public sendDNSToTCP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B
    .locals 22

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    const-string v2, "sendDns "

    .line 4
    .line 5
    const-string v3, "MobileWips::FrameworkPktSender"

    .line 6
    .line 7
    move-object/from16 v4, p0

    .line 8
    .line 9
    move-object/from16 v0, p6

    .line 10
    .line 11
    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    const/4 v0, 0x3

    .line 16
    new-array v8, v0, [B

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object/from16 v6, p3

    .line 21
    .line 22
    move-object/from16 v7, p4

    .line 23
    .line 24
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->createPacketDns(I[B[B[B[BZ)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    .line 31
    .line 32
    sget v7, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 33
    .line 34
    invoke-static {v0, v7, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 47
    .line 48
    int-to-short v0, v0

    .line 49
    iget v8, v7, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 50
    .line 51
    invoke-static {v0, v8, v6}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v10, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 59
    .line 60
    .line 61
    array-length v6, v1

    .line 62
    move v8, v5

    .line 63
    :goto_0
    if-ge v8, v6, :cond_6

    .line 64
    .line 65
    aget-wide v11, v1, v8

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v13

    .line 71
    add-long v16, v13, v11

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    iget v0, v7, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 82
    .line 83
    invoke-static {v5, v0, v9}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v14, 0x0

    .line 89
    invoke-static/range {v10 .. v15}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 90
    .line 91
    .line 92
    const/16 v13, 0x5dc

    .line 93
    .line 94
    new-array v11, v13, [B

    .line 95
    .line 96
    const/4 v12, 0x2

    .line 97
    new-array v14, v12, [B

    .line 98
    .line 99
    new-array v15, v12, [B

    .line 100
    .line 101
    move-object/from16 v18, v15

    .line 102
    .line 103
    new-instance v15, Ljava/net/InetSocketAddress;

    .line 104
    .line 105
    invoke-direct {v15, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v19

    .line 112
    cmp-long v0, v19, v16

    .line 113
    .line 114
    if-gez v0, :cond_5

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    sub-long v19, v16, v19

    .line 121
    .line 122
    :try_start_2
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 123
    .line 124
    sget v12, Landroid/system/OsConstants;->SO_RCVTIMEO:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    :try_start_3
    invoke-static/range {v19 .. v20}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    invoke-static {v10, v0, v12, v13}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    move-object v12, v14

    .line 134
    const/4 v14, 0x0

    .line 135
    move-object v13, v12

    .line 136
    const/4 v12, 0x0

    .line 137
    move-object/from16 p0, v4

    .line 138
    .line 139
    move-object/from16 v21, v13

    .line 140
    .line 141
    move-object/from16 v4, v18

    .line 142
    .line 143
    const/4 v1, 0x2

    .line 144
    const/16 v13, 0x5dc

    .line 145
    .line 146
    :try_start_4
    invoke-static/range {v10 .. v15}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-lez v0, :cond_3

    .line 151
    .line 152
    const/16 v0, 0x22

    .line 153
    .line 154
    invoke-static {v11, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    .line 156
    .line 157
    const/16 v0, 0x24

    .line 158
    .line 159
    move-object/from16 v12, v21

    .line 160
    .line 161
    :try_start_5
    invoke-static {v11, v0, v12, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    invoke-static {v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const/16 v14, 0x35

    .line 169
    .line 170
    if-ne v0, v14, :cond_4

    .line 171
    .line 172
    invoke-static {v12}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    const v14, 0xfde8

    .line 177
    .line 178
    .line 179
    if-ne v0, v14, :cond_4

    .line 180
    .line 181
    move v14, v5

    .line 182
    const/16 p1, 0x1

    .line 183
    .line 184
    const/16 v18, 0x1

    .line 185
    .line 186
    :goto_2
    array-length v0, v9

    .line 187
    if-ge v14, v0, :cond_1

    .line 188
    .line 189
    add-int/lit8 v0, v14, 0x6

    .line 190
    .line 191
    aget-byte v0, v11, v0

    .line 192
    .line 193
    aget-byte v1, v9, v14

    .line 194
    .line 195
    if-eq v0, v1, :cond_0

    .line 196
    .line 197
    move/from16 v18, v5

    .line 198
    .line 199
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    const/4 v1, 0x2

    .line 202
    goto :goto_2

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    move-object v6, v10

    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :catch_0
    move-exception v0

    .line 208
    goto :goto_3

    .line 209
    :cond_1
    if-eqz v18, :cond_4

    .line 210
    .line 211
    const/16 v0, 0x2f

    .line 212
    .line 213
    aget-byte v0, v11, v0

    .line 214
    .line 215
    const/16 v1, 0x12

    .line 216
    .line 217
    if-ne v0, v1, :cond_4

    .line 218
    .line 219
    const/16 v0, 0xc

    .line 220
    .line 221
    new-array v0, v0, [B

    .line 222
    .line 223
    aget-byte v1, p5, v5

    .line 224
    .line 225
    aput-byte v1, v0, v5

    .line 226
    .line 227
    aget-byte v1, p5, p1

    .line 228
    .line 229
    aput-byte v1, v0, p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    .line 231
    if-eqz v10, :cond_2

    .line 232
    .line 233
    :try_start_6
    invoke-static {v10}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 234
    .line 235
    .line 236
    :catch_1
    :cond_2
    return-object v0

    .line 237
    :catch_2
    move-exception v0

    .line 238
    move-object/from16 v12, v21

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_3
    move-object/from16 v12, v21

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :catch_3
    move-exception v0

    .line 245
    move-object/from16 p0, v4

    .line 246
    .line 247
    move-object v12, v14

    .line 248
    move-object/from16 v4, v18

    .line 249
    .line 250
    const/16 v13, 0x5dc

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :catch_4
    move-exception v0

    .line 254
    move-object/from16 p0, v4

    .line 255
    .line 256
    move-object v12, v14

    .line 257
    move-object/from16 v4, v18

    .line 258
    .line 259
    :goto_3
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 279
    .line 280
    .line 281
    :cond_4
    :goto_4
    move-object/from16 v1, p2

    .line 282
    .line 283
    move-object/from16 v18, v4

    .line 284
    .line 285
    move-object v14, v12

    .line 286
    const/4 v12, 0x2

    .line 287
    move-object/from16 v4, p0

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :catch_5
    move-exception v0

    .line 292
    move-object v6, v10

    .line 293
    goto :goto_5

    .line 294
    :cond_5
    move-object/from16 p0, v4

    .line 295
    .line 296
    add-int/lit8 v8, v8, 0x1

    .line 297
    .line 298
    move-object/from16 v1, p2

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_6
    if-eqz v10, :cond_8

    .line 303
    .line 304
    :try_start_8
    invoke-static {v10}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :catchall_1
    move-exception v0

    .line 309
    goto :goto_7

    .line 310
    :catch_6
    move-exception v0

    .line 311
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    instance-of v1, v0, Landroid/system/ErrnoException;

    .line 334
    .line 335
    if-eqz v1, :cond_7

    .line 336
    .line 337
    check-cast v0, Landroid/system/ErrnoException;

    .line 338
    .line 339
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 340
    .line 341
    sget v0, Landroid/system/OsConstants;->EAGAIN:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 342
    .line 343
    :cond_7
    if-eqz v6, :cond_8

    .line 344
    .line 345
    :try_start_a
    invoke-static {v6}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 346
    .line 347
    .line 348
    :catch_7
    :cond_8
    :goto_6
    new-array v0, v5, [B

    .line 349
    .line 350
    return-object v0

    .line 351
    :goto_7
    if-eqz v6, :cond_9

    .line 352
    .line 353
    :try_start_b
    invoke-static {v6}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 354
    .line 355
    .line 356
    :catch_8
    :cond_9
    throw v0
.end method

.method public sendDhcp(Landroid/net/LinkProperties;I[BILjava/lang/String;)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v7, p5

    .line 6
    .line 7
    const-string v8, "sendDhcp "

    .line 8
    .line 9
    const-string v9, "MobileWips::FrameworkPktSender"

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/4 v11, 0x0

    .line 13
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    .line 14
    .line 15
    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 16
    .line 17
    invoke-static {v2, v3, v11}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 32
    .line 33
    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 34
    .line 35
    int-to-short v3, v3

    .line 36
    iget v4, v12, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 37
    .line 38
    invoke-static {v3, v4, v10}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 54
    .line 55
    const/16 v2, 0x64

    .line 56
    .line 57
    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    const/4 v13, -0x1

    .line 60
    if-eq v0, v13, :cond_0

    .line 61
    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    :try_start_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    invoke-virtual {v7, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_0
    move-object v14, v2

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :catch_1
    move-exception v0

    .line 79
    goto/16 :goto_a

    .line 80
    .line 81
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    move/from16 v4, p2

    .line 86
    .line 87
    int-to-long v4, v4

    .line 88
    add-long v15, v2, v4

    .line 89
    .line 90
    const/16 v2, 0x5dc

    .line 91
    .line 92
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/16 v3, 0xe

    .line 97
    .line 98
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/16 v4, 0x14

    .line 103
    .line 104
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/16 v5, 0x8

    .line 109
    .line 110
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/16 v6, 0xf5

    .line 115
    .line 116
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 121
    .line 122
    .line 123
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 124
    .line 125
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    iget-object v10, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    .line 153
    .line 154
    iget-object v13, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    :try_start_3
    sget-object v11, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    .line 157
    .line 158
    invoke-direct {v1, v3, v10, v13, v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 159
    .line 160
    .line 161
    move-object v10, v5

    .line 162
    sget-object v5, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_SRC_ADDR:[B

    .line 163
    .line 164
    move-object v11, v6

    .line 165
    sget-object v6, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_DST_ADDR:[B

    .line 166
    .line 167
    move-object v13, v3

    .line 168
    const/16 v3, 0x110

    .line 169
    .line 170
    move-object/from16 v18, v2

    .line 171
    .line 172
    move-object v2, v4

    .line 173
    const/16 v4, 0x11

    .line 174
    .line 175
    move-object v7, v11

    .line 176
    move-object v11, v10

    .line 177
    move-object/from16 v10, v18

    .line 178
    .line 179
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    .line 180
    .line 181
    .line 182
    const/16 v5, 0xfc

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    const/16 v3, 0x44

    .line 186
    .line 187
    const/16 v4, 0x43

    .line 188
    .line 189
    move-object v1, v11

    .line 190
    move-object v11, v2

    .line 191
    move-object v2, v1

    .line 192
    move-object/from16 v1, p0

    .line 193
    .line 194
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeUDP(Ljava/nio/ByteBuffer;IIII)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 198
    .line 199
    invoke-direct {v1, v7, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeDHCP(Ljava/nio/ByteBuffer;[B)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 221
    .line 222
    .line 223
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 224
    .line 225
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 226
    .line 227
    .line 228
    move-result-object v19

    .line 229
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    .line 230
    .line 231
    .line 232
    move-result v21

    .line 233
    iget v3, v12, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 234
    .line 235
    iget-object v4, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    :try_start_4
    invoke-static {v5, v3, v4}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 239
    .line 240
    .line 241
    move-result-object v23
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    const/16 v20, 0x0

    .line 243
    .line 244
    const/16 v22, 0x0

    .line 245
    .line 246
    move-object/from16 v18, v2

    .line 247
    .line 248
    :try_start_5
    invoke-static/range {v18 .. v23}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 249
    .line 250
    .line 251
    const/16 v2, 0x5dc

    .line 252
    .line 253
    new-array v3, v2, [B

    .line 254
    .line 255
    const/4 v4, 0x4

    .line 256
    new-array v5, v4, [B

    .line 257
    .line 258
    new-instance v6, Ljava/net/InetSocketAddress;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    .line 260
    const/4 v7, 0x0

    .line 261
    :try_start_6
    invoke-direct {v6, v7}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 262
    .line 263
    .line 264
    const/4 v7, 0x0

    .line 265
    :goto_1
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 266
    .line 267
    .line 268
    move-result-wide v10

    .line 269
    cmp-long v10, v10, v15

    .line 270
    .line 271
    if-gez v10, :cond_8

    .line 272
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 274
    .line 275
    .line 276
    move-result-wide v10

    .line 277
    sub-long v10, v15, v10

    .line 278
    .line 279
    iget-object v12, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 280
    .line 281
    sget v13, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 282
    .line 283
    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 284
    .line 285
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-static {v12, v13, v2, v10}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 293
    .line 294
    const/16 v28, 0x0

    .line 295
    .line 296
    const/16 v26, 0x0

    .line 297
    .line 298
    move-object/from16 v24, v2

    .line 299
    .line 300
    move-object/from16 v25, v3

    .line 301
    .line 302
    move-object/from16 v29, v6

    .line 303
    .line 304
    const/16 v27, 0x5dc

    .line 305
    .line 306
    invoke-static/range {v24 .. v29}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    .line 307
    .line 308
    .line 309
    move/from16 v2, v27

    .line 310
    .line 311
    const/16 v6, 0x2e

    .line 312
    .line 313
    aget-byte v6, v3, v6

    .line 314
    .line 315
    sget-object v10, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TRANSACTION_ID:[B

    .line 316
    .line 317
    const/16 v17, 0x0

    .line 318
    .line 319
    aget-byte v11, v10, v17

    .line 320
    .line 321
    if-ne v6, v11, :cond_1

    .line 322
    .line 323
    const/16 v6, 0x2f

    .line 324
    .line 325
    aget-byte v6, v3, v6

    .line 326
    .line 327
    const/4 v11, 0x1

    .line 328
    aget-byte v12, v10, v11

    .line 329
    .line 330
    if-ne v6, v12, :cond_1

    .line 331
    .line 332
    const/16 v6, 0x30

    .line 333
    .line 334
    aget-byte v6, v3, v6

    .line 335
    .line 336
    const/4 v12, 0x2

    .line 337
    aget-byte v13, v10, v12

    .line 338
    .line 339
    if-ne v6, v13, :cond_1

    .line 340
    .line 341
    const/16 v6, 0x31

    .line 342
    .line 343
    aget-byte v6, v3, v6

    .line 344
    .line 345
    const/4 v13, 0x3

    .line 346
    aget-byte v10, v10, v13

    .line 347
    .line 348
    if-ne v6, v10, :cond_1

    .line 349
    .line 350
    const/16 v6, 0x2a

    .line 351
    .line 352
    aget-byte v6, v3, v6

    .line 353
    .line 354
    if-ne v6, v12, :cond_1

    .line 355
    .line 356
    const/16 v6, 0x11a

    .line 357
    .line 358
    :goto_2
    if-ge v6, v2, :cond_1

    .line 359
    .line 360
    aget-byte v10, v3, v6

    .line 361
    .line 362
    and-int/lit16 v12, v10, 0xff

    .line 363
    .line 364
    move/from16 p2, v11

    .line 365
    .line 366
    const/16 v11, 0xff

    .line 367
    .line 368
    if-eq v12, v11, :cond_1

    .line 369
    .line 370
    if-nez v10, :cond_2

    .line 371
    .line 372
    :cond_1
    const/4 v11, -0x1

    .line 373
    const/4 v12, 0x0

    .line 374
    goto :goto_5

    .line 375
    :cond_2
    const/4 v11, -0x1

    .line 376
    if-ne v10, v13, :cond_3

    .line 377
    .line 378
    if-ne v0, v11, :cond_3

    .line 379
    .line 380
    add-int/lit8 v6, v6, 0x2

    .line 381
    .line 382
    const/4 v12, 0x0

    .line 383
    invoke-static {v3, v6, v5, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    .line 385
    .line 386
    invoke-static {v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->ipToInt([B)I

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    move v7, v6

    .line 391
    goto :goto_5

    .line 392
    :catch_2
    move-exception v0

    .line 393
    move v11, v7

    .line 394
    goto/16 :goto_8

    .line 395
    .line 396
    :catch_3
    move-exception v0

    .line 397
    move v11, v7

    .line 398
    goto/16 :goto_a

    .line 399
    .line 400
    :cond_3
    const/4 v12, 0x0

    .line 401
    if-ne v10, v0, :cond_6

    .line 402
    .line 403
    if-eqz p5, :cond_6

    .line 404
    .line 405
    move v10, v12

    .line 406
    :goto_3
    array-length v13, v14

    .line 407
    if-ge v10, v13, :cond_5

    .line 408
    .line 409
    add-int/lit8 v13, v6, 0x2

    .line 410
    .line 411
    add-int/2addr v13, v10

    .line 412
    aget-byte v13, v3, v13

    .line 413
    .line 414
    aget-byte v4, v14, v10

    .line 415
    .line 416
    if-eq v13, v4, :cond_4

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 420
    .line 421
    const/4 v4, 0x4

    .line 422
    goto :goto_3

    .line 423
    :cond_5
    :goto_4
    move/from16 v7, p2

    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 427
    .line 428
    if-lt v6, v2, :cond_7

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_7
    aget-byte v4, v3, v6
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 432
    .line 433
    add-int/2addr v6, v4

    .line 434
    add-int/lit8 v6, v6, 0x1

    .line 435
    .line 436
    move/from16 v11, p2

    .line 437
    .line 438
    const/4 v4, 0x4

    .line 439
    goto :goto_2

    .line 440
    :goto_5
    move-object/from16 v6, v29

    .line 441
    .line 442
    const/4 v4, 0x4

    .line 443
    goto/16 :goto_1

    .line 444
    .line 445
    :cond_8
    :try_start_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 446
    .line 447
    if-eqz v0, :cond_9

    .line 448
    .line 449
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 450
    .line 451
    .line 452
    :cond_9
    const/4 v2, 0x0

    .line 453
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    .line 454
    .line 455
    goto/16 :goto_b

    .line 456
    .line 457
    :catch_4
    move-exception v0

    .line 458
    move v12, v7

    .line 459
    :goto_6
    move v11, v12

    .line 460
    goto :goto_8

    .line 461
    :catch_5
    move-exception v0

    .line 462
    move v12, v7

    .line 463
    :goto_7
    move v11, v12

    .line 464
    goto :goto_a

    .line 465
    :catch_6
    move-exception v0

    .line 466
    const/4 v12, 0x0

    .line 467
    goto :goto_6

    .line 468
    :catch_7
    move-exception v0

    .line 469
    const/4 v12, 0x0

    .line 470
    goto :goto_7

    .line 471
    :catch_8
    move-exception v0

    .line 472
    move v12, v5

    .line 473
    goto :goto_6

    .line 474
    :catch_9
    move-exception v0

    .line 475
    move v12, v5

    .line 476
    goto :goto_7

    .line 477
    :catch_a
    move-exception v0

    .line 478
    move v12, v11

    .line 479
    goto :goto_8

    .line 480
    :catch_b
    move-exception v0

    .line 481
    move v12, v11

    .line 482
    goto :goto_a

    .line 483
    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    instance-of v2, v0, Landroid/system/ErrnoException;

    .line 506
    .line 507
    if-eqz v2, :cond_a

    .line 508
    .line 509
    check-cast v0, Landroid/system/ErrnoException;

    .line 510
    .line 511
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 512
    .line 513
    sget v0, Landroid/system/OsConstants;->EAGAIN:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 514
    .line 515
    :cond_a
    :try_start_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 516
    .line 517
    if-eqz v0, :cond_b

    .line 518
    .line 519
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 520
    .line 521
    .line 522
    :cond_b
    const/4 v2, 0x0

    .line 523
    :goto_9
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 524
    .line 525
    :catch_c
    move v7, v11

    .line 526
    goto :goto_b

    .line 527
    :goto_a
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 547
    .line 548
    .line 549
    :try_start_c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 550
    .line 551
    if-eqz v0, :cond_c

    .line 552
    .line 553
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 554
    .line 555
    .line 556
    :cond_c
    const/4 v2, 0x0

    .line 557
    goto :goto_9

    .line 558
    :catch_d
    :goto_b
    return v7

    .line 559
    :goto_c
    :try_start_d
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 560
    .line 561
    if-eqz v2, :cond_d

    .line 562
    .line 563
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 564
    .line 565
    .line 566
    :cond_d
    const/4 v2, 0x0

    .line 567
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    .line 568
    .line 569
    :catch_e
    throw v0
.end method

.method public sendDns(Landroid/net/LinkProperties;[B[BLjava/lang/String;[B[JZ)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p7, :cond_0

    .line 2
    .line 3
    move-object v0, p3

    .line 4
    move-object p3, p2

    .line 5
    move-object p2, p6

    .line 6
    move-object p6, p4

    .line 7
    move-object p4, v0

    .line 8
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDnsToUDP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    move-object v0, p3

    .line 14
    move-object p3, p2

    .line 15
    move-object p2, p6

    .line 16
    move-object p6, p4

    .line 17
    move-object p4, v0

    .line 18
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDNSToTCP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public sendDnsToUDP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const-string v6, "sendDns "

    .line 5
    .line 6
    const-string v7, "MobileWips::FrameworkPktSender"

    .line 7
    .line 8
    const/16 v0, -0xbe

    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    :try_start_0
    new-instance v9, Ljava/net/DatagramSocket;

    .line 15
    .line 16
    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_c

    .line 17
    .line 18
    .line 19
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalPort()I

    .line 20
    .line 21
    .line 22
    move-result v11

    .line 23
    move-object/from16 v10, p0

    .line 24
    .line 25
    move-object/from16 v0, p6

    .line 26
    .line 27
    invoke-direct {v10, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v15

    .line 31
    const/16 v16, 0x1

    .line 32
    .line 33
    move-object/from16 v12, p3

    .line 34
    .line 35
    move-object/from16 v13, p4

    .line 36
    .line 37
    move-object/from16 v14, p5

    .line 38
    .line 39
    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->createPacketDns(I[B[B[B[BZ)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    const/16 v12, 0x5dc

    .line 44
    .line 45
    new-array v13, v12, [B

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    :try_start_1
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    .line 49
    .line 50
    const/16 v22, 0x2a

    .line 51
    .line 52
    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 53
    .line 54
    invoke-static {v0, v2, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 58
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/16 v23, 0x1

    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 69
    .line 70
    int-to-short v0, v0

    .line 71
    iget v12, v5, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 72
    .line 73
    invoke-static {v0, v12, v14}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 78
    .line 79
    .line 80
    array-length v12, v1

    .line 81
    move v14, v4

    .line 82
    :goto_0
    if-ge v14, v12, :cond_7

    .line 83
    .line 84
    aget-wide v16, v1, v14

    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v18

    .line 90
    add-long v24, v18, v16

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 93
    .line 94
    .line 95
    move-result-object v17

    .line 96
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    .line 97
    .line 98
    .line 99
    move-result v19

    .line 100
    iget v0, v5, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 101
    .line 102
    invoke-static {v4, v0, v15}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 103
    .line 104
    .line 105
    move-result-object v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    move-object/from16 v16, v2

    .line 111
    .line 112
    :try_start_3
    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_4
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 116
    .line 117
    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v16

    .line 124
    cmp-long v0, v16, v24

    .line 125
    .line 126
    if-gez v0, :cond_6

    .line 127
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 129
    .line 130
    .line 131
    move-result-wide v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    sub-long v16, v24, v16

    .line 133
    .line 134
    :try_start_5
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    .line 136
    move/from16 v26, v4

    .line 137
    .line 138
    :try_start_6
    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 139
    .line 140
    invoke-static/range {v16 .. v17}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v2, v0, v4, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 145
    .line 146
    .line 147
    const/16 v20, 0x0

    .line 148
    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    move-object/from16 v16, v2

    .line 152
    .line 153
    move-object/from16 v21, v3

    .line 154
    .line 155
    move-object/from16 v17, v13

    .line 156
    .line 157
    const/16 v19, 0x5dc

    .line 158
    .line 159
    :try_start_7
    invoke-static/range {v16 .. v21}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const/16 v1, 0x2c

    .line 164
    .line 165
    if-le v0, v1, :cond_4

    .line 166
    .line 167
    const/16 v1, 0x22

    .line 168
    .line 169
    aget-byte v1, v17, v1

    .line 170
    .line 171
    const/16 v2, 0x23

    .line 172
    .line 173
    aget-byte v2, v17, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 174
    .line 175
    const/4 v3, 0x2

    .line 176
    :try_start_8
    new-array v4, v3, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 177
    .line 178
    :try_start_9
    aput-byte v1, v4, v26

    .line 179
    .line 180
    aput-byte v2, v4, v23

    .line 181
    .line 182
    invoke-static {v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    const/16 v2, 0x35

    .line 187
    .line 188
    if-ne v1, v2, :cond_4

    .line 189
    .line 190
    const/16 v1, 0x24

    .line 191
    .line 192
    aget-byte v1, v17, v1

    .line 193
    .line 194
    const/16 v2, 0x25

    .line 195
    .line 196
    aget-byte v2, v17, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 197
    .line 198
    const/4 v3, 0x2

    .line 199
    :try_start_a
    new-array v4, v3, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 200
    .line 201
    :try_start_b
    aput-byte v1, v4, v26

    .line 202
    .line 203
    aput-byte v2, v4, v23

    .line 204
    .line 205
    invoke-static {v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-ne v1, v11, :cond_4

    .line 210
    .line 211
    move/from16 v2, v23

    .line 212
    .line 213
    move/from16 v1, v26

    .line 214
    .line 215
    :goto_2
    array-length v3, v15

    .line 216
    if-ge v1, v3, :cond_1

    .line 217
    .line 218
    add-int/lit8 v3, v1, 0x6

    .line 219
    .line 220
    aget-byte v3, v17, v3

    .line 221
    .line 222
    aget-byte v4, v15, v1

    .line 223
    .line 224
    if-eq v3, v4, :cond_0

    .line 225
    .line 226
    move/from16 v2, v26

    .line 227
    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    :goto_3
    move-object/from16 v14, v16

    .line 233
    .line 234
    goto/16 :goto_d

    .line 235
    .line 236
    :catch_0
    move-exception v0

    .line 237
    const/4 v4, 0x2

    .line 238
    goto :goto_6

    .line 239
    :cond_1
    aget-byte v1, v17, v22

    .line 240
    .line 241
    const/16 v3, 0x2b

    .line 242
    .line 243
    aget-byte v3, v17, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 244
    .line 245
    const/4 v4, 0x2

    .line 246
    :try_start_c
    new-array v13, v4, [B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 247
    .line 248
    :try_start_d
    aput-byte v1, v13, v26

    .line 249
    .line 250
    aput-byte v3, v13, v23

    .line 251
    .line 252
    invoke-static {v13}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v2, :cond_4

    .line 257
    .line 258
    aget-byte v2, p5, v26

    .line 259
    .line 260
    aget-byte v3, p5, v23
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 261
    .line 262
    const/4 v4, 0x2

    .line 263
    :try_start_e
    new-array v13, v4, [B

    .line 264
    .line 265
    aput-byte v2, v13, v26

    .line 266
    .line 267
    aput-byte v3, v13, v23

    .line 268
    .line 269
    invoke-static {v13}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-ne v2, v1, :cond_5

    .line 274
    .line 275
    add-int/lit8 v0, v0, -0x2a

    .line 276
    .line 277
    new-array v1, v0, [B

    .line 278
    .line 279
    move/from16 v2, v26

    .line 280
    .line 281
    :goto_4
    if-ge v2, v0, :cond_2

    .line 282
    .line 283
    add-int/lit8 v3, v2, 0x2a

    .line 284
    .line 285
    aget-byte v3, v17, v3

    .line 286
    .line 287
    aput-byte v3, v1, v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 288
    .line 289
    add-int/lit8 v2, v2, 0x1

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :catch_1
    move-exception v0

    .line 293
    goto :goto_6

    .line 294
    :cond_2
    :try_start_f
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 295
    .line 296
    .line 297
    if-eqz v16, :cond_3

    .line 298
    .line 299
    invoke-static/range {v16 .. v16}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 300
    .line 301
    .line 302
    :cond_3
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 303
    .line 304
    .line 305
    :catch_2
    return-object v1

    .line 306
    :cond_4
    const/4 v4, 0x2

    .line 307
    goto :goto_7

    .line 308
    :catch_3
    move-exception v0

    .line 309
    move v4, v3

    .line 310
    goto :goto_6

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object/from16 v16, v2

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :catch_4
    move-exception v0

    .line 316
    move-object/from16 v16, v2

    .line 317
    .line 318
    move-object/from16 v21, v3

    .line 319
    .line 320
    :goto_5
    move-object/from16 v17, v13

    .line 321
    .line 322
    const/4 v4, 0x2

    .line 323
    const/16 v19, 0x5dc

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :catch_5
    move-exception v0

    .line 327
    move-object/from16 v16, v2

    .line 328
    .line 329
    move-object/from16 v21, v3

    .line 330
    .line 331
    move/from16 v26, v4

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :goto_6
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 354
    .line 355
    .line 356
    :cond_5
    :goto_7
    move-object/from16 v1, p2

    .line 357
    .line 358
    move-object/from16 v2, v16

    .line 359
    .line 360
    move-object/from16 v13, v17

    .line 361
    .line 362
    move-object/from16 v3, v21

    .line 363
    .line 364
    move/from16 v4, v26

    .line 365
    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :catch_6
    move-exception v0

    .line 369
    :goto_8
    move-object/from16 v14, v16

    .line 370
    .line 371
    goto :goto_b

    .line 372
    :catch_7
    move-exception v0

    .line 373
    move-object/from16 v16, v2

    .line 374
    .line 375
    :goto_9
    move/from16 v26, v4

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_6
    move-object/from16 v16, v2

    .line 379
    .line 380
    move/from16 v26, v4

    .line 381
    .line 382
    move-object/from16 v17, v13

    .line 383
    .line 384
    const/4 v4, 0x2

    .line 385
    const/16 v19, 0x5dc

    .line 386
    .line 387
    add-int/lit8 v14, v14, 0x1

    .line 388
    .line 389
    move-object/from16 v1, p2

    .line 390
    .line 391
    move/from16 v4, v26

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :catch_8
    move-exception v0

    .line 396
    goto :goto_9

    .line 397
    :cond_7
    move-object/from16 v16, v2

    .line 398
    .line 399
    move/from16 v26, v4

    .line 400
    .line 401
    :try_start_11
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 402
    .line 403
    .line 404
    if-eqz v16, :cond_8

    .line 405
    .line 406
    invoke-static/range {v16 .. v16}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 407
    .line 408
    .line 409
    :cond_8
    :goto_a
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 410
    .line 411
    .line 412
    :catch_9
    move/from16 v1, v26

    .line 413
    .line 414
    goto :goto_c

    .line 415
    :catchall_2
    move-exception v0

    .line 416
    goto :goto_d

    .line 417
    :catch_a
    move-exception v0

    .line 418
    move/from16 v26, v4

    .line 419
    .line 420
    :goto_b
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 440
    .line 441
    .line 442
    :try_start_13
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 443
    .line 444
    .line 445
    if-eqz v14, :cond_8

    .line 446
    .line 447
    invoke-static {v14}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 448
    .line 449
    .line 450
    goto :goto_a

    .line 451
    :goto_c
    new-array v0, v1, [B

    .line 452
    .line 453
    return-object v0

    .line 454
    :goto_d
    :try_start_14
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 455
    .line 456
    .line 457
    if-eqz v14, :cond_9

    .line 458
    .line 459
    invoke-static {v14}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 460
    .line 461
    .line 462
    :cond_9
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 463
    .line 464
    .line 465
    :catch_b
    throw v0

    .line 466
    :catch_c
    move-exception v0

    .line 467
    new-instance v1, Ljava/io/IOException;

    .line 468
    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v3, "SocketException of DatagramSocket. Message: "

    .line 472
    .line 473
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v1
.end method

.method public sendIcmp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v7, "sendIcmp "

    .line 4
    .line 5
    const-string v8, "MobileWips::FrameworkPktSender"

    .line 6
    .line 7
    new-instance v9, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    .line 14
    .line 15
    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    invoke-static {v0, v2, v11}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 33
    .line 34
    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 35
    .line 36
    int-to-short v3, v3

    .line 37
    iget v4, v0, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 38
    .line 39
    invoke-static {v3, v4, v10}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 55
    .line 56
    move-object/from16 v2, p5

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    move/from16 v4, p2

    .line 67
    .line 68
    int-to-long v4, v4

    .line 69
    add-long v13, v2, v4

    .line 70
    .line 71
    const/16 v15, 0x5dc

    .line 72
    .line 73
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/16 v3, 0xe

    .line 78
    .line 79
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/16 v4, 0x14

    .line 84
    .line 85
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/16 v5, 0x40

    .line 90
    .line 91
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    .line 97
    .line 98
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    iget-object v6, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 122
    .line 123
    sget-object v10, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    .line 124
    .line 125
    invoke-direct {v1, v3, v12, v6, v10}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 126
    .line 127
    .line 128
    move-object v6, v3

    .line 129
    const/16 v3, 0x54

    .line 130
    .line 131
    move-object v10, v2

    .line 132
    move-object v2, v4

    .line 133
    const/4 v4, 0x1

    .line 134
    move-object v11, v5

    .line 135
    move-object v15, v6

    .line 136
    move-object/from16 v6, p3

    .line 137
    .line 138
    move-object/from16 v5, p4

    .line 139
    .line 140
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeICMP(Ljava/nio/ByteBuffer;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 161
    .line 162
    .line 163
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 166
    .line 167
    .line 168
    move-result-object v17

    .line 169
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    .line 170
    .line 171
    .line 172
    move-result v19

    .line 173
    iget v0, v0, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-static {v3, v0, v12}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 177
    .line 178
    .line 179
    move-result-object v21

    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    const/16 v20, 0x0

    .line 183
    .line 184
    move-object/from16 v16, v2

    .line 185
    .line 186
    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 187
    .line 188
    .line 189
    const/16 v0, 0x5dc

    .line 190
    .line 191
    new-array v2, v0, [B

    .line 192
    .line 193
    const/4 v0, 0x6

    .line 194
    new-array v3, v0, [B

    .line 195
    .line 196
    new-array v4, v0, [B

    .line 197
    .line 198
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 199
    .line 200
    .line 201
    move-result-wide v5

    .line 202
    cmp-long v5, v5, v13

    .line 203
    .line 204
    if-gez v5, :cond_2

    .line 205
    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 207
    .line 208
    .line 209
    move-result-wide v5

    .line 210
    sub-long v5, v13, v5

    .line 211
    .line 212
    iget-object v10, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 213
    .line 214
    sget v11, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 215
    .line 216
    sget v12, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 217
    .line 218
    invoke-static {v5, v6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-static {v10, v11, v12, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 223
    .line 224
    .line 225
    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 226
    .line 227
    const/4 v6, 0x0

    .line 228
    const/16 v10, 0x5dc

    .line 229
    .line 230
    invoke-static {v5, v2, v6, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 231
    .line 232
    .line 233
    const/16 v5, 0x26

    .line 234
    .line 235
    aget-byte v5, v2, v5

    .line 236
    .line 237
    sget-object v11, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFIER:[B

    .line 238
    .line 239
    aget-byte v12, v11, v6

    .line 240
    .line 241
    if-ne v5, v12, :cond_1

    .line 242
    .line 243
    const/16 v5, 0x27

    .line 244
    .line 245
    aget-byte v5, v2, v5

    .line 246
    .line 247
    const/4 v6, 0x1

    .line 248
    aget-byte v11, v11, v6

    .line 249
    .line 250
    if-ne v5, v11, :cond_1

    .line 251
    .line 252
    const/16 v5, 0x28

    .line 253
    .line 254
    aget-byte v5, v2, v5

    .line 255
    .line 256
    sget-object v11, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SEQUENCE_NUMBER:[B

    .line 257
    .line 258
    const/4 v12, 0x0

    .line 259
    aget-byte v15, v11, v12

    .line 260
    .line 261
    if-ne v5, v15, :cond_0

    .line 262
    .line 263
    const/16 v5, 0x29

    .line 264
    .line 265
    aget-byte v5, v2, v5

    .line 266
    .line 267
    aget-byte v6, v11, v6

    .line 268
    .line 269
    if-ne v5, v6, :cond_0

    .line 270
    .line 271
    invoke-static {v2, v12, v4, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v0, v3, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    .line 276
    .line 277
    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 278
    .line 279
    invoke-static {v5, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->compareByteArray([B[B)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_0

    .line 284
    .line 285
    invoke-static {v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->macToString([B)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    if-eqz v5, :cond_0

    .line 290
    .line 291
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    const/16 v0, 0x16

    .line 295
    .line 296
    aget-byte v0, v2, v0

    .line 297
    .line 298
    and-int/lit16 v0, v0, 0xff

    .line 299
    .line 300
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    goto :goto_6

    .line 310
    :catch_0
    move-exception v0

    .line 311
    goto :goto_2

    .line 312
    :catch_1
    move-exception v0

    .line 313
    goto :goto_4

    .line 314
    :cond_1
    const/4 v12, 0x0

    .line 315
    goto :goto_0

    .line 316
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 317
    .line 318
    if-eqz v0, :cond_3

    .line 319
    .line 320
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 321
    .line 322
    .line 323
    :cond_3
    const/4 v2, 0x0

    .line 324
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 325
    .line 326
    return-object v9

    .line 327
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .line 348
    .line 349
    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 350
    .line 351
    if-eqz v0, :cond_4

    .line 352
    .line 353
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 354
    .line 355
    .line 356
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .line 357
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :goto_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 380
    .line 381
    .line 382
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 383
    .line 384
    if-eqz v0, :cond_4

    .line 385
    .line 386
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :catch_2
    :goto_5
    return-object v9

    .line 391
    :goto_6
    :try_start_6
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 392
    .line 393
    if-eqz v2, :cond_5

    .line 394
    .line 395
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 396
    .line 397
    .line 398
    :cond_5
    const/4 v2, 0x0

    .line 399
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 400
    .line 401
    :catch_3
    throw v0
.end method

.method public sendTcp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v6, "sendDns "

    .line 4
    .line 5
    const-string v7, "MobileWips::FrameworkPktSender"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    .line 10
    .line 11
    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 12
    .line 13
    invoke-static {v2, v3, v8}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 26
    .line 27
    int-to-short v2, v2

    .line 28
    iget v3, v10, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 29
    .line 30
    invoke-static {v2, v3, v1}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v9, v1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 46
    .line 47
    move-object/from16 v1, p5

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    move/from16 v3, p2

    .line 58
    .line 59
    int-to-long v3, v3

    .line 60
    add-long v12, v1, v3

    .line 61
    .line 62
    const/16 v1, 0x5dc

    .line 63
    .line 64
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    const/16 v1, 0xe

    .line 69
    .line 70
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v15

    .line 74
    const/16 v1, 0x14

    .line 75
    .line 76
    move v2, v1

    .line 77
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/16 v3, 0x20

    .line 86
    .line 87
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 92
    .line 93
    .line 94
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    .line 123
    iget-object v4, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 124
    .line 125
    sget-object v5, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    .line 126
    .line 127
    invoke-direct {v0, v15, v11, v4, v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 128
    .line 129
    .line 130
    move-object v4, v2

    .line 131
    const/16 v2, 0x28

    .line 132
    .line 133
    move-object v5, v3

    .line 134
    const/4 v3, 0x6

    .line 135
    move-object v8, v4

    .line 136
    move-object/from16 v16, v5

    .line 137
    .line 138
    move-object/from16 v5, p3

    .line 139
    .line 140
    move-object/from16 v4, p4

    .line 141
    .line 142
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 143
    .line 144
    .line 145
    const/4 v4, 0x6

    .line 146
    const/16 v5, 0x14

    .line 147
    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    move-object/from16 v3, p3

    .line 151
    .line 152
    move-object/from16 v2, p4

    .line 153
    .line 154
    move-object/from16 v17, v9

    .line 155
    .line 156
    move-object v9, v1

    .line 157
    move-object/from16 v1, v16

    .line 158
    .line 159
    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makePsuedoHeader(Ljava/nio/ByteBuffer;[B[BII)V

    .line 160
    .line 161
    .line 162
    const/16 v2, 0x50

    .line 163
    .line 164
    invoke-direct {v0, v8, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeTCP(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iget v3, v10, Lcom/android/net/module/util/InterfaceParams;->index:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    :try_start_4
    invoke-static {v4, v3, v11}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    .line 196
    .line 197
    .line 198
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 199
    const/4 v4, 0x0

    .line 200
    const/4 v5, 0x0

    .line 201
    move-object/from16 p1, v0

    .line 202
    .line 203
    move/from16 p3, v1

    .line 204
    .line 205
    move-object/from16 p5, v3

    .line 206
    .line 207
    move/from16 p2, v4

    .line 208
    .line 209
    move/from16 p4, v5

    .line 210
    .line 211
    move-object/from16 p0, v17

    .line 212
    .line 213
    :try_start_5
    invoke-static/range {p0 .. p5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    .line 215
    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    const/16 v0, 0x5dc

    .line 219
    .line 220
    :try_start_6
    new-array v3, v0, [B

    .line 221
    .line 222
    const/4 v4, 0x2

    .line 223
    new-array v5, v4, [B

    .line 224
    .line 225
    new-array v8, v4, [B

    .line 226
    .line 227
    new-instance v9, Ljava/net/InetSocketAddress;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    :try_start_7
    invoke-direct {v9, v10}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    .line 232
    .line 233
    const/4 v10, 0x0

    .line 234
    :cond_0
    :goto_0
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 235
    .line 236
    .line 237
    move-result-wide v14

    .line 238
    cmp-long v11, v14, v12

    .line 239
    .line 240
    if-gez v11, :cond_1

    .line 241
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 243
    .line 244
    .line 245
    move-result-wide v14

    .line 246
    sub-long v14, v12, v14

    .line 247
    .line 248
    sget v11, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 249
    .line 250
    sget v0, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 251
    .line 252
    invoke-static {v14, v15}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    invoke-static {v1, v11, v0, v14}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    const/4 v11, 0x0

    .line 261
    move/from16 p4, v0

    .line 262
    .line 263
    move-object/from16 p0, v1

    .line 264
    .line 265
    move-object/from16 p1, v3

    .line 266
    .line 267
    move-object/from16 p5, v9

    .line 268
    .line 269
    move/from16 p2, v11

    .line 270
    .line 271
    const/16 p3, 0x5dc

    .line 272
    .line 273
    :try_start_9
    invoke-static/range {p0 .. p5}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 274
    .line 275
    .line 276
    move/from16 v0, p3

    .line 277
    .line 278
    const/16 v11, 0x22

    .line 279
    .line 280
    const/4 v14, 0x0

    .line 281
    :try_start_a
    invoke-static {v3, v11, v8, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    .line 283
    .line 284
    const/16 v11, 0x24

    .line 285
    .line 286
    invoke-static {v3, v11, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    .line 288
    .line 289
    invoke-static {v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-ne v11, v2, :cond_0

    .line 294
    .line 295
    invoke-static {v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    .line 296
    .line 297
    .line 298
    move-result v11

    .line 299
    const v15, 0xfde8

    .line 300
    .line 301
    .line 302
    if-ne v11, v15, :cond_0

    .line 303
    .line 304
    const/16 v11, 0x2f

    .line 305
    .line 306
    aget-byte v11, v3, v11
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 307
    .line 308
    const/16 v15, 0x12

    .line 309
    .line 310
    if-ne v11, v15, :cond_0

    .line 311
    .line 312
    const/4 v10, 0x1

    .line 313
    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    goto/16 :goto_b

    .line 316
    .line 317
    :catch_0
    move-exception v0

    .line 318
    :goto_1
    move v8, v10

    .line 319
    goto/16 :goto_7

    .line 320
    .line 321
    :catch_1
    move-exception v0

    .line 322
    :goto_2
    move v8, v10

    .line 323
    goto/16 :goto_9

    .line 324
    .line 325
    :catchall_1
    move-exception v0

    .line 326
    move-object/from16 v1, p0

    .line 327
    .line 328
    goto/16 :goto_b

    .line 329
    .line 330
    :catch_2
    move-exception v0

    .line 331
    move-object/from16 v1, p0

    .line 332
    .line 333
    goto :goto_1

    .line 334
    :catch_3
    move-exception v0

    .line 335
    move-object/from16 v1, p0

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_1
    if-eqz v1, :cond_4

    .line 339
    .line 340
    :try_start_b
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15

    .line 341
    .line 342
    .line 343
    goto/16 :goto_a

    .line 344
    .line 345
    :catch_4
    move-exception v0

    .line 346
    move v14, v10

    .line 347
    :goto_3
    move v8, v14

    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :catch_5
    move-exception v0

    .line 351
    move v14, v10

    .line 352
    :goto_4
    move v8, v14

    .line 353
    goto/16 :goto_9

    .line 354
    .line 355
    :catch_6
    move-exception v0

    .line 356
    :goto_5
    const/4 v14, 0x0

    .line 357
    goto :goto_3

    .line 358
    :catch_7
    move-exception v0

    .line 359
    :goto_6
    const/4 v14, 0x0

    .line 360
    goto :goto_4

    .line 361
    :catch_8
    move-exception v0

    .line 362
    const/4 v14, 0x0

    .line 363
    move-object/from16 v1, p0

    .line 364
    .line 365
    goto :goto_3

    .line 366
    :catch_9
    move-exception v0

    .line 367
    const/4 v14, 0x0

    .line 368
    move-object/from16 v1, p0

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :catchall_2
    move-exception v0

    .line 372
    move-object/from16 v1, v17

    .line 373
    .line 374
    goto/16 :goto_b

    .line 375
    .line 376
    :catch_a
    move-exception v0

    .line 377
    move v14, v4

    .line 378
    move-object/from16 v1, v17

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :catch_b
    move-exception v0

    .line 382
    move v14, v4

    .line 383
    move-object/from16 v1, v17

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :catch_c
    move-exception v0

    .line 387
    move-object/from16 v1, v17

    .line 388
    .line 389
    goto :goto_5

    .line 390
    :catch_d
    move-exception v0

    .line 391
    move-object/from16 v1, v17

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catchall_3
    move-exception v0

    .line 395
    move-object v1, v9

    .line 396
    goto :goto_b

    .line 397
    :catch_e
    move-exception v0

    .line 398
    move-object v1, v9

    .line 399
    goto :goto_5

    .line 400
    :catch_f
    move-exception v0

    .line 401
    move-object v1, v9

    .line 402
    goto :goto_6

    .line 403
    :catch_10
    move-exception v0

    .line 404
    move v14, v8

    .line 405
    move-object v1, v9

    .line 406
    goto :goto_7

    .line 407
    :catch_11
    move-exception v0

    .line 408
    move v14, v8

    .line 409
    move-object v1, v9

    .line 410
    goto :goto_9

    .line 411
    :catch_12
    move-exception v0

    .line 412
    move v14, v8

    .line 413
    goto :goto_7

    .line 414
    :catch_13
    move-exception v0

    .line 415
    move v14, v8

    .line 416
    goto :goto_9

    .line 417
    :goto_7
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    instance-of v2, v0, Landroid/system/ErrnoException;

    .line 440
    .line 441
    if-eqz v2, :cond_2

    .line 442
    .line 443
    check-cast v0, Landroid/system/ErrnoException;

    .line 444
    .line 445
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 446
    .line 447
    sget v0, Landroid/system/OsConstants;->EAGAIN:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 448
    .line 449
    :cond_2
    if-eqz v1, :cond_3

    .line 450
    .line 451
    :goto_8
    :try_start_d
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    .line 452
    .line 453
    .line 454
    :catch_14
    :cond_3
    move v10, v8

    .line 455
    goto :goto_a

    .line 456
    :goto_9
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 476
    .line 477
    .line 478
    if-eqz v1, :cond_3

    .line 479
    .line 480
    goto :goto_8

    .line 481
    :catch_15
    :cond_4
    :goto_a
    return v10

    .line 482
    :goto_b
    if-eqz v1, :cond_5

    .line 483
    .line 484
    :try_start_f
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16

    .line 485
    .line 486
    .line 487
    :catch_16
    :cond_5
    throw v0
.end method

.method declared-synchronized setInterfaceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mInterfaceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
