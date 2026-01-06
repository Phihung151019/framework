.class public Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "DoVcoPllCalibrationCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DO_VCO_PLL_CALIBRATION_CMD"


# instance fields
.field public final channelId:I


# direct methods
.method public constructor <init>(B)V
    .locals 4
    .param p1, "channelId"    # B

    .line 26
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x20

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 30
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    iput p1, p0, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;->channelId:I

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 16
    const/16 v0, 0xf

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 20
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;->channelId:I

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    const-string v0, "INVALID"

    .line 38
    .local v0, "description":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;->channelId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 39
    const-string v0, "CHANNEL_5"

    goto :goto_0

    .line 40
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;->channelId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 41
    const-string v0, "CHANNEL_9"

    .line 43
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;->channelId:I

    int-to-byte v1, v1

    .line 44
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DO_VCO_PLL_CALIBRATION_CMD"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 43
    const-string v2, "%s, Channel=0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "log":Ljava/lang/String;
    return-object v1
.end method
