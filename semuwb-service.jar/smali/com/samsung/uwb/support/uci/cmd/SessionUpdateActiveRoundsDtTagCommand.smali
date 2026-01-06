.class public Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionUpdateActiveRoundsDtTagCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_UPDATE_ACTIVE_ROUNDS_DT_TAG_CMD"


# instance fields
.field public final numOfActiveRangingRounds:I

.field public final rangingRoundIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionId:J


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 20
    const/4 v0, 0x1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 25
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->sessionId:J

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->numOfActiveRangingRounds:I

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->rangingRoundIndex:Ljava/util/List;

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->numOfActiveRangingRounds:I

    if-ge v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->rangingRoundIndex:Ljava/util/List;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 37
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "SESSION_UPDATE_ACTIVE_ROUNDS_DT_TAG_CMD"

    const-string v2, ""

    const-string v3, " "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 38
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->sessionId:J

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->numOfActiveRangingRounds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 38
    const-string v2, ", SessionId:%d, Number of Active Ranging Rounds:%d, Ranging Round Indexes: "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;->rangingRoundIndex:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 41
    .local v2, "index":B
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    .end local v2    # "index":B
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
