.class public Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionSetHusControleeConfigCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_SET_HUS_CONTROLEE_CONFIG"


# instance fields
.field public final numberOfPhases:I

.field public final phaseParticipations:[I

.field public final secondarySessionIds:[J

.field public final sessionId:J


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .param p1, "payload"    # [B

    .line 23
    const/4 v0, 0x1

    const/16 v1, 0xd

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 27
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->sessionId:J

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->numberOfPhases:I

    .line 31
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->numberOfPhases:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->secondarySessionIds:[J

    .line 32
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->numberOfPhases:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->phaseParticipations:[I

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->numberOfPhases:I

    if-ge v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->secondarySessionIds:[J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    aput-wide v5, v2, v1

    .line 35
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->phaseParticipations:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput v5, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 41
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->sessionId:J

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SESSION_SET_HUS_CONTROLEE_CONFIG"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 42
    const-string v2, "%s, SessionId:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->numberOfPhases:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 44
    const-string v2, "Number of Phases:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->numberOfPhases:I

    if-ge v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->secondarySessionIds:[J

    aget-wide v2, v2, v1

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;->phaseParticipations:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 47
    const-string v3, "Secondary SessionId: %d,  Phase Participation: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
