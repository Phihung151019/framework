.class public abstract Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_RELEASE:B = 0x7t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_OVERLOAD:B = 0x34t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IPV4_MIN_MTU:I = 0x44

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field private static final OPTION_OVERLOAD_BOTH:B = 0x3t

.field private static final OPTION_OVERLOAD_FILE:B = 0x1t

.field private static final OPTION_OVERLOAD_SNAME:B = 0x2t

.field protected static final TAG:Ljava/lang/String; = "SemDhcpPacket"

.field public static final VENDOR_INFO_ANDROID_METERED:Ljava/lang/String; = "ANDROID_METERED"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected mClientId:[B

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field protected final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerHostName:Ljava/lang/String;

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-static {v0}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->ETHER_BROADCAST:[B

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->testOverrideHostname:Ljava/lang/String;

    .line 27
    .line 28
    return-void

    .line 29
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

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mTransId:I

    .line 5
    .line 6
    iput-short p2, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSecs:S

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcast:Z

    .line 19
    .line 20
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    .line 33
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 35
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 36
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String is not US-ASCII: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v0

    .line 18
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    .line 20
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DHCP option too long: "

    const-string p2, " vs. 255"

    .line 22
    invoke-static {p1, v0, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 2

    if-eqz p2, :cond_1

    .line 4
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DHCP option too long: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    const-string v0, " vs. 255"

    .line 9
    invoke-static {v0, p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;Ljava/lang/String;ZS)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/DhcpAckPacket;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v1, p1

    .line 5
    move v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v7, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v8, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/ap/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 13
    .line 14
    .line 15
    move-object/from16 p1, p11

    .line 16
    .line 17
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mGateways:Ljava/util/List;

    .line 18
    .line 19
    move-object/from16 p1, p12

    .line 20
    .line 21
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    .line 22
    .line 23
    move-object/from16 p1, p8

    .line 24
    .line 25
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 26
    .line 27
    move-object/from16 p1, p14

    .line 28
    .line 29
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 p1, p15

    .line 32
    .line 33
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mHostName:Ljava/lang/String;

    .line 34
    .line 35
    move-object/from16 p1, p9

    .line 36
    .line 37
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 38
    .line 39
    move-object/from16 p1, p13

    .line 40
    .line 41
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 42
    .line 43
    move-object/from16 p1, p10

    .line 44
    .line 45
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 46
    .line 47
    invoke-static/range {p17 .. p17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    .line 52
    .line 53
    if-eqz p16, :cond_0

    .line 54
    .line 55
    const-string p1, "ANDROID_METERED"

    .line 56
    .line 57
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    const/16 p1, 0x44

    .line 60
    .line 61
    const/16 p2, 0x43

    .line 62
    .line 63
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/DhcpAckPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;

    .line 2
    .line 3
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 4
    .line 5
    move-object v6, v3

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;-><init>(ISLjava/net/Inet4Address;[BZLjava/net/Inet4Address;)V

    .line 11
    .line 12
    .line 13
    iput-object p5, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedParams:[B

    .line 14
    .line 15
    const/16 p1, 0x43

    .line 16
    .line 17
    const/16 p2, 0x44

    .line 18
    .line 19
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[BZLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/DhcpNakPacket;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v1, p1

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 9
    .line 10
    .line 11
    iput-object p6, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMessage:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 14
    .line 15
    const/16 p1, 0x44

    .line 16
    .line 17
    const/16 p2, 0x43

    .line 18
    .line 19
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/DhcpNakPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;Ljava/lang/String;ZS)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;

    const/4 v2, 0x0

    sget-object v6, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 p1, p10

    .line 2
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mGateways:Ljava/util/List;

    move-object/from16 p1, p11

    .line 3
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 p1, p7

    .line 4
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 p1, p13

    .line 5
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 6
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 7
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 p1, p8

    .line 8
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 p1, p9

    .line 9
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 10
    invoke-static/range {p16 .. p16}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz p15, :cond_0

    .line 11
    const-string p1, "ANDROID_METERED"

    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    :cond_0
    const/16 p1, 0x44

    const/16 p2, 0x43

    .line 12
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/DhcpRequestPacket;

    .line 2
    .line 3
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 4
    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v6, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/ap/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 11
    .line 12
    .line 13
    iput-object p6, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 14
    .line 15
    iput-object p7, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 16
    .line 17
    move-object/from16 p1, p9

    .line 18
    .line 19
    iput-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mHostName:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p8, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedParams:[B

    .line 22
    .line 23
    const/16 p1, 0x43

    .line 24
    .line 25
    const/16 p2, 0x44

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/DhcpRequestPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    sub-int p0, p4, p3

    .line 16
    .line 17
    div-int/lit8 p0, p0, 0x2

    .line 18
    .line 19
    new-array v1, p0, [S

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-ge v0, p0, :cond_0

    .line 26
    .line 27
    aget-short v2, v1, v0

    .line 28
    .line 29
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->intAbs(S)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr p2, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    mul-int/lit8 p0, p0, 0x2

    .line 38
    .line 39
    add-int/2addr p0, p3

    .line 40
    if-eq p4, p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    int-to-short p0, p0

    .line 47
    if-gez p0, :cond_1

    .line 48
    .line 49
    add-int/lit16 p0, p0, 0x100

    .line 50
    .line 51
    int-to-short p0, p0

    .line 52
    :cond_1
    mul-int/lit16 p0, p0, 0x100

    .line 53
    .line 54
    add-int/2addr p2, p0

    .line 55
    :cond_2
    shr-int/lit8 p0, p2, 0x10

    .line 56
    .line 57
    const p1, 0xffff

    .line 58
    .line 59
    .line 60
    and-int/2addr p0, p1

    .line 61
    and-int/2addr p2, p1

    .line 62
    add-int/2addr p0, p2

    .line 63
    shr-int/lit8 p2, p0, 0x10

    .line 64
    .line 65
    and-int/2addr p2, p1

    .line 66
    add-int/2addr p0, p2

    .line 67
    and-int/2addr p0, p1

    .line 68
    not-int p0, p0

    .line 69
    int-to-short p0, p0

    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->intAbs(S)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v4, 0x6

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x116

    if-lt v5, v6, :cond_1

    .line 5
    new-array v5, v4, [B

    .line 6
    new-array v6, v4, [B

    .line 7
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 10
    sget v6, Landroid/system/OsConstants;->ETH_P_IP:I

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 12
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x1020000

    const-string v3, "Unexpected L2 type 0x%04x, expected 0x%04x"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 13
    :cond_1
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/high16 v2, 0x1010000

    const-string v3, "L2 packet too short, %d < %d"

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v5, 0x5

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v10, 0x0

    if-gt v1, v7, :cond_9

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    const/16 v12, 0x108

    if-lt v11, v12, :cond_8

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v12, v11, 0xf0

    shr-int/2addr v12, v8

    if-ne v12, v8, :cond_7

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    .line 26
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    const/16 v14, 0x11

    if-ne v12, v14, :cond_6

    and-int/2addr v11, v6

    sub-int/2addr v11, v5

    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_3

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 32
    invoke-static {v11, v12}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v14

    if-nez v14, :cond_5

    .line 33
    invoke-static {v11, v12}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->isPacketServerToServer(SS)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_2

    .line 34
    :cond_4
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 35
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x3020000

    const-string v3, "Unexpected UDP ports %d->%d"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_2
    move-object v14, v13

    goto :goto_3

    .line 36
    :cond_6
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 37
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x3010000

    const-string v3, "Protocol not UDP: %d"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 38
    :cond_7
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x2020000

    const-string v3, "Invalid IP version %d"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 40
    :cond_8
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/high16 v2, 0x2010000

    const-string v3, "L3 packet too short, %d < %d"

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_9
    const/4 v14, 0x0

    :goto_3
    const/16 v11, 0xec

    const/4 v12, 0x2

    if-gt v1, v12, :cond_1e

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v11, :cond_1e

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    const v13, 0x8000

    and-int/2addr v11, v13

    if-eqz v11, :cond_a

    move v13, v7

    goto :goto_4

    :cond_a
    move v13, v10

    .line 50
    :goto_4
    new-array v11, v8, [B

    .line 51
    :try_start_0
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 52
    invoke-static {v11}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Ljava/net/Inet4Address;

    .line 53
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-static {v11}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    move-object/from16 v19, v15

    check-cast v19, Ljava/net/Inet4Address;

    .line 55
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-static {v11}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    move-object/from16 v20, v15

    check-cast v20, Ljava/net/Inet4Address;

    .line 57
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-static {v11}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    check-cast v15, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v11, 0x10

    if-le v1, v11, :cond_b

    .line 59
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->ETHER_BROADCAST:[B

    array-length v1, v1

    :cond_b
    move/from16 p1, v11

    .line 60
    new-array v11, v1, [B

    .line 61
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    rsub-int/lit8 v1, v1, 0x10

    add-int v1, v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x40

    .line 63
    invoke-static {v0, v1, v10}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/lit16 v12, v12, 0x80

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-lt v12, v8, :cond_1d

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    const v8, 0x63825363

    if-ne v12, v8, :cond_1c

    const/4 v8, -0x1

    move v12, v7

    move/from16 v26, v8

    move/from16 v33, v10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 67
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    if-ge v10, v6, :cond_19

    if-eqz v12, :cond_19

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne v6, v8, :cond_c

    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_c
    if-nez v6, :cond_d

    goto/16 :goto_e

    .line 69
    :cond_d
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    if-eq v6, v7, :cond_16

    const/4 v8, 0x3

    if-eq v6, v8, :cond_15

    if-eq v6, v4, :cond_13

    const/16 v4, 0xc

    if-eq v6, v4, :cond_12

    const/16 v4, 0xf

    if-eq v6, v4, :cond_11

    const/16 v4, 0x1a

    if-eq v6, v4, :cond_10

    const/16 v4, 0x1c

    if-eq v6, v4, :cond_f

    const/16 v4, 0x2b

    if-eq v6, v4, :cond_e

    packed-switch v6, :pswitch_data_0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v4, v10, :cond_17

    add-int/lit8 v8, v8, 0x1

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 71
    :pswitch_0
    new-array v4, v10, [B

    .line 72
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_7
    move v8, v10

    goto/16 :goto_d

    .line 73
    :pswitch_1
    invoke-static {v0, v10, v7}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 74
    :pswitch_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    :goto_8
    const/4 v8, 0x4

    goto/16 :goto_d

    .line 75
    :pswitch_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto :goto_8

    .line 76
    :pswitch_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v35

    :goto_9
    const/4 v8, 0x2

    goto/16 :goto_d

    :pswitch_5
    const/4 v4, 0x0

    .line 77
    invoke-static {v0, v10, v4}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v28

    goto :goto_7

    .line 78
    :pswitch_6
    new-array v5, v10, [B

    .line 79
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 80
    :pswitch_7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v24

    goto :goto_8

    .line 81
    :pswitch_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v26

    :goto_a
    move v8, v7

    goto :goto_d

    .line 82
    :pswitch_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/2addr v4, v8

    int-to-byte v4, v4

    move/from16 v33, v4

    goto :goto_a

    .line 83
    :pswitch_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    goto :goto_8

    .line 84
    :pswitch_b
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v32

    goto :goto_8

    .line 85
    :cond_e
    invoke-static {v0, v10, v7}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    goto :goto_7

    .line 86
    :cond_f
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v31

    goto :goto_8

    .line 87
    :cond_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v34

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    .line 88
    invoke-static {v0, v10, v4}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v30

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    .line 89
    invoke-static {v0, v10, v4}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v25

    goto :goto_7

    :cond_13
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v10, :cond_14

    .line 90
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_b

    :cond_14
    move v8, v4

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v10, :cond_14

    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_c

    .line 92
    :cond_16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v27

    goto/16 :goto_8

    :cond_17
    :goto_d
    if-ne v8, v10, :cond_18

    :goto_e
    const/4 v4, 0x6

    const/16 v6, 0xf

    const/4 v8, -0x1

    goto/16 :goto_5

    :cond_18
    const/high16 v0, 0x4030000

    .line 93
    invoke-static {v0, v6}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v0

    .line 94
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    const-string v2, "Invalid length %d for option %d, expected %d"

    .line 95
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/high16 v0, 0x5010000

    .line 96
    invoke-static {v0, v6}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v0

    .line 97
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    const-string v2, "BufferUnderflowException"

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 98
    :cond_19
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->getWifiApDhcpFingerprintManager()Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;

    move-result-object v0

    move-object/from16 v4, v25

    invoke-virtual {v0, v11, v5, v9, v4}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->findAndStoreClientDetailsViaDhcpFingerprint([B[BLjava/lang/String;Ljava/lang/String;)V

    packed-switch v26, :pswitch_data_1

    .line 99
    :pswitch_c
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 100
    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x4050000

    const-string v3, "Unimplemented DHCP type %d"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_d
    move-object/from16 v21, v15

    .line 101
    new-instance v15, Lcom/samsung/android/server/wifi/ap/DhcpInformPacket;

    move-object/from16 v22, v11

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/server/wifi/ap/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 v0, v24

    :goto_f
    move-object/from16 v6, v31

    const/16 v23, 0x2

    goto/16 :goto_12

    :pswitch_e
    move-object/from16 v20, v11

    move-object/from16 v21, v15

    if-eqz v24, :cond_1a

    .line 102
    new-instance v15, Lcom/samsung/android/server/wifi/ap/DhcpReleasePacket;

    move-object/from16 v19, v21

    move-object/from16 v17, v24

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/server/wifi/ap/DhcpReleasePacket;-><init>(ILjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 v0, v17

    goto :goto_f

    .line 103
    :cond_1a
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    const-string v1, "DHCPRELEASE without server identifier"

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_f
    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v24

    .line 104
    new-instance v15, Lcom/samsung/android/server/wifi/ap/DhcpNakPacket;

    move-object/from16 v19, v20

    move-object/from16 v18, v21

    move/from16 v20, v13

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/server/wifi/ap/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    goto :goto_f

    :pswitch_10
    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v24

    .line 105
    new-instance v10, Lcom/samsung/android/server/wifi/ap/DhcpAckPacket;

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    const/16 v23, 0x2

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/server/wifi/ap/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    :goto_10
    move-object v15, v10

    :goto_11
    move-object/from16 v6, v31

    goto :goto_12

    :pswitch_11
    move-object/from16 v22, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v24

    const/16 v23, 0x2

    .line 106
    new-instance v15, Lcom/samsung/android/server/wifi/ap/DhcpDeclinePacket;

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/server/wifi/ap/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_11

    :pswitch_12
    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v24

    const/16 v23, 0x2

    .line 107
    new-instance v15, Lcom/samsung/android/server/wifi/ap/DhcpRequestPacket;

    move-object/from16 v19, v21

    move/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/server/wifi/ap/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    goto :goto_11

    :pswitch_13
    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v24

    const/16 v23, 0x2

    .line 108
    new-instance v10, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_10

    :pswitch_14
    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v24

    const/16 v23, 0x2

    .line 109
    new-instance v10, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;

    move v15, v13

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v13, v21

    move-object/from16 v16, v14

    move-object/from16 v14, v20

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;-><init>(ISLjava/net/Inet4Address;[BZLjava/net/Inet4Address;)V

    goto :goto_10

    .line 110
    :goto_12
    iput-object v6, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/4 v6, 0x0

    .line 111
    iput-object v6, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientId:[B

    .line 112
    iput-object v2, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v2, v30

    .line 113
    iput-object v2, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    .line 114
    iput-object v3, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mGateways:Ljava/util/List;

    .line 115
    iput-object v4, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v2, v36

    .line 116
    iput-object v2, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v2, v28

    .line 117
    iput-object v2, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMessage:Ljava/lang/String;

    move-object/from16 v2, v34

    .line 118
    iput-object v2, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    move-object/from16 v2, v32

    .line 119
    iput-object v2, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 120
    iput-object v5, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedParams:[B

    .line 121
    iput-object v0, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, v27

    .line 122
    iput-object v0, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v0, v35

    .line 123
    iput-object v0, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    move-object/from16 v0, v37

    .line 124
    iput-object v0, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mT1:Ljava/lang/Integer;

    move-object/from16 v0, v38

    .line 125
    iput-object v0, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mT2:Ljava/lang/Integer;

    .line 126
    iput-object v9, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mVendorId:Ljava/lang/String;

    move-object/from16 v9, v29

    .line 127
    iput-object v9, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    and-int/lit8 v0, v33, 0x2

    if-nez v0, :cond_1b

    .line 128
    iput-object v1, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerHostName:Ljava/lang/String;

    return-object v15

    .line 129
    :cond_1b
    const-string v0, ""

    iput-object v0, v15, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerHostName:Ljava/lang/String;

    return-object v15

    .line 130
    :pswitch_15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    const-string v1, "No DHCP message type option"

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    const/high16 v3, 0x4040000

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 131
    :cond_1c
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 132
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x4020000

    const-string v3, "Bad magic cookie 0x%08x, should be 0x%08x"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 133
    :cond_1d
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    const-string v1, "not a DHCP message"

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    const/high16 v3, 0x4060000

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 134
    :catch_1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 135
    invoke-static {v11}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x2030000

    const-string v3, "Invalid IPv4 address: %s"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 136
    :cond_1e
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    .line 137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/high16 v2, 0x4010000

    const-string v3, "Invalid type or BOOTP packet too short, %d < %d"

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x32
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

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_15
        :pswitch_c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 139
    :try_start_0
    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 140
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    const/high16 v0, 0x5030000

    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    .line 141
    throw p0
.end method

.method private getHostname()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->testOverrideHostname:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "net.hostname"

    .line 7
    .line 8
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private getVendorId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "android-dhcp-"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static intAbs(S)I
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method private static isPacketServerToServer(SS)Z
    .locals 1

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .locals 1

    .line 1
    const/16 v0, 0x44

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    return p0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "0"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    aget-byte v3, p0, v1

    .line 18
    .line 19
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/lit8 v3, v3, -0x2

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    array-length v2, p0

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    const-string v2, ":"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    if-nez p2, :cond_2

    .line 8
    .line 9
    move p2, p0

    .line 10
    :goto_0
    if-ge p2, p1, :cond_1

    .line 11
    .line 12
    aget-byte v1, v0, p2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    move p1, p2

    .line 21
    :cond_2
    new-instance p2, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-direct {p2, v0, p0, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    return-object p2
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    const/16 v0, 0x5dc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x39

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x3c

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->getVendorId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->getHostname()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0xc

    .line 32
    .line 33
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method protected addCommonServerTlvs(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    const/16 v0, 0x33

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    div-long/2addr v0, v2

    .line 32
    long-to-int v0, v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x3a

    .line 38
    .line 39
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    const-wide/16 v2, 0x36b

    .line 53
    .line 54
    mul-long/2addr v0, v2

    .line 55
    const-wide/16 v2, 0x3e8

    .line 56
    .line 57
    div-long/2addr v0, v2

    .line 58
    long-to-int v0, v0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/16 v1, 0x3b

    .line 64
    .line 65
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 72
    .line 73
    .line 74
    const/16 v0, 0x1c

    .line 75
    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 77
    .line 78
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mGateways:Ljava/util/List;

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 91
    .line 92
    .line 93
    const/16 v0, 0xf

    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 v0, 0xc

    .line 101
    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mHostName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/16 v0, 0x2b

    .line 108
    .line 109
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    .line 115
    .line 116
    if-eqz v0, :cond_1

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/16 v1, 0x44

    .line 127
    .line 128
    if-lt v0, v1, :cond_1

    .line 129
    .line 130
    const/16 v0, 0x1a

    .line 131
    .line 132
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    .line 133
    .line 134
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p3}, Ljava/net/Inet4Address;->getAddress()[B

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    .line 11
    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->ETHER_BROADCAST:[B

    .line 20
    .line 21
    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 25
    .line 26
    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    .line 30
    .line 31
    int-to-short v0, v0

    .line 32
    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    :cond_0
    const/16 v0, 0x11

    .line 36
    .line 37
    const/16 v1, 0x10

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-gt p1, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x45

    .line 48
    .line 49
    invoke-virtual {p6, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    const/16 v6, 0x4000

    .line 66
    .line 67
    invoke-virtual {p6, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    const/16 v6, 0x40

    .line 71
    .line 72
    invoke-virtual {p6, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p6, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    invoke-virtual {p6, p5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p6, p4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 113
    .line 114
    .line 115
    move-result p5

    .line 116
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    move p2, v3

    .line 121
    move p3, p2

    .line 122
    move p4, p3

    .line 123
    move p5, p4

    .line 124
    move v4, p5

    .line 125
    move v5, v4

    .line 126
    move v6, v5

    .line 127
    :goto_0
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    iget-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 134
    .line 135
    array-length p7, p7

    .line 136
    int-to-byte p7, p7

    .line 137
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    iget p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mTransId:I

    .line 144
    .line 145
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    iget-short p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSecs:S

    .line 149
    .line 150
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    if-eqz p8, :cond_2

    .line 154
    .line 155
    const/16 p7, -0x8000

    .line 156
    .line 157
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    :goto_1
    iget-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 165
    .line 166
    invoke-virtual {p7}, Ljava/net/Inet4Address;->getAddress()[B

    .line 167
    .line 168
    .line 169
    move-result-object p7

    .line 170
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    .line 173
    iget-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 174
    .line 175
    invoke-virtual {p7}, Ljava/net/Inet4Address;->getAddress()[B

    .line 176
    .line 177
    .line 178
    move-result-object p7

    .line 179
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    iget-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 183
    .line 184
    invoke-virtual {p7}, Ljava/net/Inet4Address;->getAddress()[B

    .line 185
    .line 186
    .line 187
    move-result-object p7

    .line 188
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    .line 190
    .line 191
    iget-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 192
    .line 193
    invoke-virtual {p7}, Ljava/net/Inet4Address;->getAddress()[B

    .line 194
    .line 195
    .line 196
    move-result-object p7

    .line 197
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    .line 199
    .line 200
    iget-object p7, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 201
    .line 202
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 206
    .line 207
    .line 208
    move-result p7

    .line 209
    iget-object p8, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 210
    .line 211
    array-length p8, p8

    .line 212
    sub-int/2addr v1, p8

    .line 213
    add-int/2addr v1, p7

    .line 214
    add-int/lit16 v1, v1, 0xc0

    .line 215
    .line 216
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    .line 218
    .line 219
    const p7, 0x63825363

    .line 220
    .line 221
    .line 222
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, p6}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 229
    .line 230
    .line 231
    move-result p7

    .line 232
    and-int/2addr p7, v2

    .line 233
    if-ne p7, v2, :cond_3

    .line 234
    .line 235
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    .line 238
    :cond_3
    if-gt p1, v2, :cond_4

    .line 239
    .line 240
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    sub-int/2addr p1, p3

    .line 245
    int-to-short p1, p1

    .line 246
    invoke-virtual {p6, p4, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 247
    .line 248
    .line 249
    add-int/lit8 p4, v6, 0x2

    .line 250
    .line 251
    invoke-virtual {p6, p4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 252
    .line 253
    .line 254
    move-result p4

    .line 255
    invoke-static {p4}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->intAbs(S)I

    .line 256
    .line 257
    .line 258
    move-result p4

    .line 259
    add-int/lit8 p7, v6, 0x4

    .line 260
    .line 261
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 262
    .line 263
    .line 264
    move-result p7

    .line 265
    invoke-static {p7}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->intAbs(S)I

    .line 266
    .line 267
    .line 268
    move-result p7

    .line 269
    add-int/2addr p4, p7

    .line 270
    add-int/lit8 p7, v6, 0x6

    .line 271
    .line 272
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 273
    .line 274
    .line 275
    move-result p7

    .line 276
    invoke-static {p7}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->intAbs(S)I

    .line 277
    .line 278
    .line 279
    move-result p7

    .line 280
    add-int/2addr p4, p7

    .line 281
    add-int/lit8 p7, v6, 0x8

    .line 282
    .line 283
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 284
    .line 285
    .line 286
    move-result p7

    .line 287
    invoke-static {p7}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->intAbs(S)I

    .line 288
    .line 289
    .line 290
    move-result p7

    .line 291
    add-int/2addr p4, p7

    .line 292
    add-int/2addr p4, v0

    .line 293
    add-int/2addr p4, p1

    .line 294
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    invoke-direct {p0, p6, p4, p3, p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    int-to-short p1, p1

    .line 303
    invoke-virtual {p6, p5, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    sub-int/2addr p1, v4

    .line 311
    int-to-short p1, p1

    .line 312
    invoke-virtual {p6, v5, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, p6, v3, v4, p2}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    int-to-short p0, p0

    .line 320
    invoke-virtual {p6, v6, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 321
    .line 322
    .line 323
    :cond_4
    return-void
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->hasExplicitClientId()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientId:[B

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 16
    .line 17
    array-length v0, p0

    .line 18
    const/4 v1, 0x1

    .line 19
    add-int/2addr v0, v1

    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-byte v1, v0, v2

    .line 24
    .line 25
    array-length v3, p0

    .line 26
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public getClientMac()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public getExplicitClientIdOrNull()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->hasExplicitClientId()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->getClientId()[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x3c

    .line 28
    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    const-wide/32 v0, 0xea60

    .line 32
    .line 33
    .line 34
    return-wide v0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    int-to-long v0, p0

    .line 42
    const-wide v2, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v0, v2

    .line 48
    const-wide/16 v2, 0x3e8

    .line 49
    .line 50
    mul-long/2addr v0, v2

    .line 51
    return-wide v0

    .line 52
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    return-wide v0
.end method

.method public getTransactionId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mTransId:I

    .line 2
    .line 3
    return p0
.end method

.method public hasExplicitClientId()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientId:[B

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public hasRequestedParam(B)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedParams:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    aget-byte v3, p0, v2

    .line 12
    .line 13
    if-ne v3, p1, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientMac:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->macToString([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
