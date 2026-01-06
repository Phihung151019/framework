.class public Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;
.super Ljava/lang/Object;
.source "CaConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 191
    if-eqz p0, :cond_3

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v0, "str":Ljava/lang/StringBuffer;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 198
    .local v3, "k":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    .end local v3    # "k":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 204
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    .end local v0    # "str":Ljava/lang/StringBuffer;
    :cond_3
    :goto_1
    const-string v0, "Data is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCompleteOfTwo(I)I
    .locals 2
    .param p0, "value"    # I

    .line 257
    move v0, p0

    .line 258
    .local v0, "complete":I
    if-gez p0, :cond_0

    .line 259
    add-int/lit16 v1, p0, 0xff

    add-int/lit8 v0, v1, 0x1

    .line 261
    :cond_0
    return v0
.end method

.method public static intToByteArr(II)[B
    .locals 5
    .param p0, "value"    # I
    .param p1, "size"    # I

    .line 163
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    new-array v0, p1, [B

    .line 169
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 170
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_1
    new-array v1, p1, [B

    .line 174
    .local v1, "result":[B
    array-length v2, v0

    .line 176
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 177
    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v0, v2

    aput-byte v4, v1, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static strToDouble(Ljava/lang/String;)D
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 134
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 135
    return-wide v0

    .line 138
    :cond_0
    const-wide/16 v2, 0x0

    .line 141
    .local v2, "resultDouble":D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2    # "resultDouble":D
    .local v0, "resultDouble":D
    nop

    .line 150
    return-wide v0

    .line 145
    .end local v0    # "resultDouble":D
    .restart local v2    # "resultDouble":D
    :catch_0
    move-exception v4

    .line 146
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 147
    return-wide v0

    .line 142
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 143
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 144
    return-wide v0
.end method

.method public static strToFloat(Ljava/lang/String;)F
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 69
    return v0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 75
    .local v1, "resultFloat":F
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 77
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "numerator":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "denominator":I
    int-to-float v4, v3

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 81
    .end local v0    # "denominator":I
    .end local v1    # "resultFloat":F
    .end local v2    # "index":I
    .end local v3    # "numerator":I
    .local v4, "resultFloat":F
    goto :goto_0

    .line 82
    .end local v4    # "resultFloat":F
    .restart local v1    # "resultFloat":F
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    .line 90
    .end local v1    # "resultFloat":F
    .restart local v4    # "resultFloat":F
    :goto_0
    nop

    .line 92
    return v4

    .line 87
    .end local v4    # "resultFloat":F
    .restart local v1    # "resultFloat":F
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 89
    return v0

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 86
    return v0
.end method

.method public static strToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 35
    return v0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 40
    .local v1, "resultInt":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "hexValue":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .end local v1    # "resultInt":I
    .end local v2    # "hexValue":Ljava/lang/String;
    .local v0, "resultInt":I
    goto :goto_0

    .end local v0    # "resultInt":I
    .restart local v1    # "resultInt":I
    :cond_1
    const-string v2, "B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "binValue":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .end local v1    # "resultInt":I
    .end local v2    # "binValue":Ljava/lang/String;
    .restart local v0    # "resultInt":I
    goto :goto_0

    .line 47
    .end local v0    # "resultInt":I
    .restart local v1    # "resultInt":I
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "resultInt":I
    .restart local v0    # "resultInt":I
    :goto_0
    nop

    .line 57
    return v0

    .line 52
    .end local v0    # "resultInt":I
    .restart local v1    # "resultInt":I
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 54
    return v0

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 51
    return v0
.end method

.method public static strToLong(Ljava/lang/String;)J
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 103
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 104
    return-wide v0

    .line 107
    :cond_0
    const-wide/16 v2, 0x0

    .line 109
    .local v2, "resultLong":J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "hexValue":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 112
    .end local v2    # "resultLong":J
    .end local v4    # "hexValue":Ljava/lang/String;
    .local v0, "resultLong":J
    goto :goto_0

    .line 113
    .end local v0    # "resultLong":J
    .restart local v2    # "resultLong":J
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "resultLong":J
    .restart local v0    # "resultLong":J
    :goto_0
    nop

    .line 123
    return-wide v0

    .line 118
    .end local v0    # "resultLong":J
    .restart local v2    # "resultLong":J
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 120
    return-wide v0

    .line 115
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 116
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 117
    return-wide v0
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .line 215
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "startIdx":I
    const/4 v1, 0x0

    .line 222
    .local v1, "endIdx":I
    const/4 v2, 0x0

    .line 223
    .local v2, "len":I
    const/16 v3, 0x2c

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 224
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_2

    .line 225
    add-int/lit8 v0, v1, 0x1

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 227
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 228
    if-gez v1, :cond_1

    .line 229
    nop

    .line 233
    :cond_2
    new-array v4, v2, [B

    .line 234
    .local v4, "arr":[B
    const/4 v0, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    const/4 v5, 0x0

    .line 238
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 239
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 240
    nop

    .line 241
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    add-int/lit8 v9, v5, 0x1

    .line 240
    .end local v5    # "size":I
    .local v9, "size":I
    const/4 v10, 0x0

    invoke-static {v7, v10, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    add-int/lit8 v0, v1, 0x2

    .line 238
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto :goto_0

    .line 246
    .end local v6    # "i":I
    .end local v9    # "size":I
    .restart local v5    # "size":I
    :cond_3
    return-object v4

    .line 216
    .end local v0    # "startIdx":I
    .end local v1    # "endIdx":I
    .end local v2    # "len":I
    .end local v4    # "arr":[B
    .end local v5    # "size":I
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
