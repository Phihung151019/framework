.class Lcom/samsung/android/server/wifi/ap/DhcpReleasePacket;
.super Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field final mClientAddr:Ljava/net/Inet4Address;


# direct methods
.method public constructor <init>(ILjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9

    .line 1
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v5, v4

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move-object v3, p3

    .line 9
    move-object v6, p4

    .line 10
    move-object v7, p5

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 12
    .line 13
    .line 14
    iput-object p2, v0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 15
    .line 16
    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/DhcpReleasePacket;->mClientAddr:Ljava/net/Inet4Address;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    .line 1
    const/16 v0, 0x5dc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 10
    .line 11
    const/4 v8, 0x2

    .line 12
    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcast:Z

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move v2, p1

    .line 16
    move v5, p2

    .line 17
    move v6, p3

    .line 18
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    return-object v7
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    const/16 v0, 0x35

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x3d

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->getClientId()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x36

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
