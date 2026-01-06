.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private frontv:Ljava/lang/String;

.field private maxCodeLen:I

.field private varson:Ljava/lang/String;

.field private vowels:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "AEIOU"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    .line 51
    const-string v0, "EIY"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    .line 56
    const-string v0, "CSPTG"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 68
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .line 347
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "matches":Z
    if-ltz p2, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 331
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 333
    :cond_1
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "matches":Z
    if-lez p2, :cond_1

    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 322
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 324
    :cond_1
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I

    .line 315
    iget-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    .line 339
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 340
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 343
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 364
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 367
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;

    .line 377
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 396
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "txt"    # Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 82
    .local v1, "hard":Z
    if-eqz p1, :cond_21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 86
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 92
    .local v2, "inwd":[C
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 93
    .local v4, "local":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    .local v5, "code":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    aget-char v7, v2, v6

    const/16 v8, 0x48

    const/16 v9, 0x53

    sparse-switch v7, :sswitch_data_0

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 125
    :sswitch_0
    aput-char v9, v2, v6

    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 127
    goto :goto_0

    .line 113
    :sswitch_1
    aget-char v7, v2, v3

    const/16 v10, 0x52

    if-ne v7, v10, :cond_2

    .line 114
    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    aget-char v7, v2, v3

    if-ne v7, v8, :cond_3

    .line 118
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-virtual {v4, v2, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 119
    const/16 v7, 0x57

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 123
    goto :goto_0

    .line 99
    :sswitch_2
    aget-char v6, v2, v3

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_4

    .line 100
    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 104
    goto :goto_0

    .line 106
    :sswitch_3
    aget-char v6, v2, v3

    const/16 v7, 0x45

    if-ne v6, v7, :cond_5

    .line 107
    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 111
    nop

    .line 132
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 133
    .local v6, "wdsz":I
    const/4 v7, 0x0

    .line 135
    .local v7, "n":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v11

    if-ge v10, v11, :cond_20

    if-ge v7, v6, :cond_20

    .line 137
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    .line 139
    .local v10, "symb":C
    const/16 v11, 0x43

    if-eq v10, v11, :cond_6

    invoke-direct {v0, v4, v7, v10}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 140
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v3

    goto/16 :goto_6

    .line 142
    :cond_6
    const/16 v13, 0x47

    const/16 v14, 0x54

    const/16 v15, 0x46

    move/from16 v16, v3

    const/16 v3, 0x58

    const/16 v12, 0x4b

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    .line 303
    :pswitch_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 300
    :pswitch_1
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    goto/16 :goto_5

    .line 294
    :pswitch_2
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1e

    add-int/lit8 v3, v7, 0x1

    .line 295
    invoke-direct {v0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 296
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 292
    :pswitch_3
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 275
    :pswitch_4
    const-string v11, "TIA"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 276
    const-string v11, "TIO"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    .line 280
    :cond_7
    const-string v3, "TCH"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 282
    goto/16 :goto_5

    .line 285
    :cond_8
    const-string v3, "TH"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    const/16 v3, 0x30

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 288
    :cond_9
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    goto/16 :goto_5

    .line 277
    :cond_a
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 278
    goto/16 :goto_5

    .line 266
    :pswitch_5
    const-string v11, "SH"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 267
    const-string v11, "SIO"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 268
    const-string v11, "SIA"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_3

    .line 271
    :cond_b
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    goto/16 :goto_5

    .line 269
    :cond_c
    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 263
    :pswitch_6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    goto/16 :goto_5

    .line 255
    :pswitch_7
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 257
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 259
    :cond_d
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    goto/16 :goto_5

    .line 246
    :pswitch_8
    if-lez v7, :cond_e

    .line 247
    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 248
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 251
    :cond_e
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    goto/16 :goto_5

    .line 226
    :pswitch_9
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 227
    goto/16 :goto_5

    .line 229
    :cond_f
    if-lez v7, :cond_10

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    add-int/lit8 v11, v7, -0x1

    .line 230
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_10

    .line 231
    goto/16 :goto_5

    .line 233
    :cond_10
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 234
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 198
    :pswitch_a
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 199
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 200
    goto/16 :goto_5

    .line 202
    :cond_11
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_12

    .line 203
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v7, 0x2

    .line 204
    invoke-direct {v0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 205
    goto/16 :goto_5

    .line 207
    :cond_12
    if-lez v7, :cond_13

    .line 208
    const-string v3, "GN"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 209
    const-string v3, "GNED"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 210
    goto/16 :goto_5

    .line 212
    :cond_13
    invoke-direct {v0, v4, v7, v13}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 213
    const/4 v1, 0x1

    goto :goto_4

    .line 215
    :cond_14
    const/4 v1, 0x0

    .line 217
    :goto_4
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v11, v7, 0x1

    .line 218
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_15

    if-nez v1, :cond_15

    .line 220
    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 222
    :cond_15
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    goto/16 :goto_5

    .line 243
    :pswitch_b
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    goto/16 :goto_5

    .line 189
    :pswitch_c
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_16

    .line 190
    invoke-direct {v0, v4, v7, v13}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v11, v7, 0x2

    .line 191
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_16

    .line 192
    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_5

    .line 194
    :cond_16
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    goto/16 :goto_5

    .line 157
    :pswitch_d
    invoke-direct {v0, v4, v7, v9}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 158
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v13, v7, 0x1

    .line 159
    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_17

    .line 160
    goto/16 :goto_5

    .line 162
    :cond_17
    const-string v11, "CIA"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    goto :goto_5

    .line 166
    :cond_18
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v11

    if-nez v11, :cond_19

    iget-object v11, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v13, v7, 0x1

    .line 167
    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_19

    .line 168
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    goto :goto_5

    .line 171
    :cond_19
    invoke-direct {v0, v4, v7, v9}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 172
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 173
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    goto :goto_5

    .line 176
    :cond_1a
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 177
    if-nez v7, :cond_1b

    const/4 v11, 0x3

    if-lt v6, v11, :cond_1b

    .line 179
    const/4 v11, 0x2

    invoke-direct {v0, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 180
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 182
    :cond_1b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 185
    :cond_1c
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    goto :goto_5

    .line 149
    :pswitch_e
    const/16 v3, 0x4d

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 150
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 151
    goto :goto_5

    .line 153
    :cond_1d
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    goto :goto_5

    .line 144
    :pswitch_f
    if-nez v7, :cond_1e

    .line 145
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    :cond_1e
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 307
    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v11

    if-le v3, v11, :cond_1f

    .line 308
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 310
    .end local v10    # "symb":C
    :cond_1f
    move/from16 v3, v16

    goto/16 :goto_1

    .line 311
    :cond_20
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    .end local v2    # "inwd":[C
    .end local v4    # "local":Ljava/lang/StringBuffer;
    .end local v5    # "code":Ljava/lang/StringBuffer;
    .end local v6    # "wdsz":I
    .end local v7    # "n":I
    :cond_21
    :goto_7
    const-string v2, ""

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x47 -> :sswitch_2
        0x4b -> :sswitch_2
        0x50 -> :sswitch_2
        0x57 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .line 402
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
