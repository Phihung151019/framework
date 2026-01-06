.class public Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SetDeviceCalibrationCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SET_DEVICE_CALIBRATION_CMD"


# instance fields
.field public final channelId:B

.field public final tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;


# direct methods
.method public constructor <init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V
    .locals 4
    .param p1, "channelId"    # B
    .param p2, "tlvParam"    # Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 31
    nop

    .line 34
    invoke-static {p1, p2}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->getPayload(BLcom/samsung/uwb/support/data/param/TlvParam;)[B

    move-result-object v0

    .line 31
    const/4 v1, 0x1

    const/16 v2, 0xf

    const/16 v3, 0x21

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 35
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->channelId:B

    .line 36
    iput-object p2, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "payload"    # [B

    .line 18
    const/16 v0, 0xf

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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

    iput-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->channelId:B

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 26
    .local v1, "tlvArray":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-static {v1, v2}, Lcom/samsung/uwb/support/data/param/devicecalibration/DeviceCalibrationParameter;->parse([BI)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 28
    return-void
.end method

.method private static getPayload(BLcom/samsung/uwb/support/data/param/TlvParam;)[B
    .locals 3
    .param p0, "channelId"    # B
    .param p1, "tlvParam"    # Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 41
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 42
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 46
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->channelId:B

    .line 53
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "SET_DEVICE_CALIBRATION_CMD"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 52
    const-string v2, "%s, Channel:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
