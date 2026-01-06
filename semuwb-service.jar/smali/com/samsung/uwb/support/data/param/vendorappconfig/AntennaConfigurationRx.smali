.class public Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "AntennaConfigurationRx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx$RxMode;
    }
.end annotation


# static fields
.field public static final RX_MODE_AOA:B = 0x1t

.field public static final RX_MODE_RADAR:B = 0x2t

.field public static final RX_MODE_TFM_FOR_AOA:B = 0x4t

.field public static final RX_MODE_TFM_FOR_TOA:B = 0x3t

.field public static final RX_MODE_TOA:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "ANTENNAS_CONFIGURATION_RX"


# instance fields
.field private final numOfRx:B

.field private final rxAntenna:[B

.field private final rxMode:B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 35
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    .line 40
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 41
    return-void
.end method


# virtual methods
.method public getNumOfRx()B
    .locals 1

    .line 49
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    return v0
.end method

.method public getRxAntenna()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    return-object v0
.end method

.method public getRxMode()B
    .locals 1

    .line 45
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 59
    const-string v0, "INVALID"

    .line 60
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    array-length v2, v2

    if-ne v1, v2, :cond_4

    .line 61
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    const-string v2, "RX_MODE: 0x%s(%s),  NUM_OF_RX: %d,  RX_ANT_ID: %s"

    if-nez v1, :cond_0

    .line 62
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    .line 63
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TOA"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 62
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 64
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    const/4 v3, 0x1

    const-string v4, "RX_MODE: 0x%s(%s),  NUM_OF_RX: %d,  RX_PAIR_ID: %s"

    if-ne v1, v3, :cond_1

    .line 65
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    .line 66
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    const-string v5, "AoA"

    filled-new-array {v1, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 68
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    .line 69
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RADAR"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 71
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    .line 72
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TFM_For_TOA"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 71
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 74
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxMode:B

    .line 75
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->numOfRx:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;->rxAntenna:[B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TFM_For_AoA"

    filled-new-array {v1, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 74
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_4
    :goto_0
    const-string v1, "ANTENNAS_CONFIGURATION_RX"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
