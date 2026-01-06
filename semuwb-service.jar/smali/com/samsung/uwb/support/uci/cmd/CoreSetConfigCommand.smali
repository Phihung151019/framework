.class public Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "CoreSetConfigCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CORE_SET_CONFIG_CMD"


# instance fields
.field public final numOfParam:I

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
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "tlvParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    nop

    .line 36
    invoke-static {p1}, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->getPayload(Ljava/util/List;)[B

    move-result-object v0

    .line 33
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->numOfParam:I

    .line 38
    iput-object p1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->tlvParams:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->numOfParam:I

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 28
    .local v1, "tlvArray":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->numOfParam:I

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;->parse([BI)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->tlvParams:Ljava/util/List;

    .line 30
    return-void
.end method

.method private static getPayload(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;)[B"
        }
    .end annotation

    .line 42
    .local p0, "tlvParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    const/4 v0, 0x1

    .line 43
    .local v0, "payloadLen":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 44
    .local v2, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 45
    .end local v2    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 49
    .local v3, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50
    .end local v3    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 52
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 53
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->numOfParam:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CORE_SET_CONFIG_CMD"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 59
    const-string v2, "%s, Number of Parameters:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;->tlvParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 62
    .local v2, "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 63
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
