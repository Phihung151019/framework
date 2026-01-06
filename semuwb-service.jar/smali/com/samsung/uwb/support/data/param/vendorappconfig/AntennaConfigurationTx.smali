.class public Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "AntennaConfigurationTx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ANTENNAS_CONFIGURATION_TX"


# instance fields
.field private final numOfTx:B

.field private final txAntenna:[B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 19
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->numOfTx:B

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->txAntenna:[B

    .line 23
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->txAntenna:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
    return-void
.end method

.method public static build([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;
    .locals 6
    .param p0, "txAntennas"    # [B

    .line 27
    const/4 v0, 0x2

    .line 28
    .local v0, "tag":B
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 30
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 31
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    array-length v3, p0

    int-to-byte v3, v3

    .line 32
    .local v3, "numOfTxAntennas":B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 37
    .local v4, "payload":[B
    new-instance v5, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;

    invoke-direct {v5, v0, v1, v4}, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;-><init>(BI[B)V

    return-object v5
.end method


# virtual methods
.method public getNumOfTx()B
    .locals 1

    .line 41
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->numOfTx:B

    return v0
.end method

.method public getTxAntenna()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->txAntenna:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    const-string v0, "INVALID"

    .line 52
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->numOfTx:B

    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->txAntenna:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 53
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->numOfTx:B

    .line 54
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;->txAntenna:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 53
    const-string v2, "NUM_OF_TX: %d,  TX_ID: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    const-string v1, "ANTENNAS_CONFIGURATION_TX"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
