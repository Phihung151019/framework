.class public Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionUpdateActiveRoundsDtTagResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_UPDATE_ACTIVE_ROUNDS_DT_TAG_RSP"


# instance fields
.field public final numOfRangingRounds:I

.field public final rangingRoundIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final status:I

.field private wrongValue:Z


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .param p1, "uci"    # [B

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->wrongValue:Z

    .line 22
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 23
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->status:I

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->rangingRoundIndex:Ljava/util/List;

    .line 26
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->status:I

    if-nez v2, :cond_0

    .line 27
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    .line 28
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    if-eqz v0, :cond_3

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->wrongValue:Z

    goto :goto_1

    .line 31
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->status:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    .line 33
    iget v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    if-ge v0, v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->rangingRoundIndex:Ljava/util/List;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 39
    :cond_2
    iput v0, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    .line 41
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 45
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ""

    const-string v2, " "

    const-string v3, "SESSION_UPDATE_ACTIVE_ROUNDS_DT_TAG_RSP"

    invoke-direct {v0, v2, v3, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 46
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->status:I

    int-to-byte v1, v1

    .line 47
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v4, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->status:I

    invoke-virtual {v2, v4}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->numOfRangingRounds:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 46
    const-string v2, ", Status:0x%s(%s) Number of Inactivated Ranging Rounds:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 48
    iget-boolean v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->wrongValue:Z

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "Number of Inactive Ranging Rounds should be 0 "

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 51
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->status:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 52
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;->rangingRoundIndex:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 53
    .local v2, "index":B
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    .end local v2    # "index":B
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
