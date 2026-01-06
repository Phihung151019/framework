.class public Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionInitCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_INIT_CMD"


# instance fields
.field public final sessionId:J

.field public final sessionType:I


# direct methods
.method public constructor <init>(JI)V
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "sessionType"    # I

    .line 26
    nop

    .line 29
    invoke-static {p1, p2, p3}, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->getPayload(JI)[B

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 30
    iput-wide p1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionId:J

    .line 31
    iput p3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionType:I

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionId:J

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionType:I

    .line 23
    return-void
.end method

.method private static getPayload(JI)[B
    .locals 4
    .param p0, "sessionId"    # J
    .param p2, "sessionType"    # I

    .line 35
    const/4 v0, 0x5

    .line 36
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 37
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    long-to-int v3, p0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-byte v3, p2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 41
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    const-string v0, "INVALID"

    .line 47
    .local v0, "description":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionType:I

    if-nez v1, :cond_0

    .line 48
    const-string v0, "RANGING"

    goto :goto_0

    .line 49
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionType:I

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_1

    .line 50
    const-string v0, "TEST_MODE"

    goto :goto_0

    .line 51
    :cond_1
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionType:I

    const/16 v2, 0xa2

    if-ne v1, v2, :cond_2

    .line 52
    const-string v0, "Aliro Ranging"

    .line 55
    :cond_2
    :goto_0
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;->sessionId:J

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SESSION_INIT_CMD"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 55
    const-string v2, "%s, SessionId:%d, Session Type:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "log":Ljava/lang/String;
    return-object v1
.end method
