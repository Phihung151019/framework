.class public Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionGetAppConfigCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_GET_APP_CONFIG_CMD"


# instance fields
.field public final numOfParam:I

.field public final params:Ljava/util/List;
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
.method public constructor <init>(JLjava/util/List;)V
    .locals 3
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    nop

    .line 39
    invoke-static {p1, p2, p3}, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->getPayload(JLjava/util/List;)[B

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 40
    iput-wide p1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->sessionId:J

    .line 41
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->numOfParam:I

    .line 42
    iput-object p3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->params:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x4

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

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->sessionId:J

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->numOfParam:I

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->params:Ljava/util/List;

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->numOfParam:I

    if-ge v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->params:Ljava/util/List;

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

.method private static getPayload(JLjava/util/List;)[B
    .locals 4
    .param p0, "sessionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 46
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 47
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 48
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    long-to-int v2, p0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 51
    .local v3, "tag":B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    .end local v3    # "tag":B
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 54
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 55
    .local v2, "payload":[B
    return-object v2
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
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->sessionId:J

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->numOfParam:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SESSION_GET_APP_CONFIG_CMD"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 61
    const-string v2, "%s, SessionId:%d, Number of Parameters:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 63
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;->params:Ljava/util/List;

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

    .line 64
    .local v2, "tag":B
    nop

    .line 65
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 64
    const-string v4, "Tag:0x%s, %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    .end local v2    # "tag":B
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
