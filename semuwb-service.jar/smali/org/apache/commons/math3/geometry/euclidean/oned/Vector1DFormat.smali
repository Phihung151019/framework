.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;
.super Lorg/apache/commons/math3/geometry/VectorFormat;
.source "Vector1DFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/VectorFormat<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    const-string v0, "; "

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    const-string v2, "{"

    const-string v3, "}"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 72
    const-string v0, "; "

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/text/NumberFormat;

    .line 84
    const-string v0, "; "

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 63
    const-string v0, "}"

    const-string v1, "; "

    const-string v2, "{"

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 64
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;
    .locals 1

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 101
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/geometry/Vector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 108
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 109
    .local v0, "p1":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v1

    const/4 v3, 0x1

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-virtual {p0, p2, p3, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;[D)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 116
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    .line 117
    .local v1, "result":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    return-object v1

    .line 118
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->parseCoordinates(ILjava/lang/String;Ljava/text/ParsePosition;)[D

    move-result-object v0

    .line 129
    .local v0, "coordinates":[D
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v1
.end method
