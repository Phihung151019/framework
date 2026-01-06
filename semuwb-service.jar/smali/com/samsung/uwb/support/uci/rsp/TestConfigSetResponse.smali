.class public Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "TestConfigSetResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TEST_CONFIG_SET_RSP"


# instance fields
.field public final numOfParam:I

.field public final status:I

.field public final tlvArray:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 18
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->status:I

    .line 21
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->status:I

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->numOfParam:I

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->tlvArray:[B

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->numOfParam:I

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->tlvArray:[B

    .line 27
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->tlvArray:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->status:I

    int-to-byte v0, v0

    .line 34
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEST_CONFIG_SET_RSP"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 33
    const-string v1, "%s, Status:0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
