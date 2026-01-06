.class public final Lorg/tensorflow/lite/Tensor;
.super Ljava/lang/Object;
.source "Tensor.java"


# instance fields
.field private final dtype:Lorg/tensorflow/lite/DataType;

.field private nativeHandle:J

.field private shapeCopy:[I


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeHandle"    # J

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-wide p1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    .line 363
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->dtype(J)I

    move-result v0

    invoke-static {v0}, Lorg/tensorflow/lite/DataType;->fromC(I)Lorg/tensorflow/lite/DataType;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    .line 364
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    .line 365
    return-void
.end method

.method private buffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 368
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->buffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native buffer(J)Ljava/nio/ByteBuffer;
.end method

.method static computeNumDimensions(Ljava/lang/Object;)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 277
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/Tensor;->computeNumDimensions(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array lengths cannot be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    :goto_0
    return v0
.end method

.method static computeNumElements([I)I
    .locals 3
    .param p0, "shape"    # [I

    .line 268
    const/4 v0, 0x1

    .line 269
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 270
    aget v2, p0, v1

    mul-int/2addr v0, v2

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method static computeShapeOf(Ljava/lang/Object;)[I
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 260
    invoke-static {p0}, Lorg/tensorflow/lite/Tensor;->computeNumDimensions(Ljava/lang/Object;)I

    move-result v0

    .line 261
    .local v0, "size":I
    new-array v1, v0, [I

    .line 262
    .local v1, "dimensions":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/tensorflow/lite/Tensor;->fillShape(Ljava/lang/Object;I[I)V

    .line 263
    return-object v1
.end method

.method private copyTo(Ljava/nio/Buffer;)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/Buffer;

    .line 194
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 196
    :cond_0
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 197
    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 198
    :cond_1
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_2

    .line 199
    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_0

    .line 200
    :cond_2
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 201
    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected output buffer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native create(JI)J
.end method

.method static dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/lite/DataType;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 237
    if-eqz p0, :cond_8

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 239
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_0
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    goto :goto_3

    .line 244
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 246
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    return-object v1

    .line 248
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/nio/LongBuffer;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 250
    :cond_4
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    sget-object v1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    return-object v1

    .line 249
    :cond_5
    :goto_1
    sget-object v1, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    return-object v1

    .line 245
    :cond_6
    :goto_2
    sget-object v1, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    return-object v1

    .line 243
    :cond_7
    :goto_3
    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    return-object v1

    .line 254
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataType error: cannot resolve DataType of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native delete(J)V
.end method

.method private static native dtype(J)I
.end method

.method static fillShape(Ljava/lang/Object;I[I)V
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "dim"    # I
    .param p2, "shape"    # [I

    .line 288
    if-eqz p2, :cond_4

    array-length v0, p2

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 291
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 292
    .local v0, "len":I
    aget v1, p2, p1

    if-nez v1, :cond_1

    .line 293
    aput v0, p2, p1

    goto :goto_0

    .line 294
    :cond_1
    aget v1, p2, p1

    if-ne v1, v0, :cond_3

    .line 298
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 299
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, p2}, Lorg/tensorflow/lite/Tensor;->fillShape(Ljava/lang/Object;I[I)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 295
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    aget v2, p2, p1

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Mismatched lengths (%d and %d) in dimension %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    .end local v0    # "len":I
    :cond_4
    :goto_2
    return-void
.end method

.method static fromIndex(JI)Lorg/tensorflow/lite/Tensor;
    .locals 3
    .param p0, "nativeInterpreterHandle"    # J
    .param p2, "tensorIndex"    # I

    .line 43
    new-instance v0, Lorg/tensorflow/lite/Tensor;

    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/Tensor;->create(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/tensorflow/lite/Tensor;-><init>(J)V

    return-object v0
.end method

.method private static native hasDelegateBufferHandle(J)Z
.end method

.method private static native index(J)I
.end method

.method private static isBuffer(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 350
    instance-of v0, p0, Ljava/nio/Buffer;

    return v0
.end method

.method private static isByteBuffer(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 354
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    return v0
.end method

.method private static native name(J)Ljava/lang/String;
.end method

.method private static native numBytes(J)I
.end method

.method private static native readMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private setTo(Ljava/nio/Buffer;)V
    .locals 3
    .param p1, "src"    # Ljava/nio/Buffer;

    .line 134
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 135
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 136
    .local v0, "srcBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 137
    iget-wide v1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 141
    .end local v0    # "srcBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    goto/16 :goto_4

    :cond_1
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_3

    .line 142
    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    .line 143
    .local v0, "srcBuffer":Ljava/nio/LongBuffer;
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 144
    iget-wide v1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    .line 148
    .end local v0    # "srcBuffer":Ljava/nio/LongBuffer;
    :goto_1
    goto :goto_4

    :cond_3
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 149
    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 150
    .local v0, "srcBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 151
    iget-wide v1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_2

    .line 153
    :cond_4
    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 155
    .end local v0    # "srcBuffer":Ljava/nio/FloatBuffer;
    :goto_2
    goto :goto_4

    :cond_5
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_7

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    .line 157
    .local v0, "srcBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 158
    iget-wide v1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_3

    .line 160
    :cond_6
    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 162
    .end local v0    # "srcBuffer":Ljava/nio/IntBuffer;
    :goto_3
    nop

    .line 165
    :goto_4
    return-void

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected input buffer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native shape(J)[I
.end method

.method private throwIfDataIsIncompatible(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfShapeIsIncompatible(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method private throwIfShapeIsIncompatible(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 324
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    .line 326
    .local v0, "oBuffer":Ljava/nio/Buffer;
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->numBytes()I

    move-result v1

    .line 329
    .local v1, "bytes":I
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v3}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v3

    mul-int/2addr v2, v3

    .line 330
    .local v2, "oBytes":I
    :goto_0
    if-ne v1, v2, :cond_1

    .line 337
    return-void

    .line 331
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 332
    const-string v5, "Cannot convert between a TensorFlowLite buffer with %d bytes and a Java Buffer with %d bytes."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    .end local v0    # "oBuffer":Ljava/nio/Buffer;
    .end local v1    # "bytes":I
    .end local v2    # "oBytes":I
    :cond_2
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object v0

    .line 340
    .local v0, "oShape":[I
    iget-object v1, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    return-void

    .line 341
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    .line 345
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 342
    const-string v3, "Cannot copy between a TensorFlowLite tensor with shape %s and a Java object with shape %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwIfTypeIsIncompatible(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 310
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/lite/DataType;

    move-result-object v0

    .line 314
    .local v0, "oType":Lorg/tensorflow/lite/DataType;
    iget-object v1, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    if-ne v0, v1, :cond_1

    .line 321
    return-void

    .line 315
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 316
    const-string v3, "Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s)."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native writeDirectBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native writeMultiDimensionalArray(JLjava/lang/Object;)V
.end method


# virtual methods
.method close()V
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->delete(J)V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    .line 50
    return-void
.end method

.method copyTo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "dst"    # Ljava/lang/Object;

    .line 176
    if-nez p1, :cond_1

    .line 177
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->hasDelegateBufferHandle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    return-object p1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null outputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfDataIsIncompatible(Ljava/lang/Object;)V

    .line 184
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/Tensor;->copyTo(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->readMultiDimensionalArray(JLjava/lang/Object;)V

    .line 189
    :goto_0
    return-object p1
.end method

.method public dataType()Lorg/tensorflow/lite/DataType;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method getInputShapeIfDifferent(Ljava/lang/Object;)[I
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 210
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 211
    return-object v0

    .line 215
    :cond_0
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    return-object v0

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 219
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object v1

    .line 220
    .local v1, "inputShape":[I
    iget-object v2, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    return-object v0

    .line 223
    :cond_2
    return-object v1
.end method

.method public index()I
    .locals 2

    .line 93
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->index(J)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->name(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numBytes()I
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->numBytes(J)I

    move-result v0

    return v0
.end method

.method public numDimensions()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    array-length v0, v0

    return v0
.end method

.method public numElements()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {v0}, Lorg/tensorflow/lite/Tensor;->computeNumElements([I)I

    move-result v0

    return v0
.end method

.method refreshShape()V
    .locals 2

    .line 232
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    .line 233
    return-void
.end method

.method setTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;

    .line 116
    if-nez p1, :cond_1

    .line 117
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->hasDelegateBufferHandle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null inputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfDataIsIncompatible(Ljava/lang/Object;)V

    .line 124
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/Tensor;->setTo(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeMultiDimensionalArray(JLjava/lang/Object;)V

    .line 129
    :goto_0
    return-void
.end method

.method public shape()[I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    return-object v0
.end method
