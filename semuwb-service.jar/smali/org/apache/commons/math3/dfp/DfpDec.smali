.class public Lorg/apache/commons/math3/dfp/DfpDec;
.super Lorg/apache/commons/math3/dfp/Dfp;
.source "DfpDec.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # B

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "sign"    # B
    .param p3, "nans"    # B

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # D

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    .line 66
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # J

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "s"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    .line 83
    return-void
.end method


# virtual methods
.method protected getDecimalDigits()I
    .locals 1

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getRadixDigits()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 98
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # B

    .line 104
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "sign"    # B
    .param p2, "nans"    # B

    .line 150
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-object v0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # D

    .line 122
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # I

    .line 110
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # J

    .line 116
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 144
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 133
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x3

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 134
    const-string v2, "newInstance"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 137
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 294
    const-string v0, "nextAfter"

    .line 297
    .local v0, "trapName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    const-string v3, "nextAfter"

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 300
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x3

    iput-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 301
    invoke-virtual {p0, v4, v3, p1, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 304
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    const/4 v1, 0x0

    .line 309
    .local v1, "up":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    const/4 v1, 0x1

    .line 313
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 317
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/DfpDec;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    xor-int/lit8 v2, v1, 0x1

    move v1, v2

    .line 321
    :cond_3
    if-eqz v1, :cond_6

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->intLog10()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 323
    .local v2, "inc":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v2, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v5, v5

    rsub-int v5, v5, -0x7fff

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 329
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 330
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .local v5, "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_1

    .line 332
    .end local v5    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_5
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/DfpDec;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .restart local v5    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_1

    .line 335
    .end local v2    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v5    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->intLog10()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 336
    .restart local v2    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v2, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 338
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    goto :goto_0

    .line 341
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 344
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 345
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v5, v5

    rsub-int v5, v5, -0x7fff

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 348
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .restart local v5    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_1

    .line 351
    .end local v5    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_9
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/DfpDec;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 355
    .restart local v5    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_1
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v4, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->classify()I

    move-result v6

    if-eq v6, v4, :cond_a

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 357
    invoke-virtual {p0, v7, v3, p1, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 360
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 361
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 362
    invoke-virtual {p0, v7, v3, p1, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 365
    :cond_b
    return-object v5
.end method

.method protected round(I)I
    .locals 18
    .param p1, "in"    # I

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    .line 167
    .local v1, "msb":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 169
    return v2

    .line 172
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v4, v4

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    .line 173
    .local v4, "cmaxdigits":I
    const/16 v6, 0x3e8

    .line 174
    .local v6, "lsbthreshold":I
    :goto_0
    if-le v6, v1, :cond_1

    .line 175
    div-int/lit8 v6, v6, 0xa

    .line 176
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v7

    .line 181
    .local v7, "digits":I
    sub-int v8, v4, v7

    .line 182
    .local v8, "lsbshift":I
    div-int/lit8 v9, v8, 0x4

    .line 184
    .local v9, "lsd":I
    const/4 v6, 0x1

    .line 185
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    rem-int/lit8 v11, v8, 0x4

    if-ge v10, v11, :cond_2

    .line 186
    mul-int/lit8 v6, v6, 0xa

    .line 185
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 189
    .end local v10    # "i":I
    :cond_2
    iget-object v10, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v10, v10, v9

    .line 191
    .local v10, "lsb":I
    if-gt v6, v3, :cond_3

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v11, v11

    mul-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x3

    if-ne v7, v11, :cond_3

    .line 192
    invoke-super/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    return v2

    .line 195
    :cond_3
    move/from16 v11, p1

    .line 197
    .local v11, "discarded":I
    if-ne v6, v3, :cond_4

    .line 199
    iget-object v12, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v13, v9, -0x1

    aget v12, v12, v13

    div-int/lit16 v12, v12, 0x3e8

    rem-int/lit8 v12, v12, 0xa

    .line 200
    .local v12, "n":I
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v14, v9, -0x1

    aget v15, v13, v14

    rem-int/lit16 v15, v15, 0x3e8

    aput v15, v13, v14

    .line 201
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v14, v9, -0x1

    aget v13, v13, v14

    or-int/2addr v11, v13

    goto :goto_2

    .line 203
    .end local v12    # "n":I
    :cond_4
    mul-int/lit8 v12, v10, 0xa

    div-int/2addr v12, v6

    rem-int/lit8 v12, v12, 0xa

    .line 204
    .restart local v12    # "n":I
    div-int/lit8 v13, v6, 0xa

    rem-int v13, v10, v13

    or-int/2addr v11, v13

    .line 207
    :goto_2
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v9, :cond_5

    .line 208
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v14, v14, v13

    or-int/2addr v11, v14

    .line 209
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aput v2, v14, v13

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 212
    .end local v13    # "i":I
    :cond_5
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    div-int v14, v10, v6

    mul-int/2addr v14, v6

    aput v14, v13, v9

    .line 215
    sget-object v13, Lorg/apache/commons/math3/dfp/DfpDec$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/4 v14, 0x5

    packed-switch v13, :pswitch_data_0

    .line 250
    iget-byte v13, v0, Lorg/apache/commons/math3/dfp/DfpDec;->sign:B

    const/4 v14, -0x1

    if-ne v13, v14, :cond_13

    if-nez v12, :cond_12

    if-eqz v11, :cond_13

    goto/16 :goto_d

    .line 245
    :pswitch_0
    iget-byte v13, v0, Lorg/apache/commons/math3/dfp/DfpDec;->sign:B

    if-ne v13, v3, :cond_7

    if-nez v12, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    move v13, v3

    goto :goto_4

    :cond_7
    move v13, v2

    .line 246
    .local v13, "inc":Z
    :goto_4
    goto/16 :goto_e

    .line 239
    .end local v13    # "inc":Z
    :pswitch_1
    if-gt v12, v14, :cond_a

    if-ne v12, v14, :cond_8

    if-nez v11, :cond_a

    :cond_8
    if-ne v12, v14, :cond_9

    if-nez v11, :cond_9

    div-int v13, v10, v6

    and-int/2addr v13, v3

    if-nez v13, :cond_9

    goto :goto_5

    :cond_9
    move v13, v2

    goto :goto_6

    :cond_a
    :goto_5
    move v13, v3

    .line 242
    .restart local v13    # "inc":Z
    :goto_6
    goto :goto_e

    .line 233
    .end local v13    # "inc":Z
    :pswitch_2
    if-gt v12, v14, :cond_d

    if-ne v12, v14, :cond_b

    if-nez v11, :cond_d

    :cond_b
    if-ne v12, v14, :cond_c

    if-nez v11, :cond_c

    div-int v13, v10, v6

    and-int/2addr v13, v3

    if-ne v13, v3, :cond_c

    goto :goto_7

    :cond_c
    move v13, v2

    goto :goto_8

    :cond_d
    :goto_7
    move v13, v3

    .line 236
    .restart local v13    # "inc":Z
    :goto_8
    goto :goto_e

    .line 229
    .end local v13    # "inc":Z
    :pswitch_3
    if-le v12, v14, :cond_e

    move v13, v3

    goto :goto_9

    :cond_e
    move v13, v2

    .line 230
    .restart local v13    # "inc":Z
    :goto_9
    goto :goto_e

    .line 225
    .end local v13    # "inc":Z
    :pswitch_4
    if-lt v12, v14, :cond_f

    move v13, v3

    goto :goto_a

    :cond_f
    move v13, v2

    .line 226
    .restart local v13    # "inc":Z
    :goto_a
    goto :goto_e

    .line 221
    .end local v13    # "inc":Z
    :pswitch_5
    if-nez v12, :cond_11

    if-eqz v11, :cond_10

    goto :goto_b

    :cond_10
    move v13, v2

    goto :goto_c

    :cond_11
    :goto_b
    move v13, v3

    .line 222
    .restart local v13    # "inc":Z
    :goto_c
    goto :goto_e

    .line 217
    .end local v13    # "inc":Z
    :pswitch_6
    const/4 v13, 0x0

    .line 218
    .restart local v13    # "inc":Z
    goto :goto_e

    .line 250
    .end local v13    # "inc":Z
    :cond_12
    :goto_d
    move v13, v3

    goto :goto_e

    :cond_13
    move v13, v2

    .line 254
    .restart local v13    # "inc":Z
    :goto_e
    if-eqz v13, :cond_15

    .line 256
    move v14, v6

    .line 257
    .local v14, "rh":I
    move v15, v9

    .local v15, "i":I
    :goto_f
    move/from16 v16, v2

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v2, v2

    if-ge v15, v2, :cond_14

    .line 258
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v2, v2, v15

    add-int/2addr v2, v14

    .line 259
    .local v2, "r":I
    div-int/lit16 v14, v2, 0x2710

    .line 260
    move/from16 v17, v3

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    rem-int/lit16 v5, v2, 0x2710

    aput v5, v3, v15

    .line 257
    .end local v2    # "r":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    const/4 v5, 0x4

    goto :goto_f

    :cond_14
    move/from16 v17, v3

    .line 263
    .end local v15    # "i":I
    if-eqz v14, :cond_16

    .line 264
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpDec;->shiftRight()V

    .line 265
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput v14, v2, v3

    goto :goto_10

    .line 254
    .end local v14    # "rh":I
    :cond_15
    move/from16 v16, v2

    .line 270
    :cond_16
    :goto_10
    iget v2, v0, Lorg/apache/commons/math3/dfp/DfpDec;->exp:I

    const/16 v3, -0x7fff

    if-ge v2, v3, :cond_17

    .line 272
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 273
    return v3

    .line 276
    :cond_17
    iget v2, v0, Lorg/apache/commons/math3/dfp/DfpDec;->exp:I

    const v3, 0x8000

    if-le v2, v3, :cond_18

    .line 278
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 279
    return v3

    .line 282
    :cond_18
    if-nez v12, :cond_1a

    if-eqz v11, :cond_19

    goto :goto_11

    .line 287
    :cond_19
    return v16

    .line 284
    :cond_1a
    :goto_11
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 285
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
