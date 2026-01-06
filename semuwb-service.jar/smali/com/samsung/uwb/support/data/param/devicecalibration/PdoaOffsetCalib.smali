.class public Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PdoaOffsetCalib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;,
        Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PDOA_OFFSET_CALIB"


# instance fields
.field private final numOfRx:B

.field private final phaseOffset:[F

.field private final rxAntenna:[B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 7
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

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    .line 25
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->rxAntenna:[B

    .line 26
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->phaseOffset:[F

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    if-ge v1, v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->rxAntenna:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 30
    .local v2, "value":I
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->phaseOffset:[F

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v4

    const/16 v5, 0x9

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    aput v4, v3, v1

    .line 27
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getNumOfRx()B
    .locals 1

    .line 35
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    return v0
.end method

.method public getPhaseOffset()[F
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->phaseOffset:[F

    return-object v0
.end method

.method public getRxAntenna()[B
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->rxAntenna:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 100
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "PDOA_OFFSET_CALIB"

    invoke-super {p0, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NUM_OF_RX: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->numOfRx:B

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->rxAntenna:[B

    aget-byte v2, v2, v1

    .line 105
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->phaseOffset:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 104
    const-string v3, "RX_ANT_ID: %d,  PDoA Offset: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
