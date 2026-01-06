.class public Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "CccDebugNotification.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CCC_DEBUG_NTF"


# instance fields
.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 19
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;->status:I

    .line 21
    return-void
.end method

.method private parseCccDebugPacket()Ljava/lang/String;
    .locals 13

    .line 28
    const-string v0, "CCC_DEBUG_NTF"

    const-string v1, ":"

    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v2

    .line 29
    .local v2, "bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    :try_start_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 33
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 34
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .local v6, "index":I
    aget-byte v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "index":I
    .restart local v4    # "index":I
    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .restart local v6    # "index":I
    aget-byte v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 39
    invoke-static {v5}, Lcom/samsung/uwb/support/util/UwbUtil;->getIntLE(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 40
    .local v4, "sessionHandle":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 44
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 46
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .local v8, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .local v5, "index":I
    aget-byte v6, v2, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    aget-byte v5, v2, v5

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 49
    invoke-static {v8}, Lcom/samsung/uwb/support/util/UwbUtil;->getShortLE(Ljava/nio/ByteBuffer;)S

    move-result v5

    .line 50
    .local v5, "rangeRoundNumber":I
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 55
    .end local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    .local v9, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "index":I
    .local v8, "index":I
    aget-byte v6, v2, v6

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 57
    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->getByte(Ljava/nio/ByteBuffer;)B

    move-result v6

    .line 58
    .local v6, "numberOfControlee":I
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 64
    .end local v9    # "byteBuffer":Ljava/nio/ByteBuffer;
    .local v10, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v6, :cond_0

    .line 65
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "index":I
    .local v11, "index":I
    aget-byte v8, v2, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    add-int/lit8 v9, v9, 0x1

    move v8, v11

    goto :goto_1

    .line 68
    .end local v9    # "j":I
    .end local v11    # "index":I
    .restart local v8    # "index":I
    :cond_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "controleeState":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 74
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 75
    .end local v10    # "byteBuffer":Ljava/nio/ByteBuffer;
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index":I
    .local v10, "index":I
    aget-byte v8, v2, v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    invoke-static {v7}, Lcom/samsung/uwb/support/util/UwbUtil;->getByte(Ljava/nio/ByteBuffer;)B

    move-result v8

    .line 78
    .local v8, "maxNumberAnchor":I
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    move v4, v10

    .end local v4    # "sessionHandle":I
    .end local v5    # "rangeRoundNumber":I
    .end local v6    # "numberOfControlee":I
    .end local v7    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "maxNumberAnchor":I
    .end local v9    # "controleeState":Ljava/lang/String;
    goto/16 :goto_0

    .line 31
    .end local v10    # "index":I
    :cond_1
    goto :goto_2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    invoke-virtual {v1}, Ljava/nio/BufferUnderflowException;->printStackTrace()V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferUnderflowException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/BufferUnderflowException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_2
    nop

    .line 88
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;->parseCccDebugPacket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
