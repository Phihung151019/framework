.class public Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionSetAppConfigCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_SET_APP_CONFIG_CMD"


# instance fields
.field public final numOfParam:I

.field public final sessionId:J

.field public final tlvParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 3
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p3, "tlvParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    nop

    .line 37
    invoke-static {p1, p2, p3}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->getPayload(JLjava/util/List;)[B

    move-result-object v0

    .line 34
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 38
    iput-wide p1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->sessionId:J

    .line 39
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->numOfParam:I

    .line 40
    iput-object p3, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->tlvParams:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 24
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->sessionId:J

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->numOfParam:I

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 29
    .local v1, "tlvArray":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 30
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->numOfParam:I

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;->parse([BI)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->tlvParams:Ljava/util/List;

    .line 31
    return-void
.end method

.method private static getPayload(JLjava/util/List;)[B
    .locals 5
    .param p0, "sessionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;)[B"
        }
    .end annotation

    .line 44
    .local p2, "tlvParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    const/4 v0, 0x5

    .line 45
    .local v0, "payloadLen":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 46
    .local v2, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 47
    .end local v2    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    long-to-int v2, p0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 52
    .local v3, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 53
    .end local v3    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 55
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 56
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 61
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->sessionId:J

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->numOfParam:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SESSION_SET_APP_CONFIG_CMD"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 62
    const-string v2, "%s, SessionId:%d, Number of Parameters:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 64
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;->tlvParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 65
    .local v2, "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
