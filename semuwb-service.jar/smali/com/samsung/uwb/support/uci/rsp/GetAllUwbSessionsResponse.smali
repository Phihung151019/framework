.class public Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "GetAllUwbSessionsResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GET_ALL_UWB_SESSIONS_RSP"


# instance fields
.field public final sessionCount:I

.field public final sessionId:[J

.field public final sessionStatus:[I

.field public final sessionType:[I

.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .param p1, "uci"    # [B

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 21
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->status:I

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    .line 25
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionId:[J

    .line 26
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionType:[I

    .line 27
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionStatus:[I

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    if-ge v1, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionId:[J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 30
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionType:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 31
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionStatus:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 37
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 38
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->status:I

    int-to-byte v1, v1

    .line 39
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GET_ALL_UWB_SESSIONS_RSP"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 38
    const-string v2, "%s, Status:0x%s(%s), Session Count:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionCount:I

    if-ge v1, v2, :cond_2

    .line 41
    const-string v2, "INVALID"

    .line 42
    .local v2, "description":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionType:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 43
    const-string v2, "RANGING"

    goto :goto_1

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionType:[I

    aget v3, v3, v1

    const/16 v4, 0xd0

    if-ne v3, v4, :cond_1

    .line 45
    const-string v2, "TEST_MODE"

    .line 47
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionId:[J

    aget-wide v3, v3, v1

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionStatus:[I

    aget v4, v4, v1

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;->sessionStatus:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/samsung/uwb/support/data/code/SessionState;->getSessionStateName(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 47
    const-string v4, "SessionId:%d, Session Type:%s, Session State:0x%s(%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    .end local v2    # "description":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
