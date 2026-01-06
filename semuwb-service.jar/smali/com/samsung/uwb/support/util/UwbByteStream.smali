.class public Lcom/samsung/uwb/support/util/UwbByteStream;
.super Ljava/lang/Object;
.source "UwbByteStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbByteStreamData"


# instance fields
.field mData:[B

.field mLimit:I

.field mOffSet:I

.field mOrder:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOrder:Ljava/nio/ByteOrder;

    .line 15
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    .line 17
    array-length v0, p1

    iput v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mLimit:I

    .line 18
    return-void
.end method

.method private checkRange(II)Z
    .locals 2
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 134
    if-gt p1, p2, :cond_1

    .line 137
    iget v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mLimit:I

    if-gt v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private readIntBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "nByte"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 110
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v2, :cond_0

    rsub-int/lit8 v1, p1, 0x4

    .line 112
    .local v1, "position":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget-object v2, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    iget v3, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    invoke-virtual {v0, v2, v3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    return-object v0
.end method

.method private readLongBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "nByte"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 120
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    rsub-int/lit8 v1, p1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, "position":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget-object v2, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    iget v3, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    invoke-virtual {v0, v2, v3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 126
    return-object v0
.end method

.method private readShortBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "nByte"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 101
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v2, :cond_0

    rsub-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, p1

    .line 103
    .local v1, "position":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget-object v2, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    iget v3, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    invoke-virtual {v0, v2, v3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 106
    return-object v0
.end method

.method private updateOffSet(I)V
    .locals 1
    .param p1, "value"    # I

    .line 130
    iget v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    .line 131
    return-void
.end method


# virtual methods
.method public copyByteArray(II)[B
    .locals 2
    .param p1, "startOffset"    # I
    .param p2, "size"    # I

    .line 96
    iget-object v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public hasRemaining()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    iget v1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()B
    .locals 3

    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 26
    iget-object v1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    iget v2, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    aget-byte v1, v1, v2

    .line 27
    .local v1, "value":B
    invoke-direct {p0, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 28
    return v1
.end method

.method public read(I)[B
    .locals 3
    .param p1, "nByte"    # I

    .line 33
    iget v0, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mLimit:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 34
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mData:[B

    iget v2, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public readAsInt(I)I
    .locals 2
    .param p1, "nByte"    # I

    .line 63
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 64
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->readIntBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method public readAsIntLE(I)I
    .locals 2
    .param p1, "nByte"    # I

    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 71
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->readIntBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method public readAsLong(I)J
    .locals 3
    .param p1, "nByte"    # I

    .line 77
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 78
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->readLongBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public readAsLongLE(I)J
    .locals 3
    .param p1, "nByte"    # I

    .line 84
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 85
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->readLongBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public readAsShort(I)S
    .locals 2
    .param p1, "nByte"    # I

    .line 49
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 50
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->readShortBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    return v1
.end method

.method public readAsShortLE(I)S
    .locals 2
    .param p1, "nByte"    # I

    .line 56
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->checkRange(II)Z

    .line 57
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->readShortBuffer(ILjava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->updateOffSet(I)V

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    return v1
.end method

.method public readReverse(I)[B
    .locals 2
    .param p1, "nByte"    # I

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;->read(I)[B

    move-result-object v0

    .line 44
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getReverseArray([B)[B

    move-result-object v1

    return-object v1
.end method

.method public setOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 21
    iput-object p1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOrder:Ljava/nio/ByteOrder;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currnet offset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mOffSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/util/UwbByteStream;->mLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
