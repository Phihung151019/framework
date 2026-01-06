.class public Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionInitResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_INIT_RSP"


# instance fields
.field public final sessionHandle:Ljava/lang/Long;

.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "uci"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

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

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->status:I

    .line 23
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->status:I

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->sessionHandle:Ljava/lang/Long;

    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->sessionHandle:Ljava/lang/Long;

    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 32
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->status:I

    int-to-byte v0, v0

    .line 33
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION_INIT_RSP"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 32
    const-string v1, "%s, Status:0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "log":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->sessionHandle:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 35
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->status:I

    int-to-byte v1, v1

    .line 36
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v4, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->status:I

    invoke-virtual {v3, v4}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;->sessionHandle:Ljava/lang/Long;

    filled-new-array {v2, v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 35
    const-string v2, "%s, Status:0x%s(%s), Session Handle:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method
