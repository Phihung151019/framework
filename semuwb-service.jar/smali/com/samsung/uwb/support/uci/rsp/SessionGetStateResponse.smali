.class public Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionGetStateResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_GET_STATE_RSP"


# instance fields
.field public final sessionState:I

.field public final status:I


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

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->status:I

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->sessionState:I

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 25
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->status:I

    int-to-byte v0, v0

    .line 26
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->sessionState:I

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;->sessionState:I

    invoke-static {v3}, Lcom/samsung/uwb/support/data/code/SessionState;->getSessionStateName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SESSION_GET_STATE_RSP"

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 25
    const-string v1, "%s, Status:0x%s(%s), Session State:0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
