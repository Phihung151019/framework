.class public Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "GetDeviceCalibrationCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GET_DEVICE_CALIBRATION_CMD"


# instance fields
.field public final channelId:B

.field public final tag:B


# direct methods
.method public constructor <init>(BB)V
    .locals 4
    .param p1, "channelId"    # B
    .param p2, "tag"    # B

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    const/16 v2, 0xf

    const/16 v3, 0x22

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 33
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->channelId:B

    .line 34
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->tag:B

    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 18
    const/16 v0, 0xf

    const/16 v1, 0x22

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

    iput-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->channelId:B

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->tag:B

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 39
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->channelId:B

    .line 41
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GET_DEVICE_CALIBRATION_CMD"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-string v2, "%s, Channel Id:%d, Number of Parameters:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    iget-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->tag:B

    .line 43
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;->tag:B

    invoke-static {v2}, Lcom/samsung/uwb/support/data/param/devicecalibration/DeviceCalibrationParameter;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 42
    const-string v2, "Tag:0x%s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
