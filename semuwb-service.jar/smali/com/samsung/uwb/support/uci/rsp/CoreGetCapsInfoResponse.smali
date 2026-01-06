.class public Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "CoreGetCapsInfoResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CORE_GET_CAPS_INFO_RSP"


# instance fields
.field private numOfParam:I

.field private final secUwbCapsInfo:Lcom/samsung/uwb/support/data/SecUwbCapsInfo;

.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "uci"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->numOfParam:I

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

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->status:I

    .line 23
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->status:I

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->secUwbCapsInfo:Lcom/samsung/uwb/support/data/SecUwbCapsInfo;

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->numOfParam:I

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 28
    .local v1, "extraData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    new-instance v2, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;

    invoke-direct {v2, v1}, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;-><init>([B)V

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->secUwbCapsInfo:Lcom/samsung/uwb/support/data/SecUwbCapsInfo;

    .line 31
    .end local v1    # "extraData":[B
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 35
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->status:I

    int-to-byte v1, v1

    .line 37
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->numOfParam:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CORE_GET_CAPS_INFO_RSP"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 36
    const-string v2, "%s, Status:0x%s(%s), Number of Parameters : %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->secUwbCapsInfo:Lcom/samsung/uwb/support/data/SecUwbCapsInfo;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;->secUwbCapsInfo:Lcom/samsung/uwb/support/data/SecUwbCapsInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
