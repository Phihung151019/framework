.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 6
    .line 7
    const/16 v1, 0x400

    .line 8
    .line 9
    new-array v1, v1, [C

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 12
    .line 13
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 14
    .line 15
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 18
    .line 19
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 20
    .line 21
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    new-array v2, v1, [I

    .line 26
    .line 27
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 31
    .line 32
    const/4 v3, 0x6

    .line 33
    aput v3, v2, v0

    .line 34
    .line 35
    new-array v0, v1, [Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 38
    .line 39
    new-array v0, v1, [I

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 44
    .line 45
    return-void
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method private fillBuffer(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 17
    .line 18
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 23
    .line 24
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 27
    .line 28
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 29
    .line 30
    array-length v4, v0

    .line 31
    sub-int/2addr v4, v2

    .line 32
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 43
    .line 44
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    aget-char v5, v0, v3

    .line 56
    .line 57
    const v6, 0xfeff

    .line 58
    .line 59
    .line 60
    if-ne v5, v6, :cond_2

    .line 61
    .line 62
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 63
    .line 64
    add-int/2addr v5, v4

    .line 65
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    :cond_2
    if-lt v2, p1, :cond_1

    .line 74
    .line 75
    return v4

    .line 76
    :cond_3
    return v3
.end method

.method private isLiteral(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x3d

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7b

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x7d

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3a

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3b

    .line 50
    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 6
    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-ne v1, v2, :cond_2

    .line 9
    .line 10
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 11
    .line 12
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "End of input"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    .line 48
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 49
    .line 50
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 51
    .line 52
    aget-char v5, v0, v1

    .line 53
    .line 54
    const/16 v6, 0xa

    .line 55
    .line 56
    if-ne v5, v6, :cond_3

    .line 57
    .line 58
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 59
    .line 60
    add-int/2addr v1, v3

    .line 61
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 62
    .line 63
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_3
    const/16 v7, 0x20

    .line 68
    .line 69
    if-eq v5, v7, :cond_f

    .line 70
    .line 71
    const/16 v7, 0xd

    .line 72
    .line 73
    if-eq v5, v7, :cond_f

    .line 74
    .line 75
    const/16 v7, 0x9

    .line 76
    .line 77
    if-ne v5, v7, :cond_4

    .line 78
    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_4
    const/16 v7, 0x2f

    .line 82
    .line 83
    if-ne v5, v7, :cond_d

    .line 84
    .line 85
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 86
    .line 87
    const/4 v8, 0x2

    .line 88
    if-ne v4, v2, :cond_5

    .line 89
    .line 90
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 91
    .line 92
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 97
    .line 98
    add-int/2addr v2, v3

    .line 99
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 100
    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 105
    .line 106
    .line 107
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 108
    .line 109
    aget-char v2, v0, v1

    .line 110
    .line 111
    const/16 v4, 0x2a

    .line 112
    .line 113
    if-eq v2, v4, :cond_7

    .line 114
    .line 115
    if-eq v2, v7, :cond_6

    .line 116
    .line 117
    :goto_1
    return v5

    .line 118
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 126
    .line 127
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 133
    .line 134
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 135
    .line 136
    add-int/2addr v1, v8

    .line 137
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 138
    .line 139
    if-le v1, v2, :cond_9

    .line 140
    .line 141
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    const-string p1, "Unterminated comment"

    .line 149
    .line 150
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 p0, 0x0

    .line 154
    throw p0

    .line 155
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 156
    .line 157
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 158
    .line 159
    aget-char v1, v1, v2

    .line 160
    .line 161
    if-ne v1, v6, :cond_a

    .line 162
    .line 163
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 164
    .line 165
    add-int/2addr v1, v3

    .line 166
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    const/4 v1, 0x0

    .line 174
    :goto_4
    if-ge v1, v8, :cond_c

    .line 175
    .line 176
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 177
    .line 178
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 179
    .line 180
    add-int/2addr v4, v1

    .line 181
    aget-char v2, v2, v4

    .line 182
    .line 183
    const-string v4, "*/"

    .line 184
    .line 185
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eq v2, v4, :cond_b

    .line 190
    .line 191
    :goto_5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 192
    .line 193
    add-int/2addr v1, v3

    .line 194
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_c
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 201
    .line 202
    add-int/2addr v1, v8

    .line 203
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_d
    const/16 v1, 0x23

    .line 208
    .line 209
    if-ne v5, v1, :cond_e

    .line 210
    .line 211
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 212
    .line 213
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 217
    .line 218
    .line 219
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 220
    .line 221
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_e
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 226
    .line 227
    return v5

    .line 228
    :cond_f
    :goto_6
    move v1, v4

    .line 229
    goto/16 :goto_0
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    .line 9
    :goto_1
    move v5, v4

    .line 10
    move v4, v3

    .line 11
    :goto_2
    const/4 v6, 0x1

    .line 12
    const/16 v7, 0x10

    .line 13
    .line 14
    if-ge v3, v5, :cond_15

    .line 15
    .line 16
    add-int/lit8 v8, v3, 0x1

    .line 17
    .line 18
    aget-char v3, v0, v3

    .line 19
    .line 20
    if-ne v3, p1, :cond_1

    .line 21
    .line 22
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 23
    .line 24
    sub-int/2addr v8, v4

    .line 25
    sub-int/2addr v8, v6

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {p0, v0, v4, v8}, Ljava/lang/String;-><init>([CII)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    invoke-virtual {v2, v0, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    const/16 v9, 0xa

    .line 43
    .line 44
    const/16 v10, 0x5c

    .line 45
    .line 46
    if-ne v3, v10, :cond_13

    .line 47
    .line 48
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 49
    .line 50
    sub-int/2addr v8, v4

    .line 51
    add-int/lit8 v3, v8, -0x1

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    mul-int/lit8 v8, v8, 0x2

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 70
    .line 71
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 72
    .line 73
    const-string v5, "Unterminated escape sequence"

    .line 74
    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 89
    .line 90
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 91
    .line 92
    add-int/lit8 v7, v4, 0x1

    .line 93
    .line 94
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 95
    .line 96
    aget-char v3, v3, v4

    .line 97
    .line 98
    if-eq v3, v9, :cond_11

    .line 99
    .line 100
    const/16 v6, 0x22

    .line 101
    .line 102
    if-eq v3, v6, :cond_10

    .line 103
    .line 104
    const/16 v6, 0x27

    .line 105
    .line 106
    if-eq v3, v6, :cond_10

    .line 107
    .line 108
    const/16 v6, 0x2f

    .line 109
    .line 110
    if-eq v3, v6, :cond_10

    .line 111
    .line 112
    if-eq v3, v10, :cond_10

    .line 113
    .line 114
    const/16 v6, 0x62

    .line 115
    .line 116
    if-eq v3, v6, :cond_f

    .line 117
    .line 118
    const/16 v6, 0x66

    .line 119
    .line 120
    if-eq v3, v6, :cond_e

    .line 121
    .line 122
    const/16 v7, 0x6e

    .line 123
    .line 124
    if-eq v3, v7, :cond_12

    .line 125
    .line 126
    const/16 v7, 0x72

    .line 127
    .line 128
    if-eq v3, v7, :cond_d

    .line 129
    .line 130
    const/16 v7, 0x74

    .line 131
    .line 132
    if-eq v3, v7, :cond_c

    .line 133
    .line 134
    const/16 v7, 0x75

    .line 135
    .line 136
    if-ne v3, v7, :cond_b

    .line 137
    .line 138
    add-int/lit8 v4, v4, 0x5

    .line 139
    .line 140
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 141
    .line 142
    const/4 v7, 0x4

    .line 143
    if-le v4, v3, :cond_6

    .line 144
    .line 145
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v1

    .line 156
    :cond_6
    :goto_4
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 157
    .line 158
    add-int/lit8 v4, v3, 0x4

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    move v9, v5

    .line 162
    :goto_5
    if-ge v3, v4, :cond_a

    .line 163
    .line 164
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 165
    .line 166
    aget-char v5, v5, v3

    .line 167
    .line 168
    shl-int/lit8 v8, v9, 0x4

    .line 169
    .line 170
    int-to-char v8, v8

    .line 171
    const/16 v9, 0x30

    .line 172
    .line 173
    if-lt v5, v9, :cond_7

    .line 174
    .line 175
    const/16 v9, 0x39

    .line 176
    .line 177
    if-gt v5, v9, :cond_7

    .line 178
    .line 179
    add-int/lit8 v5, v5, -0x30

    .line 180
    .line 181
    :goto_6
    add-int/2addr v5, v8

    .line 182
    int-to-char v5, v5

    .line 183
    move v9, v5

    .line 184
    goto :goto_7

    .line 185
    :cond_7
    const/16 v9, 0x61

    .line 186
    .line 187
    if-lt v5, v9, :cond_8

    .line 188
    .line 189
    if-gt v5, v6, :cond_8

    .line 190
    .line 191
    add-int/lit8 v5, v5, -0x57

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_8
    const/16 v9, 0x41

    .line 195
    .line 196
    if-lt v5, v9, :cond_9

    .line 197
    .line 198
    const/16 v9, 0x46

    .line 199
    .line 200
    if-gt v5, v9, :cond_9

    .line 201
    .line 202
    add-int/lit8 v5, v5, -0x37

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 209
    .line 210
    new-instance v0, Ljava/lang/String;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 213
    .line 214
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 215
    .line 216
    invoke-direct {v0, v1, p0, v7}, Ljava/lang/String;-><init>([CII)V

    .line 217
    .line 218
    .line 219
    const-string p0, "\\u"

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_a
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 230
    .line 231
    add-int/2addr v3, v7

    .line 232
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_b
    const-string p1, "Invalid escape sequence"

    .line 236
    .line 237
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v1

    .line 241
    :cond_c
    const/16 v9, 0x9

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_d
    const/16 v9, 0xd

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_e
    const/16 v9, 0xc

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_f
    const/16 v9, 0x8

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_10
    :goto_8
    move v9, v3

    .line 254
    goto :goto_9

    .line 255
    :cond_11
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 256
    .line 257
    add-int/2addr v4, v6

    .line 258
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 259
    .line 260
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_12
    :goto_9
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 267
    .line 268
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_13
    if-ne v3, v9, :cond_14

    .line 273
    .line 274
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 275
    .line 276
    add-int/2addr v3, v6

    .line 277
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 278
    .line 279
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 280
    .line 281
    :cond_14
    move v3, v8

    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_15
    if-nez v2, :cond_16

    .line 285
    .line 286
    sub-int v2, v3, v4

    .line 287
    .line 288
    mul-int/lit8 v2, v2, 0x2

    .line 289
    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    .line 298
    .line 299
    move-object v2, v5

    .line 300
    :cond_16
    sub-int v5, v3, v4

    .line 301
    .line 302
    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 306
    .line 307
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_17

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_17
    const-string p1, "Unterminated string"

    .line 316
    .line 317
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    .line 6
    add-int v4, v3, v2

    .line 7
    .line 8
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 9
    .line 10
    if-ge v4, v5, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 13
    .line 14
    add-int/2addr v3, v2

    .line 15
    aget-char v3, v4, v3

    .line 16
    .line 17
    const/16 v4, 0x9

    .line 18
    .line 19
    if-eq v3, v4, :cond_3

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    if-eq v3, v4, :cond_3

    .line 24
    .line 25
    const/16 v4, 0xc

    .line 26
    .line 27
    if-eq v3, v4, :cond_3

    .line 28
    .line 29
    const/16 v4, 0xd

    .line 30
    .line 31
    if-eq v3, v4, :cond_3

    .line 32
    .line 33
    const/16 v4, 0x20

    .line 34
    .line 35
    if-eq v3, v4, :cond_3

    .line 36
    .line 37
    const/16 v4, 0x23

    .line 38
    .line 39
    if-eq v3, v4, :cond_1

    .line 40
    .line 41
    const/16 v4, 0x2c

    .line 42
    .line 43
    if-eq v3, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x2f

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    const/16 v4, 0x3d

    .line 50
    .line 51
    if-eq v3, v4, :cond_1

    .line 52
    .line 53
    const/16 v4, 0x7b

    .line 54
    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    const/16 v4, 0x7d

    .line 58
    .line 59
    if-eq v3, v4, :cond_3

    .line 60
    .line 61
    const/16 v4, 0x3a

    .line 62
    .line 63
    if-eq v3, v4, :cond_3

    .line 64
    .line 65
    const/16 v4, 0x3b

    .line 66
    .line 67
    if-eq v3, v4, :cond_1

    .line 68
    .line 69
    packed-switch v3, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 80
    .line 81
    array-length v3, v3

    .line 82
    if-ge v2, v3, :cond_4

    .line 83
    .line 84
    add-int/lit8 v3, v2, 0x1

    .line 85
    .line 86
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    if-nez v0, :cond_5

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const/16 v3, 0x10

    .line 100
    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 109
    .line 110
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 111
    .line 112
    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 116
    .line 117
    add-int/2addr v3, v2

    .line 118
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_0

    .line 126
    .line 127
    :goto_2
    if-nez v0, :cond_6

    .line 128
    .line 129
    new-instance v0, Ljava/lang/String;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 132
    .line 133
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 134
    .line 135
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 140
    .line 141
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 142
    .line 143
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 151
    .line 152
    add-int/2addr v2, v1

    .line 153
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 154
    .line 155
    return-object v0

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private push(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 35
    .line 36
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 37
    .line 38
    add-int/lit8 v2, v1, 0x1

    .line 39
    .line 40
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 41
    .line 42
    aput p1, v0, v1

    .line 43
    .line 44
    return-void
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 17
    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 21
    .line 22
    aget-char v0, v0, v1

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 32
    .line 33
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    .line 24
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Expected BEGIN_ARRAY but was "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Expected BEGIN_OBJECT but was "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method final doPeek()I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 4
    .line 5
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v2, v3

    .line 9
    aget v4, v1, v2

    .line 10
    .line 11
    const/16 v8, 0xa

    .line 12
    .line 13
    const/16 v10, 0x27

    .line 14
    .line 15
    const/4 v11, 0x6

    .line 16
    const/16 v12, 0x5d

    .line 17
    .line 18
    const/16 v13, 0x3b

    .line 19
    .line 20
    const/16 v14, 0x2c

    .line 21
    .line 22
    const/4 v15, 0x3

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/4 v5, 0x7

    .line 26
    const/4 v6, 0x4

    .line 27
    const/4 v7, 0x5

    .line 28
    const/4 v9, 0x2

    .line 29
    if-ne v4, v3, :cond_1

    .line 30
    .line 31
    aput v9, v1, v2

    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    if-ne v4, v9, :cond_4

    .line 37
    .line 38
    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eq v1, v14, :cond_0

    .line 43
    .line 44
    if-eq v1, v13, :cond_3

    .line 45
    .line 46
    if-ne v1, v12, :cond_2

    .line 47
    .line 48
    iput v6, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 49
    .line 50
    return v6

    .line 51
    :cond_2
    const-string v1, "Unterminated array"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v16

    .line 57
    :cond_3
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const/16 v9, 0x7d

    .line 62
    .line 63
    if-eq v4, v15, :cond_5

    .line 64
    .line 65
    if-ne v4, v7, :cond_6

    .line 66
    .line 67
    :cond_5
    move/from16 v19, v6

    .line 68
    .line 69
    goto/16 :goto_19

    .line 70
    .line 71
    :cond_6
    if-ne v4, v6, :cond_9

    .line 72
    .line 73
    aput v7, v1, v2

    .line 74
    .line 75
    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/16 v2, 0x3a

    .line 80
    .line 81
    if-eq v1, v2, :cond_0

    .line 82
    .line 83
    const/16 v2, 0x3d

    .line 84
    .line 85
    if-ne v1, v2, :cond_8

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 88
    .line 89
    .line 90
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 91
    .line 92
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 93
    .line 94
    if-lt v1, v2, :cond_7

    .line 95
    .line 96
    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    .line 102
    :cond_7
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 103
    .line 104
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 105
    .line 106
    aget-char v1, v1, v2

    .line 107
    .line 108
    const/16 v9, 0x3e

    .line 109
    .line 110
    if-ne v1, v9, :cond_0

    .line 111
    .line 112
    add-int/2addr v2, v3

    .line 113
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    const-string v1, "Expected \':\'"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v16

    .line 122
    :cond_9
    if-ne v4, v11, :cond_d

    .line 123
    .line 124
    iget-boolean v1, v0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 125
    .line 126
    if-eqz v1, :cond_c

    .line 127
    .line 128
    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 129
    .line 130
    .line 131
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 132
    .line 133
    add-int/lit8 v2, v1, -0x1

    .line 134
    .line 135
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x4

    .line 138
    .line 139
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 140
    .line 141
    if-le v1, v2, :cond_a

    .line 142
    .line 143
    invoke-direct {v0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_a

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_a
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 151
    .line 152
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 153
    .line 154
    aget-char v6, v2, v1

    .line 155
    .line 156
    const/16 v11, 0x29

    .line 157
    .line 158
    if-ne v6, v11, :cond_c

    .line 159
    .line 160
    add-int/lit8 v6, v1, 0x1

    .line 161
    .line 162
    aget-char v6, v2, v6

    .line 163
    .line 164
    if-ne v6, v12, :cond_c

    .line 165
    .line 166
    add-int/lit8 v6, v1, 0x2

    .line 167
    .line 168
    aget-char v6, v2, v6

    .line 169
    .line 170
    if-ne v6, v9, :cond_c

    .line 171
    .line 172
    add-int/lit8 v6, v1, 0x3

    .line 173
    .line 174
    aget-char v6, v2, v6

    .line 175
    .line 176
    if-ne v6, v10, :cond_c

    .line 177
    .line 178
    add-int/lit8 v6, v1, 0x4

    .line 179
    .line 180
    aget-char v2, v2, v6

    .line 181
    .line 182
    if-eq v2, v8, :cond_b

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_b
    add-int/2addr v1, v7

    .line 186
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 187
    .line 188
    :cond_c
    :goto_1
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 189
    .line 190
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 191
    .line 192
    sub-int/2addr v2, v3

    .line 193
    aput v5, v1, v2

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_d
    if-ne v4, v5, :cond_f

    .line 198
    .line 199
    const/4 v1, 0x0

    .line 200
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    const/4 v6, -0x1

    .line 205
    if-ne v2, v6, :cond_e

    .line 206
    .line 207
    const/16 v1, 0x11

    .line 208
    .line 209
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 210
    .line 211
    return v1

    .line 212
    :cond_e
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 213
    .line 214
    .line 215
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 216
    .line 217
    sub-int/2addr v2, v3

    .line 218
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_f
    const/4 v1, 0x0

    .line 222
    const/16 v2, 0x8

    .line 223
    .line 224
    if-eq v4, v2, :cond_42

    .line 225
    .line 226
    :goto_2
    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    const/16 v6, 0x22

    .line 231
    .line 232
    if-eq v2, v6, :cond_41

    .line 233
    .line 234
    if-eq v2, v10, :cond_40

    .line 235
    .line 236
    if-eq v2, v14, :cond_3c

    .line 237
    .line 238
    if-eq v2, v13, :cond_3c

    .line 239
    .line 240
    const/16 v6, 0x5b

    .line 241
    .line 242
    if-eq v2, v6, :cond_3b

    .line 243
    .line 244
    if-eq v2, v12, :cond_3a

    .line 245
    .line 246
    const/16 v4, 0x7b

    .line 247
    .line 248
    if-eq v2, v4, :cond_39

    .line 249
    .line 250
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 251
    .line 252
    sub-int/2addr v2, v3

    .line 253
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 254
    .line 255
    iget-object v4, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 256
    .line 257
    aget-char v2, v4, v2

    .line 258
    .line 259
    const/16 v4, 0x74

    .line 260
    .line 261
    if-eq v2, v4, :cond_15

    .line 262
    .line 263
    const/16 v4, 0x54

    .line 264
    .line 265
    if-ne v2, v4, :cond_10

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_10
    const/16 v4, 0x66

    .line 269
    .line 270
    if-eq v2, v4, :cond_14

    .line 271
    .line 272
    const/16 v4, 0x46

    .line 273
    .line 274
    if-ne v2, v4, :cond_11

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_11
    const/16 v4, 0x6e

    .line 278
    .line 279
    if-eq v2, v4, :cond_13

    .line 280
    .line 281
    const/16 v4, 0x4e

    .line 282
    .line 283
    if-ne v2, v4, :cond_12

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_12
    :goto_3
    move v6, v1

    .line 287
    goto/16 :goto_9

    .line 288
    .line 289
    :cond_13
    :goto_4
    const-string v2, "null"

    .line 290
    .line 291
    const-string v4, "NULL"

    .line 292
    .line 293
    move v6, v5

    .line 294
    goto :goto_7

    .line 295
    :cond_14
    :goto_5
    const-string v2, "false"

    .line 296
    .line 297
    const-string v4, "FALSE"

    .line 298
    .line 299
    const/4 v6, 0x6

    .line 300
    goto :goto_7

    .line 301
    :cond_15
    :goto_6
    const-string v2, "true"

    .line 302
    .line 303
    const-string v4, "TRUE"

    .line 304
    .line 305
    move v6, v7

    .line 306
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    move v10, v3

    .line 311
    :goto_8
    if-ge v10, v9, :cond_18

    .line 312
    .line 313
    iget v11, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 314
    .line 315
    add-int/2addr v11, v10

    .line 316
    iget v12, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 317
    .line 318
    if-lt v11, v12, :cond_16

    .line 319
    .line 320
    add-int/lit8 v11, v10, 0x1

    .line 321
    .line 322
    invoke-direct {v0, v11}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-nez v11, :cond_16

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_16
    iget-object v11, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 330
    .line 331
    iget v12, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 332
    .line 333
    add-int/2addr v12, v10

    .line 334
    aget-char v11, v11, v12

    .line 335
    .line 336
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 337
    .line 338
    .line 339
    move-result v12

    .line 340
    if-eq v11, v12, :cond_17

    .line 341
    .line 342
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    if-eq v11, v12, :cond_17

    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_17
    add-int/lit8 v10, v10, 0x1

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_18
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 353
    .line 354
    add-int/2addr v2, v9

    .line 355
    iget v4, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 356
    .line 357
    if-lt v2, v4, :cond_19

    .line 358
    .line 359
    add-int/lit8 v2, v9, 0x1

    .line 360
    .line 361
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_1a

    .line 366
    .line 367
    :cond_19
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 368
    .line 369
    iget v4, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 370
    .line 371
    add-int/2addr v4, v9

    .line 372
    aget-char v2, v2, v4

    .line 373
    .line 374
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_1a

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_1a
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 382
    .line 383
    add-int/2addr v2, v9

    .line 384
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 385
    .line 386
    iput v6, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 387
    .line 388
    :goto_9
    if-eqz v6, :cond_1b

    .line 389
    .line 390
    return v6

    .line 391
    :cond_1b
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 392
    .line 393
    iget v4, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 394
    .line 395
    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 396
    .line 397
    move v11, v1

    .line 398
    move v12, v11

    .line 399
    move v14, v12

    .line 400
    move v13, v3

    .line 401
    const-wide/16 v9, 0x0

    .line 402
    .line 403
    const-wide/16 v17, 0x0

    .line 404
    .line 405
    :goto_a
    add-int v1, v4, v12

    .line 406
    .line 407
    if-ne v1, v6, :cond_1f

    .line 408
    .line 409
    array-length v1, v2

    .line 410
    if-ne v12, v1, :cond_1d

    .line 411
    .line 412
    :cond_1c
    :goto_b
    const/4 v9, 0x0

    .line 413
    goto/16 :goto_17

    .line 414
    .line 415
    :cond_1d
    add-int/lit8 v1, v12, 0x1

    .line 416
    .line 417
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-nez v1, :cond_1e

    .line 422
    .line 423
    :goto_c
    const/4 v8, 0x2

    .line 424
    goto/16 :goto_11

    .line 425
    .line 426
    :cond_1e
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 427
    .line 428
    iget v4, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 429
    .line 430
    move v6, v4

    .line 431
    move v4, v1

    .line 432
    :cond_1f
    add-int v1, v4, v12

    .line 433
    .line 434
    aget-char v1, v2, v1

    .line 435
    .line 436
    const/16 v8, 0x2b

    .line 437
    .line 438
    if-eq v1, v8, :cond_35

    .line 439
    .line 440
    const/16 v8, 0x45

    .line 441
    .line 442
    if-eq v1, v8, :cond_33

    .line 443
    .line 444
    const/16 v8, 0x65

    .line 445
    .line 446
    if-eq v1, v8, :cond_33

    .line 447
    .line 448
    const/16 v8, 0x2d

    .line 449
    .line 450
    if-eq v1, v8, :cond_31

    .line 451
    .line 452
    const/16 v8, 0x2e

    .line 453
    .line 454
    if-eq v1, v8, :cond_30

    .line 455
    .line 456
    const/16 v8, 0x30

    .line 457
    .line 458
    if-lt v1, v8, :cond_29

    .line 459
    .line 460
    const/16 v8, 0x39

    .line 461
    .line 462
    if-le v1, v8, :cond_20

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_20
    if-eq v11, v3, :cond_21

    .line 466
    .line 467
    if-nez v11, :cond_22

    .line 468
    .line 469
    :cond_21
    move/from16 v22, v4

    .line 470
    .line 471
    const/4 v3, 0x6

    .line 472
    goto :goto_f

    .line 473
    :cond_22
    const/4 v8, 0x2

    .line 474
    if-ne v11, v8, :cond_26

    .line 475
    .line 476
    cmp-long v8, v9, v17

    .line 477
    .line 478
    if-nez v8, :cond_23

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_23
    const-wide/16 v20, 0xa

    .line 482
    .line 483
    mul-long v20, v20, v9

    .line 484
    .line 485
    add-int/lit8 v1, v1, -0x30

    .line 486
    .line 487
    move/from16 v22, v4

    .line 488
    .line 489
    int-to-long v3, v1

    .line 490
    sub-long v20, v20, v3

    .line 491
    .line 492
    const-wide v3, -0xcccccccccccccccL

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    cmp-long v1, v9, v3

    .line 498
    .line 499
    if-gtz v1, :cond_25

    .line 500
    .line 501
    if-nez v1, :cond_24

    .line 502
    .line 503
    cmp-long v1, v20, v9

    .line 504
    .line 505
    if-gez v1, :cond_24

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_24
    const/4 v1, 0x0

    .line 509
    goto :goto_e

    .line 510
    :cond_25
    :goto_d
    const/4 v1, 0x1

    .line 511
    :goto_e
    and-int/2addr v13, v1

    .line 512
    move-wide/from16 v9, v20

    .line 513
    .line 514
    const/4 v3, 0x6

    .line 515
    goto/16 :goto_16

    .line 516
    .line 517
    :cond_26
    move/from16 v22, v4

    .line 518
    .line 519
    if-ne v11, v15, :cond_27

    .line 520
    .line 521
    const/4 v3, 0x6

    .line 522
    const/4 v11, 0x4

    .line 523
    goto/16 :goto_16

    .line 524
    .line 525
    :cond_27
    const/4 v3, 0x6

    .line 526
    if-eq v11, v7, :cond_28

    .line 527
    .line 528
    if-ne v11, v3, :cond_36

    .line 529
    .line 530
    :cond_28
    move v11, v5

    .line 531
    goto/16 :goto_16

    .line 532
    .line 533
    :goto_f
    add-int/lit8 v1, v1, -0x30

    .line 534
    .line 535
    neg-int v1, v1

    .line 536
    int-to-long v9, v1

    .line 537
    const/4 v11, 0x2

    .line 538
    goto/16 :goto_16

    .line 539
    .line 540
    :cond_29
    :goto_10
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    if-nez v1, :cond_1c

    .line 545
    .line 546
    goto :goto_c

    .line 547
    :goto_11
    if-ne v11, v8, :cond_2e

    .line 548
    .line 549
    if-eqz v13, :cond_2a

    .line 550
    .line 551
    const-wide/high16 v1, -0x8000000000000000L

    .line 552
    .line 553
    cmp-long v1, v9, v1

    .line 554
    .line 555
    if-nez v1, :cond_2b

    .line 556
    .line 557
    if-eqz v14, :cond_2a

    .line 558
    .line 559
    goto :goto_12

    .line 560
    :cond_2a
    const/4 v8, 0x2

    .line 561
    goto :goto_14

    .line 562
    :cond_2b
    :goto_12
    cmp-long v1, v9, v17

    .line 563
    .line 564
    if-nez v1, :cond_2c

    .line 565
    .line 566
    if-nez v14, :cond_2a

    .line 567
    .line 568
    :cond_2c
    if-eqz v14, :cond_2d

    .line 569
    .line 570
    goto :goto_13

    .line 571
    :cond_2d
    neg-long v9, v9

    .line 572
    :goto_13
    iput-wide v9, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 573
    .line 574
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 575
    .line 576
    add-int/2addr v1, v12

    .line 577
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 578
    .line 579
    const/16 v9, 0xf

    .line 580
    .line 581
    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 582
    .line 583
    goto :goto_17

    .line 584
    :cond_2e
    :goto_14
    if-eq v11, v8, :cond_2f

    .line 585
    .line 586
    const/4 v1, 0x4

    .line 587
    if-eq v11, v1, :cond_2f

    .line 588
    .line 589
    if-ne v11, v5, :cond_1c

    .line 590
    .line 591
    :cond_2f
    iput v12, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 592
    .line 593
    const/16 v9, 0x10

    .line 594
    .line 595
    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 596
    .line 597
    goto :goto_17

    .line 598
    :cond_30
    move/from16 v22, v4

    .line 599
    .line 600
    const/4 v1, 0x2

    .line 601
    const/4 v3, 0x6

    .line 602
    if-ne v11, v1, :cond_1c

    .line 603
    .line 604
    move v11, v15

    .line 605
    goto :goto_16

    .line 606
    :cond_31
    move/from16 v22, v4

    .line 607
    .line 608
    const/4 v1, 0x2

    .line 609
    const/4 v3, 0x6

    .line 610
    if-nez v11, :cond_32

    .line 611
    .line 612
    const/4 v11, 0x1

    .line 613
    const/4 v14, 0x1

    .line 614
    goto :goto_16

    .line 615
    :cond_32
    if-ne v11, v7, :cond_1c

    .line 616
    .line 617
    :goto_15
    move v11, v3

    .line 618
    goto :goto_16

    .line 619
    :cond_33
    move/from16 v22, v4

    .line 620
    .line 621
    const/4 v1, 0x2

    .line 622
    const/4 v3, 0x6

    .line 623
    if-eq v11, v1, :cond_34

    .line 624
    .line 625
    const/4 v1, 0x4

    .line 626
    if-ne v11, v1, :cond_1c

    .line 627
    .line 628
    :cond_34
    move v11, v7

    .line 629
    goto :goto_16

    .line 630
    :cond_35
    move/from16 v22, v4

    .line 631
    .line 632
    const/4 v3, 0x6

    .line 633
    if-ne v11, v7, :cond_1c

    .line 634
    .line 635
    goto :goto_15

    .line 636
    :cond_36
    :goto_16
    add-int/lit8 v12, v12, 0x1

    .line 637
    .line 638
    move/from16 v4, v22

    .line 639
    .line 640
    const/4 v3, 0x1

    .line 641
    const/16 v8, 0xa

    .line 642
    .line 643
    goto/16 :goto_a

    .line 644
    .line 645
    :goto_17
    if-eqz v9, :cond_37

    .line 646
    .line 647
    return v9

    .line 648
    :cond_37
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 649
    .line 650
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 651
    .line 652
    aget-char v1, v1, v2

    .line 653
    .line 654
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_38

    .line 659
    .line 660
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 661
    .line 662
    .line 663
    const/16 v1, 0xa

    .line 664
    .line 665
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 666
    .line 667
    return v1

    .line 668
    :cond_38
    const-string v1, "Expected value"

    .line 669
    .line 670
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    throw v16

    .line 674
    :cond_39
    move v8, v3

    .line 675
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 676
    .line 677
    return v8

    .line 678
    :cond_3a
    move v8, v3

    .line 679
    if-ne v4, v8, :cond_3d

    .line 680
    .line 681
    const/4 v1, 0x4

    .line 682
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 683
    .line 684
    return v1

    .line 685
    :cond_3b
    iput v15, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 686
    .line 687
    return v15

    .line 688
    :cond_3c
    move v8, v3

    .line 689
    :cond_3d
    if-eq v4, v8, :cond_3f

    .line 690
    .line 691
    const/4 v1, 0x2

    .line 692
    if-ne v4, v1, :cond_3e

    .line 693
    .line 694
    goto :goto_18

    .line 695
    :cond_3e
    const-string v1, "Unexpected value"

    .line 696
    .line 697
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    throw v16

    .line 701
    :cond_3f
    :goto_18
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 702
    .line 703
    .line 704
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 705
    .line 706
    sub-int/2addr v1, v8

    .line 707
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 708
    .line 709
    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 710
    .line 711
    return v5

    .line 712
    :cond_40
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 713
    .line 714
    .line 715
    const/16 v2, 0x8

    .line 716
    .line 717
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 718
    .line 719
    return v2

    .line 720
    :cond_41
    const/16 v1, 0x9

    .line 721
    .line 722
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 723
    .line 724
    return v1

    .line 725
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 726
    .line 727
    const-string v1, "JsonReader is closed"

    .line 728
    .line 729
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0

    .line 733
    :goto_19
    aput v19, v1, v2

    .line 734
    .line 735
    if-ne v4, v7, :cond_45

    .line 736
    .line 737
    const/4 v8, 0x1

    .line 738
    invoke-direct {v0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    if-eq v1, v14, :cond_45

    .line 743
    .line 744
    if-eq v1, v13, :cond_44

    .line 745
    .line 746
    if-ne v1, v9, :cond_43

    .line 747
    .line 748
    const/4 v8, 0x2

    .line 749
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 750
    .line 751
    return v8

    .line 752
    :cond_43
    const-string v1, "Unterminated object"

    .line 753
    .line 754
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    throw v16

    .line 758
    :cond_44
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 759
    .line 760
    .line 761
    :cond_45
    const/4 v8, 0x1

    .line 762
    invoke-direct {v0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    const/16 v6, 0x22

    .line 767
    .line 768
    if-eq v1, v6, :cond_4a

    .line 769
    .line 770
    if-eq v1, v10, :cond_49

    .line 771
    .line 772
    const-string v2, "Expected name"

    .line 773
    .line 774
    if-eq v1, v9, :cond_47

    .line 775
    .line 776
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 777
    .line 778
    .line 779
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 780
    .line 781
    sub-int/2addr v3, v8

    .line 782
    iput v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 783
    .line 784
    int-to-char v1, v1

    .line 785
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-eqz v1, :cond_46

    .line 790
    .line 791
    const/16 v1, 0xe

    .line 792
    .line 793
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 794
    .line 795
    return v1

    .line 796
    :cond_46
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    throw v16

    .line 800
    :cond_47
    if-eq v4, v7, :cond_48

    .line 801
    .line 802
    const/4 v8, 0x2

    .line 803
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 804
    .line 805
    return v8

    .line 806
    :cond_48
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    throw v16

    .line 810
    :cond_49
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 811
    .line 812
    .line 813
    const/16 v1, 0xc

    .line 814
    .line 815
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 816
    .line 817
    return v1

    .line 818
    :cond_4a
    const/16 v1, 0xd

    .line 819
    .line 820
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 821
    .line 822
    return v1
.end method

.method public endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    aget v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v1, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Expected END_ARRAY but was "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public endObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v4, v3, v2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    aget v1, v2, v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    aput v1, v2, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Expected END_OBJECT but was "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 14
    .line 15
    aget v2, v2, v1

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/16 v2, 0x2e

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 39
    .line 40
    aget-object v2, v2, v1

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 49
    .line 50
    aget v2, v2, v1

    .line 51
    .line 52
    const/16 v3, 0x5b

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v2, 0x5d

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    if-eq v0, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq v0, p0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0x11

    .line 16
    .line 17
    if-eq v0, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final isLenient()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 2
    .line 3
    return p0
.end method

.method final locationString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const-string v2, " at line "

    .line 13
    .line 14
    const-string v3, " column "

    .line 15
    .line 16
    const-string v4, " path "

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    .line 20
    sub-int/2addr p0, v3

    .line 21
    aget v1, v0, p0

    .line 22
    .line 23
    add-int/2addr v1, v3

    .line 24
    aput v1, v0, p0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 33
    .line 34
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 35
    .line 36
    sub-int/2addr p0, v3

    .line 37
    aget v1, v0, p0

    .line 38
    .line 39
    add-int/2addr v1, v3

    .line 40
    aput v1, v0, p0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Expected a boolean but was "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 43
    .line 44
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 45
    .line 46
    add-int/lit8 p0, p0, -0x1

    .line 47
    .line 48
    aput-object v0, v1, p0

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Expected a name but was "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 16
    .line 17
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    aget v1, v0, p0

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    aput v1, v0, p0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Expected null but was "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x9

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0xf

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x10

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    new-instance v0, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 68
    .line 69
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 70
    .line 71
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 72
    .line 73
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 77
    .line 78
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 79
    .line 80
    add-int/2addr v1, v2

    .line 81
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 82
    .line 83
    :goto_0
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 87
    .line 88
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 89
    .line 90
    add-int/lit8 p0, p0, -0x1

    .line 91
    .line 92
    aget v2, v1, p0

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    aput v2, v1, p0

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v2, "Expected a string but was "

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_0
    sget-object p0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_1
    sget-object p0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    sget-object p0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_3
    sget-object p0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_4
    sget-object p0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_5
    sget-object p0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_6
    sget-object p0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_7
    sget-object p0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_8
    sget-object p0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_9
    sget-object p0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 46
    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
