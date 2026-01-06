.class public Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "CoreGetDeviceInfoResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CORE_GET_DEVICE_INFO_RSP"


# instance fields
.field private final secUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "uci"    # [B

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 19
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->status:I

    .line 22
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->status:I

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->secUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 26
    .local v1, "extraData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    new-instance v2, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    invoke-direct {v2, v1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;-><init>([B)V

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->secUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    .line 29
    .end local v1    # "extraData":[B
    :goto_0
    return-void
.end method


# virtual methods
.method public getSecUwbDeviceInfo()Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->secUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 41
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->status:I

    int-to-byte v1, v1

    .line 43
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CORE_GET_DEVICE_INFO_RSP"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 42
    const-string v2, "%s, Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->secUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 45
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
