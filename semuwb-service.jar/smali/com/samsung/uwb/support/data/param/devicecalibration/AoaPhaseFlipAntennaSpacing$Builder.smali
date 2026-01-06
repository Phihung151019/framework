.class public Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;
.super Ljava/lang/Object;
.source "AoaPhaseFlipAntennaSpacing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private calibrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;->calibrations:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;
    .locals 10

    .line 70
    const/4 v0, 0x5

    .line 71
    .local v0, "tag":B
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 73
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 74
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    .line 75
    .local v3, "numOfRxPair":B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;

    .line 77
    .local v5, "data":Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->getRxPairId()B

    move-result v6

    .line 78
    .local v6, "rxPairId":B
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->getAntennaSpacing()F

    move-result v7

    .line 79
    .local v7, "antennaSpacing":F
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    const/4 v8, 0x6

    const/16 v9, 0x9

    invoke-static {v7, v8, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertFloatToQFormat(FII)I

    move-result v8

    int-to-short v8, v8

    .line 81
    .local v8, "value":S
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->isAoaFlip()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    const v9, 0x8000

    or-int/2addr v9, v8

    int-to-short v8, v9

    .line 84
    :cond_0
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 85
    .end local v5    # "data":Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;
    .end local v6    # "rxPairId":B
    .end local v7    # "antennaSpacing":F
    .end local v8    # "value":S
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 87
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 89
    .local v4, "payload":[B
    new-instance v5, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;

    invoke-direct {v5, v0, v1, v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;-><init>(BI[B)V

    return-object v5
.end method

.method public setAntennaSpacing(BFZ)Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;
    .locals 2
    .param p1, "rxPairId"    # B
    .param p2, "antennaSpacing"    # F
    .param p3, "aoaFlip"    # Z

    .line 65
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Builder;->calibrations:Ljava/util/List;

    new-instance v1, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;-><init>(BFZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method
