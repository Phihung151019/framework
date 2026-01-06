.class public Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionSetHusControllerConfigCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_SET_HUS_CONTROLLER_CONFIG_CMD"


# instance fields
.field public final endSlotIndexs:[I

.field public final macAddress:[[B

.field public final numberOfPhases:I

.field public final phaseParticipations:[I

.field public final secondarySessionIds:[J

.field public final sessionId:J

.field public final startSlotIndexs:[I

.field public final updateTime:J


# direct methods
.method public constructor <init>([B)V
    .locals 8
    .param p1, "payload"    # [B

    .line 32
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 36
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->sessionId:J

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->updateTime:J

    .line 41
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->secondarySessionIds:[J

    .line 42
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->startSlotIndexs:[I

    .line 43
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->endSlotIndexs:[I

    .line 44
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->phaseParticipations:[I

    .line 45
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    const/4 v3, 0x2

    new-array v6, v3, [I

    aput v3, v6, v1

    const/4 v1, 0x0

    aput v2, v6, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->macAddress:[[B

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    if-ge v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->secondarySessionIds:[J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    aput-wide v6, v2, v1

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 49
    .local v2, "slot":I
    iget-object v6, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->startSlotIndexs:[I

    aput v2, v6, v1

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    and-int v2, v6, v3

    .line 51
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->endSlotIndexs:[I

    aput v2, v3, v1

    .line 52
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->phaseParticipations:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput v6, v3, v1

    .line 53
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->macAddress:[[B

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 46
    .end local v2    # "slot":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 59
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->sessionId:J

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SESSION_SET_HUS_CONTROLLER_CONFIG_CMD"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 60
    const-string v2, "%s, SessionId:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 62
    const-string v2, "Number of Phases:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 64
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->updateTime:J

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 64
    const-string v2, "Update Time:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->numberOfPhases:I

    if-ge v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->secondarySessionIds:[J

    aget-wide v2, v2, v1

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->startSlotIndexs:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->endSlotIndexs:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->phaseParticipations:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;->macAddress:[[B

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 67
    const-string v3, "Secondary SessionId: %d,  Start SlotIndex: %d,  End SlotIndex: %d,  Phase Participation: %d,  MAC address: 0x%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
