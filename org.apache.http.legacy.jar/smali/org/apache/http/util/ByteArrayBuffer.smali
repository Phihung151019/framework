.class public final Lorg/apache/http/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-ltz p1, :cond_0

    .line 58
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .line 62
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 63
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 65
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 4
    .param p1, "b"    # I

    .line 87
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 88
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 92
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 93
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 118
    if-nez p1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([CII)V

    .line 122
    return-void
.end method

.method public append([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 68
    if-nez p1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 75
    if-nez p3, :cond_1

    .line 76
    return-void

    .line 78
    :cond_1
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 79
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 82
    :cond_2
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 84
    return-void

    .line 73
    .end local v0    # "newlen":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public append([CII)V
    .locals 6
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    if-ltz p2, :cond_4

    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 103
    if-nez p3, :cond_1

    .line 104
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 107
    .local v0, "oldlen":I
    add-int v1, v0, p3

    .line 108
    .local v1, "newlen":I
    iget-object v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 109
    invoke-direct {p0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 111
    :cond_2
    move v2, p2

    .local v2, "i1":I
    move v3, v0

    .local v3, "i2":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 112
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-char v5, p1, v2

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    :cond_3
    iput v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 115
    return-void

    .line 101
    .end local v0    # "oldlen":I
    .end local v1    # "newlen":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public buffer()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .locals 1
    .param p1, "i"    # I

    .line 137
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 126
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 160
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 164
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 153
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 156
    iput p1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 129
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    new-array v0, v0, [B

    .line 130
    .local v0, "b":[B
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_0
    return-object v0
.end method
