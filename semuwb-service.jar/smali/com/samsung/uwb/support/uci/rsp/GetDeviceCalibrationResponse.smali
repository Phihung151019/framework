.class public Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "GetDeviceCalibrationResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GET_DEVICE_CALIBRATION_RSP"


# instance fields
.field private final rfu:I

.field private final status:I

.field private final tlvArray:[B

.field private final tlvParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "uci"    # [B

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 22
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

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

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->status:I

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->rfu:I

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    .line 27
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 28
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/data/param/devicecalibration/DeviceCalibrationParameter;->parse([BI)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvParams:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>([BB)V
    .locals 6
    .param p1, "uci"    # [B
    .param p2, "tag"    # B

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 33
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->status:I

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->rfu:I

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-byte v1, v1

    .line 39
    .local v1, "length":B
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    .line 40
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    const/4 v3, 0x0

    aput-byte p2, v2, v3

    .line 41
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    const/4 v5, 0x2

    invoke-static {v2, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    invoke-static {v2, v3}, Lcom/samsung/uwb/support/data/param/devicecalibration/DeviceCalibrationParameter;->parse([BI)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvParams:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->status:I

    return v0
.end method

.method public getTlvArray()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvArray:[B

    return-object v0
.end method

.method public getTlvParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvParams:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 60
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->status:I

    int-to-byte v1, v1

    .line 62
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET_DEVICE_CALIBRATION_RSP"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 61
    const-string v2, "%s, Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 63
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->tlvParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 64
    .local v2, "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    iget v3, v2, Lcom/samsung/uwb/support/data/param/TlvParam;->length:I

    if-nez v3, :cond_0

    .line 65
    iget-object v3, v2, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/samsung/uwb/support/data/param/devicecalibration/DeviceCalibrationParameter;->getTagName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 69
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_1
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
