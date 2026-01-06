.class public Lorg/apache/commons/math3/fraction/BigFractionFormat;
.super Lorg/apache/commons/math3/fraction/AbstractFormat;
.source "BigFractionFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28b1273166d9dfe0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "numeratorFormat"    # Ljava/text/NumberFormat;
    .param p2, "denominatorFormat"    # Ljava/text/NumberFormat;

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 70
    return-void
.end method

.method public static formatBigFraction(Lorg/apache/commons/math3/fraction/BigFraction;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .line 89
    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getImproperInstance()Lorg/apache/commons/math3/fraction/BigFractionFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 78
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getImproperInstance()Lorg/apache/commons/math3/fraction/BigFractionFormat;
    .locals 1

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getImproperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/BigFractionFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getImproperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/BigFractionFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFractionFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method

.method public static getProperInstance()Lorg/apache/commons/math3/fraction/BigFractionFormat;
    .locals 1

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getProperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/BigFractionFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getProperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/BigFractionFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 123
    new-instance v0, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 168
    instance-of v0, p1, Lorg/apache/commons/math3/fraction/BigFraction;

    if-eqz v0, :cond_0

    .line 169
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->format(Lorg/apache/commons/math3/fraction/BigFraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .local v0, "ret":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 170
    .end local v0    # "ret":Ljava/lang/StringBuffer;
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    move-object v1, p1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->format(Lorg/apache/commons/math3/fraction/BigFraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 172
    .end local v0    # "ret":Ljava/lang/StringBuffer;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->format(Lorg/apache/commons/math3/fraction/BigFraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 179
    .restart local v0    # "ret":Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 176
    .end local v0    # "ret":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_FORMAT_OBJECT_TO_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public format(Lorg/apache/commons/math3/fraction/BigFraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "BigFraction"    # Lorg/apache/commons/math3/fraction/BigFraction;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 140
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 143
    const-string v0, " / "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->getDenominator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 146
    return-object p2
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parse(Ljava/lang/String;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 192
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    .line 193
    .local v1, "result":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    return-object v1

    .line 194
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 208
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 211
    .local v0, "initialIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 214
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parseNextBigInteger(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/math/BigInteger;

    move-result-object v1

    .line 215
    .local v1, "num":Ljava/math/BigInteger;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 220
    return-object v2

    .line 224
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 225
    .local v3, "startIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v4

    .line 226
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_0

    .line 238
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 239
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 240
    return-object v2

    .line 233
    :sswitch_0
    nop

    .line 244
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 247
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parseNextBigInteger(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/math/BigInteger;

    move-result-object v5

    .line 248
    .local v5, "den":Ljava/math/BigInteger;
    if-nez v5, :cond_1

    .line 252
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 253
    return-object v2

    .line 256
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v2, v1, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 230
    .end local v5    # "den":Ljava/math/BigInteger;
    :sswitch_1
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method protected parseNextBigInteger(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 269
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 270
    .local v0, "start":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 271
    .local v1, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    :try_start_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, "n":Ljava/math/BigInteger;
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return-object v2

    .line 280
    .end local v2    # "n":Ljava/math/BigInteger;
    :catch_0
    move-exception v2

    .line 281
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 282
    const/4 v3, 0x0

    return-object v3
.end method
