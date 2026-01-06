.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
.super Ljava/lang/Object;
.source "HarmonicOscillator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 3
    .param p1, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 142
    if-eqz p1, :cond_1

    .line 145
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 143
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 20
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 115
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->validateParameters([D)V

    .line 117
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    .line 118
    .local v3, "amplitude":D
    const/4 v5, 0x1

    aget-wide v6, v0, v5

    .line 119
    .local v6, "omega":D
    const/4 v8, 0x2

    aget-wide v9, v0, v8

    .line 121
    .local v9, "phase":D
    mul-double v11, v6, p1

    add-double/2addr v11, v9

    .line 122
    .local v11, "xTimesOmegaPlusPhase":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->access$000(DD)D

    move-result-wide v13

    .line 123
    .local v13, "a":D
    move v15, v5

    move-wide/from16 v16, v6

    .end local v6    # "omega":D
    .local v16, "omega":D
    neg-double v5, v3

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    mul-double v5, v5, v18

    .line 124
    .local v5, "p":D
    mul-double v18, v5, p1

    .line 126
    .local v18, "w":D
    const/4 v7, 0x3

    new-array v7, v7, [D

    aput-wide v13, v7, v2

    aput-wide v18, v7, v15

    aput-wide v5, v7, v8

    return-object v7
.end method

.method public varargs value(D[D)D
    .locals 4
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->validateParameters([D)V

    .line 96
    const/4 v0, 0x1

    aget-wide v0, p3, v0

    mul-double/2addr v0, p1

    const/4 v2, 0x2

    aget-wide v2, p3, v2

    add-double/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->access$000(DD)D

    move-result-wide v0

    return-wide v0
.end method
