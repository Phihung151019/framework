.class public Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionQueryDataSizeInRangingResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_QUERY_DATA_SIZE_IN_RANGING_RSP"


# instance fields
.field public final dataSize:I

.field public final sessionHandle:Ljava/lang/Long;

.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "uci"    # [B

    .line 18
    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 23
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->sessionHandle:Ljava/lang/Long;

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->status:I

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->dataSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    const-string v2, "SESSION_QUERY_DATA_SIZE_IN_RANGING_RSP"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 38
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 39
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->sessionHandle:Ljava/lang/Long;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Session Handle: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->status:I

    int-to-byte v1, v1

    .line 41
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-string v2, "Status: 0x%s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;->dataSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Max Application Data Size: %s bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
