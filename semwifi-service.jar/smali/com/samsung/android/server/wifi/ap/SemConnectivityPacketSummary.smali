.class public Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ARP_HWTYPE_ETHER:I = 0x1

.field public static final ARP_PAYLOAD_LEN:I = 0x1c

.field public static final ARP_REPLY:I = 0x2

.field public static final ARP_REQUEST:I = 0x1

.field public static final DHCP4_CLIENT_PORT:I = 0x44

.field public static final ETHER_ADDR_LEN:I = 0x6

.field public static final ETHER_DST_ADDR_OFFSET:I = 0x0

.field public static final ETHER_HEADER_LEN:I = 0xe

.field public static final ETHER_SRC_ADDR_OFFSET:I = 0x6

.field public static final ETHER_TYPE_ARP:I = 0x806

.field public static final ETHER_TYPE_IPV4:I = 0x800

.field public static final ETHER_TYPE_IPV6:I = 0x86dd

.field public static final ETHER_TYPE_LENGTH:I = 0x2

.field public static final ETHER_TYPE_OFFSET:I = 0xc

.field public static final ICMPV6_HEADER_MIN_LEN:I = 0x4

.field public static final ICMPV6_ND_OPTION_LENGTH_SCALING_FACTOR:I = 0x8

.field public static final ICMPV6_ND_OPTION_MIN_LENGTH:I = 0x8

.field public static final ICMPV6_ND_OPTION_MTU:I = 0x5

.field public static final ICMPV6_ND_OPTION_SLLA:I = 0x1

.field public static final ICMPV6_ND_OPTION_TLLA:I = 0x2

.field public static final ICMPV6_NEIGHBOR_ADVERTISEMENT:I = 0x88

.field public static final ICMPV6_NEIGHBOR_SOLICITATION:I = 0x87

.field public static final ICMPV6_ROUTER_ADVERTISEMENT:I = 0x86

.field public static final ICMPV6_ROUTER_SOLICITATION:I = 0x85

.field public static final IPV4_ADDR_LEN:I = 0x4

.field public static final IPV4_DST_ADDR_OFFSET:I = 0x10

.field public static final IPV4_FLAGS_OFFSET:I = 0x6

.field public static final IPV4_FRAGMENT_MASK:I = 0x1fff

.field public static final IPV4_HEADER_MIN_LEN:I = 0x14

.field public static final IPV4_IHL_MASK:I = 0xf

.field public static final IPV4_PROTOCOL_OFFSET:I = 0x9

.field public static final IPV4_SRC_ADDR_OFFSET:I = 0xc

.field public static final IPV6_HEADER_LEN:I = 0x28

.field public static final IPV6_PROTOCOL_OFFSET:I = 0x6

.field public static final IPV6_SRC_ADDR_OFFSET:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SemConnectivityPacketSummary"

.field public static final UDP_HEADER_LEN:I = 0x8

.field private static dnsInfoField:I = 0x2

.field private static dnsPort:I = 0x35

.field private static final dnsTran:I = 0x6

.field private static mTypeFieldLength:I = 0x7

.field private static positionDnsQueriesName:I = 0x10

.field private static positionDnsQueriesResponse:I = 0x11

.field private static privateDnsPort:I = 0x355

.field private static startPositionOfDns:I = 0x2a


