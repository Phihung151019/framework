.class public Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "TxPowerPerAntenna.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;,
        Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TX_POWER_PER_ANTENNA"


# instance fields
.field private final numOfTx:B

.field private final peakTxPower:[S

.field private final rmsTxPower:[S

.field private final txAntenna:[B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 4
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 22
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    .line 25
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->txAntenna:[B

    .line 26
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->peakTxPower:[S

    .line 27
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->rmsTxPower:[S

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    if-ge v1, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->txAntenna:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 30
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->peakTxPower:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 31
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->rmsTxPower:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getNumOfTx()B
    .locals 1

    .line 36
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    return v0
.end method

.method public getPeakTxPower()[S
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->peakTxPower:[S

    return-object v0
.end method

.method public getRmsTxPower()[S
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->rmsTxPower:[S

    return-object v0
.end method

.method public getTxAntenna()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->txAntenna:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 114
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "TX_POWER_PER_ANTENNA"

    invoke-super {p0, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 116
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NUM_OF_TX: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->numOfTx:B

    if-ge v1, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->txAntenna:[B

    aget-byte v2, v2, v1

    .line 119
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->peakTxPower:[S

    aget-short v3, v3, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;->rmsTxPower:[S

    aget-short v4, v4, v1

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 118
    const-string v3, "TX_ANT_ID: %d,  PEAK_PWR: %d,  RMS_PWR: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
