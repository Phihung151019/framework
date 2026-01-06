.class public Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;
.super Ljava/lang/Object;
.source "RxAntennaDelayCalib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib;
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
            "Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;->calibrations:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib;
    .locals 10

    .line 63
    const/4 v0, 0x2

    .line 64
    .local v0, "tag":B
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 66
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 67
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    .line 68
    .local v3, "numOfRxAnt":B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;->calibrations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;

    .line 70
    .local v5, "data":Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;->getRxAntId()B

    move-result v6

    .line 71
    .local v6, "rxAntId":B
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;->getDelayOffset()F

    move-result v7

    .line 72
    .local v7, "delayOffset":F
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    const/16 v8, 0xe

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertFloatToQFormat(FII)I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 75
    .end local v5    # "data":Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;
    .end local v6    # "rxAntId":B
    .end local v7    # "delayOffset":F
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 79
    .local v4, "payload":[B
    new-instance v5, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib;

    invoke-direct {v5, v0, v1, v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib;-><init>(BI[B)V

    return-object v5
.end method

.method public setDelayOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;
    .locals 2
    .param p1, "rxAntId"    # B
    .param p2, "delayOffset"    # F

    .line 58
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Builder;->calibrations:Ljava/util/List;

    new-instance v1, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;

    invoke-direct {v1, p1, p2}, Lcom/samsung/uwb/support/data/param/devicecalibration/RxAntennaDelayCalib$Calibration;-><init>(BF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0
.end method