# instance fields
.field private final mBytes:[B

.field private final mHwAddr:[B

.field private final mLength:I

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mSummary:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/MacAddress;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mHwAddr:[B

    .line 9
    .line 10
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mBytes:[B

    .line 11
    .line 12
    array-length p1, p2

    .line 13
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mLength:I

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-static {p2, p3, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/StringJoiner;

    .line 32
    .line 33
    const-string p2, " "

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static asUint(B)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static asUint(S)I
    .locals 1

    .line 2
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-array v0, v1, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    new-array p0, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-byte v4, v0, v2

    .line 23
    .line 24
    add-int/lit8 v5, v3, 0x1

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aput-object v4, p0, v3

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    move v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "%02x%02x"

    .line 37
    .line 38
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    :goto_1
    const-string p0, "invalid"

    .line 44
    .line 45
    return-object p0
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-array v0, p1, [B

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    const-string p0, "unknown"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    const-string p0, "invalid"

    .line 29
    .line 30
    return-object p0
.end method

.method private static getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-array v0, v1, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    new-array p0, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-byte v4, v0, v2

    .line 23
    .line 24
    add-int/lit8 v5, v3, 0x1

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aput-object v4, p0, v3

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    move v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 37
    .line 38
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    :goto_1
    const-string p0, "invalid"

    .line 44
    .line 45
    return-object p0
.end method

.method private parseARP(Ljava/util/StringJoiner;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v2, 0x800

    .line 55
    .line 56
    if-ne v0, v2, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, 0x6

    .line 69
    if-ne v0, v2, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x4

    .line 82
    if-eq v0, v2, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-ne v0, v1, :cond_2

    .line 119
    .line 120
    const-string v0, "who-has"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    const/4 p0, 0x2

    .line 131
    if-ne v0, p0, :cond_3

    .line 132
    .line 133
    const-string p0, "reply"

    .line 134
    .line 135
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    const-string p0, "unknown opcode"

    .line 148
    .line 149
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    :goto_0
    const-string p0, "unexpected header"

    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mBytes:[B

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mLength:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->decodeFullPacket([BII)Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_0
    .catch Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "parse error: "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private parseDns(Ljava/util/StringJoiner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsInfoField:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    const-string v2, "tid"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    sget v2, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsInfoField:I

    .line 36
    .line 37
    add-int/2addr v0, v2

    .line 38
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsInfoField:I

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    const-string v0, "flags"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xe

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mHwAddr:[B

    .line 50
    .line 51
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const-string v2, "TX"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v2, "RX"

    .line 65
    .line 66
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    const-string v1, ">"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    const/16 v1, 0xc

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/16 v1, 0x800

    .line 133
    .line 134
    if-eq v0, v1, :cond_4

    .line 135
    .line 136
    const/16 v1, 0x806

    .line 137
    .line 138
    if-eq v0, v1, :cond_3

    .line 139
    .line 140
    const v1, 0x86dd

    .line 141
    .line 142
    .line 143
    if-eq v0, v1, :cond_2

    .line 144
    .line 145
    const-string p0, "ethtype"

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_2
    const-string v0, "ipv6"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_3
    const-string v0, "arp"

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_4
    const-string v0, "ipv4"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "runt:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 53
    .line 54
    .line 55
    packed-switch v0, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    const-string p0, "type"

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 69
    .line 70
    .line 71
    const-string p0, "code"

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    const-string v0, "na"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_1
    const-string v0, "ns"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_2
    const-string v0, "ra"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_3
    const-string v0, "rs"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-lt v0, v1, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    mul-int/2addr v2, v1

    .line 32
    const/4 v1, 0x2

    .line 33
    sub-int/2addr v2, v1

    .line 34
    if-ltz v2, :cond_4

    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-le v2, v3, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eq v0, v4, :cond_3

    .line 53
    .line 54
    if-eq v0, v1, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    if-eq v0, v1, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v0, "mtu"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v0, "tlla"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const-string v0, "slla"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    add-int/2addr v3, v2

    .line 116
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_2
    const-string p0, "<malformed>"

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    .line 124
    .line 125
    :cond_5
    return-void
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, 0x4

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v1

    .line 38
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "runt:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, v1

    .line 37
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "runt"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    and-int/lit8 v1, v1, 0xf

    .line 28
    .line 29
    mul-int/lit8 v1, v1, 0x4

    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lt v2, v1, :cond_8

    .line 38
    .line 39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/16 v3, 0x14

    .line 46
    .line 47
    if-ge v2, v3, :cond_1

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_1
    add-int/2addr v1, v0

    .line 52
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    add-int/lit8 v3, v0, 0x6

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    and-int/lit16 v2, v2, 0x1fff

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    add-int/lit8 v4, v0, 0x9

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    add-int/lit8 v5, v0, 0xc

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    add-int/lit8 v0, v0, 0x10

    .line 109
    .line 110
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const-string v5, ">"

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    .line 136
    .line 137
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    .line 138
    .line 139
    const-string v1, "fragment"

    .line 140
    .line 141
    if-ne v3, v0, :cond_4

    .line 142
    .line 143
    const-string v0, "udp"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 146
    .line 147
    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_4
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    .line 159
    .line 160
    if-ne v3, v0, :cond_6

    .line 161
    .line 162
    const-string v0, "tcp"

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 165
    .line 166
    .line 167
    if-eqz v2, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseTCP(Ljava/util/StringJoiner;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_6
    const-string p0, "proto"

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 188
    .line 189
    .line 190
    if-eqz v2, :cond_7

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 193
    .line 194
    .line 195
    :cond_7
    return-void

    .line 196
    :cond_8
    :goto_1
    const-string v0, "runt:"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x28

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    add-int/lit8 v3, v0, 0x6

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    add-int/lit8 v4, v0, 0x8

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v5, ">"

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    add-int/2addr v0, v1

    .line 89
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    .line 91
    .line 92
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    .line 93
    .line 94
    if-ne v2, v0, :cond_1

    .line 95
    .line 96
    const-string v0, "icmp6"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    .line 106
    .line 107
    if-ne v2, v0, :cond_2

    .line 108
    .line 109
    const-string v0, "udp"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    .line 119
    .line 120
    if-ne v2, v0, :cond_3

    .line 121
    .line 122
    const-string v0, "tcp"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseTCP(Ljava/util/StringJoiner;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    const-string p0, "proto"

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private parseTCP(Ljava/util/StringJoiner;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, ">"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    .line 83
    .line 84
    sget p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->privateDnsPort:I

    .line 85
    .line 86
    if-eq v2, p0, :cond_2

    .line 87
    .line 88
    if-ne v3, p0, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    return-void

    .line 92
    :cond_2
    :goto_0
    const-string p0, "private_dns"

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 95
    .line 96
    .line 97
    sget p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->privateDnsPort:I

    .line 98
    .line 99
    if-ne v3, p0, :cond_3

    .line 100
    .line 101
    const-string p0, "TX"

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    const-string p0, "RX"

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private parseUDP(Ljava/util/StringJoiner;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "runt:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, ">"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    .line 83
    .line 84
    const/16 v0, 0x44

    .line 85
    .line 86
    if-eq v2, v0, :cond_1

    .line 87
    .line 88
    if-ne v3, v0, :cond_2

    .line 89
    .line 90
    :cond_1
    const-string v0, "dhcp4"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    sget v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsPort:I

    .line 99
    .line 100
    if-eq v2, v0, :cond_4

    .line 101
    .line 102
    if-ne v3, v0, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    return-void

    .line 106
    :cond_4
    :goto_0
    const-string v0, "dns"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 109
    .line 110
    .line 111
    sget v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsPort:I

    .line 112
    .line 113
    if-ne v3, v0, :cond_5

    .line 114
    .line 115
    const-string v0, "Queries"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const-string v0, "Responses"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseDns(Ljava/util/StringJoiner;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public static summarize(Landroid/net/MacAddress;[B)Ljava/lang/String;
    .locals 1

    .line 1
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;-><init>(Landroid/net/MacAddress;[BI)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    sget-boolean p0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    if-le p0, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sub-int/2addr p0, v0

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_2
    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
