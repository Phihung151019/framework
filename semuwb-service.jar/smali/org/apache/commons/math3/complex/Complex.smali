.class public Lorg/apache/commons/math3/complex/Complex;
.super Ljava/lang/Object;
.source "Complex.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/complex/Complex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Complex;

.field public static final INF:Lorg/apache/commons/math3/complex/Complex;

.field public static final NaN:Lorg/apache/commons/math3/complex/Complex;

.field public static final ONE:Lorg/apache/commons/math3/complex/Complex;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Complex;

.field private static final serialVersionUID:J = -0x55fb6c0d48a4ff0cL


# instance fields
.field private final imaginary:D

.field private final transient isInfinite:Z

.field private final transient isNaN:Z

.field private final real:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 57
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v5, v6, v5, v6}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 63
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v5, v6, v5, v6}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->ONE:Lorg/apache/commons/math3/complex/Complex;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "real"    # D

    .line 87
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 88
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "real"    # D
    .param p3, "imaginary"    # D

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    .line 98
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    .line 101
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    .line 103
    return-void
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Z
    .locals 1
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;

    .line 392
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/complex/Complex;->equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;I)Z

    move-result v0

    return v0
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;D)Z
    .locals 6
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "eps"    # D

    .line 411
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    move-wide v4, p2

    .end local p2    # "eps":D
    .local v4, "eps":D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;I)Z
    .locals 4
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "maxUlps"    # I

    .line 377
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1, v2, v3, p2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1, v2, v3, p2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static equalsWithRelativeTolerance(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;D)Z
    .locals 6
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "eps"    # D

    .line 432
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    move-wide v4, p2

    .end local p2    # "eps":D
    .local v4, "eps":D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public static valueOf(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p0, "realPart"    # D

    .line 1271
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 1274
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/complex/Complex;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p0, "realPart"    # D
    .param p2, "imaginaryPart"    # D

    .line 1257
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object v0

    .line 1259
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method


# virtual methods
.method public abs()D
    .locals 9

    .line 114
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 115
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 120
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-gez v0, :cond_3

    .line 121
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_2

    .line 122
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 124
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double/2addr v3, v5

    .line 125
    .local v3, "q":D
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v7, v3, v3

    add-double/2addr v7, v1

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    return-wide v5

    .line 127
    .end local v3    # "q":D
    :cond_3
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_4

    .line 128
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 130
    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double/2addr v3, v5

    .line 131
    .restart local v3    # "q":D
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v7, v3, v3

    add-double/2addr v7, v1

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    return-wide v5
.end method

.method public acos()Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .line 645
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 646
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 649
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->sqrt1z()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 55
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .param p1, "addend"    # D

    .line 170
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "addend"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 152
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .line 667
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 668
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 671
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->sqrt1z()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 689
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 690
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 693
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public conjugate()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 192
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 196
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 727
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 731
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 767
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 768
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 771
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method protected createComplex(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "realPart"    # D
    .param p3, "imaginaryPart"    # D

    .line 1245
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 55
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .param p1, "divisor"    # D

    .line 280
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 284
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 286
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    :goto_0
    return-object v0

    .line 289
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 281
    :cond_4
    :goto_1
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 14
    .param p1, "divisor"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 243
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v0

    .line 249
    .local v0, "c":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    .line 250
    .local v2, "d":D
    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 251
    sget-object v4, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v4

    .line 254
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 255
    sget-object v4, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-object v4

    .line 258
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 259
    div-double v4, v0, v2

    .line 260
    .local v4, "q":D
    mul-double v6, v0, v4

    add-double/2addr v6, v2

    .line 261
    .local v6, "denominator":D
    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    add-double/2addr v8, v10

    div-double/2addr v8, v6

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v10, v4

    iget-wide v12, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    sub-double/2addr v10, v12

    div-double/2addr v10, v6

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    return-object v8

    .line 264
    .end local v4    # "q":D
    .end local v6    # "denominator":D
    :cond_3
    div-double v4, v2, v0

    .line 265
    .restart local v4    # "q":D
    mul-double v6, v2, v4

    add-double/2addr v6, v0

    .line 266
    .restart local v6    # "denominator":D
    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v8, v10

    div-double/2addr v8, v6

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v12, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    div-double/2addr v10, v6

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    return-object v8

    .line 245
    .end local v0    # "c":D
    .end local v2    # "d":D
    .end local v4    # "q":D
    .end local v6    # "denominator":D
    :cond_4
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 344
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 345
    return v0

    .line 347
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/complex/Complex;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 348
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/complex/Complex;

    .line 349
    .local v1, "c":Lorg/apache/commons/math3/complex/Complex;
    iget-boolean v3, v1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v3, :cond_1

    .line 350
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    return v0

    .line 352
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v5, v1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v5, v1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 356
    .end local v1    # "c":Lorg/apache/commons/math3/complex/Complex;
    :cond_3
    return v2
.end method

.method public exp()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 808
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 809
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 812
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    .line 813
    .local v0, "expReal":D
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    return-object v2
.end method

.method public getArgument()D
    .locals 4

    .line 1173
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getField()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/complex/ComplexField;
    .locals 1

    .line 1291
    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField;->getInstance()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method public getImaginary()D
    .locals 2

    .line 458
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    .line 467
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 445
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x7

    return v0

    .line 448
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    return v0
.end method

.method public log()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 853
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 854
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 857
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 55
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .param p1, "factor"    # D

    .line 561
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 564
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 570
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 568
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 562
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "factor"    # I

    .line 542
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 545
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 549
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    int-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 547
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 8
    .param p1, "factor"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 518
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 519
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 529
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v4, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v4, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v6, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 527
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 520
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 581
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 585
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public nthRoot(I)Ljava/util/List;
    .locals 16
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/complex/Complex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 1200
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-lez v1, :cond_3

    .line 1205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/complex/Complex;>;"
    iget-boolean v3, v0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v3, :cond_0

    .line 1208
    sget-object v3, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    return-object v2

    .line 1211
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    sget-object v3, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    return-object v2

    .line 1217
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    int-to-double v7, v1

    div-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 1220
    .local v3, "nthRootOfAbs":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getArgument()D

    move-result-wide v5

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 1221
    .local v5, "nthPhi":D
    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v9, v1

    div-double/2addr v7, v9

    .line 1222
    .local v7, "slice":D
    move-wide v9, v5

    .line 1223
    .local v9, "innerPart":D
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_0
    if-ge v11, v1, :cond_2

    .line 1225
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    .line 1226
    .local v12, "realPart":D
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v3

    .line 1227
    .local v14, "imaginaryPart":D
    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    add-double/2addr v9, v7

    .line 1223
    .end local v12    # "realPart":D
    .end local v14    # "imaginaryPart":D
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 1231
    .end local v11    # "k":I
    :cond_2
    return-object v2

    .line 1201
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/complex/Complex;>;"
    .end local v3    # "nthRootOfAbs":D
    .end local v5    # "nthPhi":D
    .end local v7    # "slice":D
    .end local v9    # "innerPart":D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_NTH_ROOT_FOR_NEGATIVE_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v1
.end method

.method public pow(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "x"    # D

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/complex/Complex;->multiply(D)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->exp()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 883
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 884
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->exp()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method protected final readResolve()Ljava/lang/Object;
    .locals 4

    .line 1286
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->reciprocal()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/complex/Complex;
    .locals 9

    .line 295
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 299
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 300
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 303
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    if-eqz v0, :cond_2

    .line 304
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 307
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_3

    .line 308
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double/2addr v3, v5

    .line 309
    .local v3, "q":D
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v5, v3

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    add-double/2addr v5, v7

    div-double/2addr v1, v5

    .line 310
    .local v1, "scale":D
    mul-double v5, v1, v3

    neg-double v7, v1

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 312
    .end local v1    # "scale":D
    .end local v3    # "q":D
    :cond_3
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double/2addr v3, v5

    .line 313
    .restart local v3    # "q":D
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v5, v3

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v5, v7

    div-double/2addr v1, v5

    .line 314
    .restart local v1    # "scale":D
    neg-double v5, v1

    mul-double/2addr v5, v3

    invoke-virtual {p0, v1, v2, v5, v6}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 931
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 932
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 935
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 971
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 972
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 975
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/complex/Complex;
    .locals 8

    .line 1014
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 1015
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 1018
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 1019
    invoke-virtual {p0, v2, v3, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1022
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v4

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 1023
    .local v0, "t":D
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_2

    .line 1024
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    return-object v2

    .line 1026
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    return-object v2
.end method

.method public sqrt1z()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 1049
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 55
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .param p1, "subtrahend"    # D

    .line 624
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    sub-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 625
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "subtrahend"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 606
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 607
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 608
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/complex/Complex;
    .locals 10

    .line 1085
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1088
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    .line 1089
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 1092
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 1096
    .local v0, "real2":D
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v2

    .line 1097
    .local v4, "imaginary2":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1099
    .local v2, "d":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v8

    div-double/2addr v8, v2

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    return-object v6

    .line 1086
    .end local v0    # "real2":D
    .end local v2    # "d":D
    .end local v4    # "imaginary2":D
    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/complex/Complex;
    .locals 10

    .line 1136
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1139
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    .line 1140
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1142
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 1143
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 1146
    .local v0, "real2":D
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v2

    .line 1147
    .local v4, "imaginary2":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1149
    .local v2, "d":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v8

    div-double/2addr v8, v2

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    return-object v6

    .line 1137
    .end local v0    # "real2":D
    .end local v2    # "d":D
    .end local v4    # "imaginary2":D
    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
