.class public Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionUpdateControllerMulticastListCommand.java"


# static fields
.field public static final ACTION_ADD_CONTROLEE:B = 0x0t

.field public static final ACTION_ADD_CONTROLEE_16_OCTET_SUB_SESSION_KEY:B = 0x2t

.field public static final ACTION_ADD_CONTROLEE_32_OCTET_SUB_SESSION_KEY:B = 0x3t

.field public static final ACTION_DELETE_CONTROLEE:B = 0x1t

.field public static final TAG:Ljava/lang/String; = "SESSION_UPDATE_CONTROLLER_MULTICAST_LIST_CMD"


# instance fields
.field public final action:I

.field public final addressList:[S

.field public final numOfControlee:I

.field public final sessionId:J

.field public final subSessionIdList:[I

.field public final subSessionKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 28
    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 32
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->sessionId:J

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->numOfControlee:I

    .line 38
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->numOfControlee:I

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->addressList:[S

    .line 39
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->numOfControlee:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->subSessionIdList:[I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->subSessionKeyList:Ljava/util/List;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->numOfControlee:I

    if-ge v1, v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->addressList:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 44
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->subSessionIdList:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 46
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 47
    const/16 v2, 0x10

    new-array v2, v2, [B

    .local v2, "subSessionKey":[B
    goto :goto_1

    .line 48
    .end local v2    # "subSessionKey":[B
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 49
    const/16 v2, 0x20

    new-array v2, v2, [B

    .restart local v2    # "subSessionKey":[B
    goto :goto_1

    .line 51
    .end local v2    # "subSessionKey":[B
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 53
    .restart local v2    # "subSessionKey":[B
    :goto_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->subSessionKeyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v2    # "subSessionKey":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 60
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "INVALID"

    .line 62
    .local v1, "description":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    if-nez v2, :cond_0

    .line 63
    const-string v1, "ADD CONTROLEE"

    goto :goto_0

    .line 64
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 65
    const-string v1, "DELETE CONTROLEE"

    goto :goto_0

    .line 66
    :cond_1
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 67
    const-string v1, "ADD CONTROLEE WITH 16-OCTET SUB-SESSION KEY"

    goto :goto_0

    .line 68
    :cond_2
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->action:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 69
    const-string v1, "ADD CONTROLEE WITH 32-OCTET SUB-SESSION KEY"

    .line 71
    :cond_3
    :goto_0
    iget-wide v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->sessionId:J

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->numOfControlee:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SESSION_UPDATE_CONTROLLER_MULTICAST_LIST_CMD"

    filled-new-array {v4, v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 71
    const-string v3, "%s, SessionId: %d%nAction: %s%nNumber of Controlee: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->numOfControlee:I

    if-ge v2, v3, :cond_4

    .line 74
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 75
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->addressList:[S

    aget-short v3, v3, v2

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Short Address: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 76
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->subSessionIdList:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Sub-Session Id: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;->subSessionKeyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Sub-Session Key: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
