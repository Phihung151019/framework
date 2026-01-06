.class public Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "DoVcoPllCalibrationNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DO_VCO_PLL_CALIBRATION_NTF"


# instance fields
.field private final status:I

.field private final vendorSpecificData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 17
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->status:I

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->vendorSpecificData:[B

    .line 22
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->vendorSpecificData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->vendorSpecificData:[B

    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->status:I

    return v0
.end method

.method public getVendorSpecificData()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->vendorSpecificData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 38
    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->status:I

    int-to-byte v0, v0

    .line 39
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;->vendorSpecificData:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DO_VCO_PLL_CALIBRATION_NTF"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 38
    const-string v1, "%s, Status:0x%s(%s), VendorSpecificData:0x%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
