.class public Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "AoaPhaseFlipAntennaSpacing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;,
        Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AOA_PHASE_FLIP_ANTENNA_SPACING"


# instance fields
.field private final antennaSpacing:[F

.field private final aoaFlip:[Z

.field private final numOfRx:B

.field private final rxAntenna:[B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 7
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 24
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    .line 27
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->rxAntenna:[B

    .line 28
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->antennaSpacing:[F

    .line 29
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->aoaFlip:[Z

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    if-ge v1, v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->rxAntenna:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 33
    .local v2, "value":I
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->aoaFlip:[Z

    const v4, 0x8000

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0xf

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v3, v1

    .line 34
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->antennaSpacing:[F

    and-int/lit16 v4, v2, 0x7fff

    const/4 v5, 0x6

    const/16 v6, 0x9

    invoke-static {v4, v5, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    aput v4, v3, v1

    .line 30
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getAntennaSpacing()[F
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->antennaSpacing:[F

    return-object v0
.end method

.method public getAoaFlip()[Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->aoaFlip:[Z

    return-object v0
.end method

.method public getNumOfRx()B
    .locals 1

    .line 39
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    return v0
.end method

.method public getRxAntenna()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->rxAntenna:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 121
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "AOA_PHASE_FLIP_ANTENNA_SPACING"

    invoke-super {p0, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NUM_OF_RX: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->numOfRx:B

    if-ge v1, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->rxAntenna:[B

    aget-byte v2, v2, v1

    .line 126
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->antennaSpacing:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;->aoaFlip:[Z

    aget-boolean v4, v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 125
    const-string v3, "RX_PAIR_ID: %d,  ANTENNA_SPACING: %5.2f,  AOA_FLIP: %b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
