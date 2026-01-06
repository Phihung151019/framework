.class public abstract Lorg/apache/commons/math3/fraction/AbstractFormat;
.super Ljava/text/NumberFormat;
.source "AbstractFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x60e1ea2fb2263b13L


# instance fields
.field private denominatorFormat:Ljava/text/NumberFormat;

.field private numeratorFormat:Ljava/text/NumberFormat;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 49
    invoke-static {}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/text/NumberFormat;)V
    .locals 1
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 58
    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "numeratorFormat"    # Ljava/text/NumberFormat;
    .param p2, "denominatorFormat"    # Ljava/text/NumberFormat;

    .line 68
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/AbstractFormat;->numeratorFormat:Ljava/text/NumberFormat;

    .line 70
    iput-object p2, p0, Lorg/apache/commons/math3/fraction/AbstractFormat;->denominatorFormat:Ljava/text/NumberFormat;

    .line 71
    return-void
.end method

.method protected static getDefaultNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 91
    invoke-static {p0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 92
    .local v0, "nf":Ljava/text/NumberFormat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 94
    return-object v0
.end method

.method protected static parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 145
    invoke-static {p0, p1}, Lorg/apache/commons/math3/fraction/AbstractFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    .line 146
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 147
    return-void
.end method

.method protected static parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 157
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 158
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    .local v1, "n":I
    const/4 v2, 0x0

    .line 161
    .local v2, "ret":C
    if-ge v0, v1, :cond_3

    .line 164
    :goto_0
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 168
    if-ge v3, v1, :cond_2

    .line 169
    move v2, v0

    move v0, v3

    goto :goto_2

    .line 168
    :cond_2
    move v0, v3

    .line 173
    .end local v3    # "index":I
    .local v0, "index":I
    :cond_3
    :goto_2
    return v2
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/commons/math3/fraction/AbstractFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/commons/math3/fraction/AbstractFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDenominatorFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/AbstractFormat;->denominatorFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getNumeratorFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/AbstractFormat;->numeratorFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public setDenominatorFormat(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 119
    if-eqz p1, :cond_0

    .line 122
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/AbstractFormat;->denominatorFormat:Ljava/text/NumberFormat;

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DENOMINATOR_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setNumeratorFormat(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 131
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/AbstractFormat;->numeratorFormat:Ljava/text/NumberFormat;

    .line 135
    return-void

    .line 132
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
