.class public Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
.super Ljava/lang/Object;
.source "TxPowerPerAntenna.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;
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
            "Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->calibrations:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;
    .locals 9

    .line 67
    const/4 v0, 0x4

    .line 68
    .local v0, "tag":B
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    .line 70
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 71
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    .line 72
    .local v3, "numOfTxAnt":B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;

    .line 74
    .local v5, "data":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->getTxAntId()B

    move-result v6

    .line 75
    .local v6, "txAntId":B
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->getPeakTxPower()S

    move-result v7

    .line 76
    .local v7, "peakPower":S
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->getRmsTxPower()S

    move-result v8

    .line 77
    .local v8, "rmsPower":S
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 80
    .end local v5    # "data":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;
    .end local v6    # "txAntId":B
    .end local v7    # "peakPower":S
    .end local v8    # "rmsPower":S
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 84
    .local v4, "payload":[B
    new-instance v5, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;

    invoke-direct {v5, v0, v1, v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;-><init>(BI[B)V

    return-object v5
.end method

.method public setTxPower(BSS)Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
    .locals 2
    .param p1, "txAntId"    # B
    .param p2, "peakTxPower"    # S
    .param p3, "rmsTxPower"    # S

    .line 62
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->calibrations:Ljava/util/List;

    new-instance v1, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;-><init>(BSS)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object p0
.end method
