.class public Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "DoVcoPllCalibrationResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DO_VCO_PLL_CALIBRATION_RSP"


# instance fields
.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 15
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;->status:I

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;->status:I

    int-to-byte v0, v0

    .line 24
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DO_VCO_PLL_CALIBRATION_RSP"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 23
    const-string v1, "%s, Status:0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
