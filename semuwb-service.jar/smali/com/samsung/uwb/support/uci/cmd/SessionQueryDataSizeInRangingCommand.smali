.class public Lcom/samsung/uwb/support/uci/cmd/SessionQueryDataSizeInRangingCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionQueryDataSizeInRangingCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_QUERY_DATA_SIZE_IN_RANGING_CMD"


# instance fields
.field public final sessionHandle:J


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 13
    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionQueryDataSizeInRangingCommand;->sessionHandle:J

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/samsung/uwb/support/uci/cmd/SessionQueryDataSizeInRangingCommand;->sessionHandle:J

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SESSION_QUERY_DATA_SIZE_IN_RANGING_CMD"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 24
    const-string v1, "%s, Session Handle:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
