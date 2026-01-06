.class public Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "UrskDeleteCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "URSK_DELETE_CMD"


# instance fields
.field public final numOfSession:I

.field public final sessionId:[I


# direct methods
.method public constructor <init>(B[I)V
    .locals 3
    .param p1, "numOfSession"    # B
    .param p2, "sessionId"    # [I

    .line 30
    nop

    .line 33
    invoke-static {p1, p2}, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->getPayload(B[I)[B

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 34
    iput p1, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->numOfSession:I

    .line 35
    iput-object p2, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->sessionId:[I

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "payload"    # [B

    .line 16
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 20
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->numOfSession:I

    .line 23
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->numOfSession:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->sessionId:[I

    .line 24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->numOfSession:I

    if-ge v1, v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->sessionId:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static getPayload(B[I)[B
    .locals 5
    .param p0, "numOfSession"    # B
    .param p1, "sessionId"    # [I

    .line 39
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 40
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 41
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 42
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 43
    .local v4, "id":I
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 46
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 47
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 52
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->numOfSession:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URSK_DELETE_CMD"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 53
    const-string v2, "%s, Number of SessionId:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 55
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;->sessionId:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 56
    .local v4, "data":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "SessionId:%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 55
    .end local v4    # "data":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
