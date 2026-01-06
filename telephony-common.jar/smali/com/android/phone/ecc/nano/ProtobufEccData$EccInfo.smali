.class public final Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
.super Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;


# instance fields
.field public blacklist normalRoutingMncs:[Ljava/lang/String;

.field public blacklist phoneNumber:Ljava/lang/String;

.field public blacklist routing:I

.field public blacklist types:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->clear()Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
    .locals 2

    .line 33
    sget-object v0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/android/phone/ecc/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    sput-object v1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
    .locals 1

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->routing:I

    .line 64
    sget-object v0, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->normalRoutingMncs:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/android/phone/ecc/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 260
    :cond_1
    invoke-static {p1, v1}, Lcom/android/phone/ecc/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->normalRoutingMncs:[Ljava/lang/String;

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 262
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 264
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 267
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 268
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 271
    :cond_4
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 272
    iput-object v4, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->normalRoutingMncs:[Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_5
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 253
    :cond_6
    iput v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->routing:I

    goto :goto_0

    .line 201
    :cond_7
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 202
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 205
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 206
    :goto_3
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_8

    .line 207
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_c

    .line 221
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 222
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    if-nez v1, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    array-length v4, v1

    :goto_4
    add-int/2addr v3, v4

    .line 223
    new-array v3, v3, [I

    if-eqz v4, :cond_a

    .line 225
    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_b

    .line 228
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 238
    aput v1, v3, v4

    move v4, v2

    goto :goto_5

    .line 242
    :cond_b
    iput-object v3, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    .line 244
    :cond_c
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 164
    :cond_d
    invoke-static {p1, v1}, Lcom/android/phone/ecc/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 165
    new-array v1, v0, [I

    move v3, v2

    move v4, v3

    :goto_6
    if-ge v3, v0, :cond_f

    if-eqz v3, :cond_e

    .line 169
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    .line 171
    :cond_e
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_7

    :pswitch_2
    add-int/lit8 v6, v4, 0x1

    .line 181
    aput v5, v1, v4

    move v4, v6

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    if-eqz v4, :cond_0

    .line 186
    iget-object v3, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    if-nez v3, :cond_10

    move v5, v2

    goto :goto_8

    :cond_10
    array-length v5, v3

    :goto_8
    if-nez v5, :cond_11

    if-ne v4, v0, :cond_11

    .line 188
    iput-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    goto/16 :goto_0

    :cond_11
    add-int v0, v5, v4

    .line 190
    new-array v0, v0, [I

    if-eqz v5, :cond_12

    .line 192
    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_12
    invoke-static {v1, v2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    goto/16 :goto_0

    .line 159
    :cond_13
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    :goto_9
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
