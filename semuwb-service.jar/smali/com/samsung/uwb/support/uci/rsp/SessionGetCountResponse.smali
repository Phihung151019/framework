.class public Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionGetCountResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_GET_COUNT_RSP"


# instance fields
.field public final sessionCount:I

.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 16
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;->status:I

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;->sessionCount:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 24
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;->status:I

    int-to-byte v0, v0

    .line 25
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;->sessionCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SESSION_GET_COUNT_RSP"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 24
    const-string v1, "%s, Status:0x%s(%s), Value:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
