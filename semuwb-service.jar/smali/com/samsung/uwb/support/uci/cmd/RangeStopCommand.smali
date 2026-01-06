.class public Lcom/samsung/uwb/support/uci/cmd/RangeStopCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "RangeStopCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RANGE_STOP_CMD"


# instance fields
.field public final sessionId:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "sessionId"    # J

    .line 24
    nop

    .line 27
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 28
    iput-wide p1, p0, Lcom/samsung/uwb/support/uci/cmd/RangeStopCommand;->sessionId:J

    .line 29
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 14
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/RangeStopCommand;->sessionId:J

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/samsung/uwb/support/uci/cmd/RangeStopCommand;->sessionId:J

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "RANGE_STOP_CMD"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 33
    const-string v1, "%s, SessionId:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
