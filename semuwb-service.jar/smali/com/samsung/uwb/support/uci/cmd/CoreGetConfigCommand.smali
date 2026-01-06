.class public Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "CoreGetConfigCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CORE_GET_CONFIG_CMD"


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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    nop

    .line 37
    invoke-static {p1}, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->getPayload(Ljava/util/List;)[B

    move-result-object v0

    .line 34
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->numOfParam:I

    .line 39
    iput-object p1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->params:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "payload"    # [B

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x5

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

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->numOfParam:I

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->params:Ljava/util/List;

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->numOfParam:I

    if-ge v1, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->params:Ljava/util/List;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static getPayload(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 43
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 44
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 45
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 47
    .local v3, "tag":B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    .end local v3    # "tag":B
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 51
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 56
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->numOfParam:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CORE_GET_CONFIG_CMD"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 57
    const-string v2, "%s, Number of Parameters:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;->params:Ljava/util/List;

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

    .line 60
    .local v2, "tag":B
    nop

    .line 61
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 60
    const-string v4, "Tag:0x%s, %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    .end local v2    # "tag":B
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
