.class public Lorg/apache/commons/math3/fraction/ProperFractionFormat;
.super Lorg/apache/commons/math3/fraction/FractionFormat;
.source "ProperFractionFormat.java"


# static fields
.field private static final serialVersionUID:J = 0xa8f621a0a61f4ddL


# instance fields
.field private wholeFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-static {}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 61
    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "wholeFormat"    # Ljava/text/NumberFormat;
    .param p2, "numeratorFormat"    # Ljava/text/NumberFormat;
    .param p3, "denominatorFormat"    # Ljava/text/NumberFormat;

    .line 75
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->setWholeFormat(Ljava/text/NumberFormat;)V

    .line 77
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 94
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 96
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getNumerator()I

    move-result v0

    .line 97
    .local v0, "num":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getDenominator()I

    move-result v1

    .line 98
    .local v1, "den":I
    div-int v2, v0, v1

    .line 99
    .local v2, "whole":I
    rem-int/2addr v0, v1

    .line 101
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 103
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 107
    const-string v3, " / "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 110
    return-object p2
.end method

.method public getWholeFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 13
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 136
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    .line 137
    .local v0, "ret":Lorg/apache/commons/math3/fraction/Fraction;
    if-eqz v0, :cond_0

    .line 138
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 144
    .local v1, "initialIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 148
    .local v2, "whole":Ljava/lang/Number;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 152
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 153
    return-object v3

    .line 157
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 161
    .local v4, "num":Ljava/lang/Number;
    if-nez v4, :cond_2

    .line 165
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 166
    return-object v3

    .line 169
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-gez v5, :cond_3

    .line 171
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 172
    return-object v3

    .line 176
    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 177
    .local v5, "startIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v6

    .line 178
    .local v6, "c":C
    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    .line 190
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 191
    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 192
    return-object v3

    .line 185
    :sswitch_0
    nop

    .line 196
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v8

    .line 200
    .local v8, "den":Ljava/lang/Number;
    if-nez v8, :cond_4

    .line 204
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 205
    return-object v3

    .line 208
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-gez v9, :cond_5

    .line 210
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 211
    return-object v3

    .line 214
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 215
    .local v3, "w":I
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 216
    .local v9, "n":I
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 217
    .local v10, "d":I
    new-instance v11, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-static {v3}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v12

    mul-int/2addr v12, v10

    add-int/2addr v12, v9

    invoke-static {v7, v3}, Lorg/apache/commons/math3/util/MathUtils;->copySign(II)I

    move-result v7

    mul-int/2addr v12, v7

    invoke-direct {v11, v12, v10}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v11

    .line 182
    .end local v3    # "w":I
    .end local v8    # "den":Ljava/lang/Number;
    .end local v9    # "n":I
    .end local v10    # "d":I
    :sswitch_1
    new-instance v3, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-direct {v3, v8, v7}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public setWholeFormat(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 226
    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    .line 230
    return-void

    .line 227
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WHOLE_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
