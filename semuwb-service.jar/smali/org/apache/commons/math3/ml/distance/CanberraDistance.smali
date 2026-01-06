.class public Lorg/apache/commons/math3/ml/distance/CanberraDistance;
.super Ljava/lang/Object;
.source "CanberraDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x60c281567cfc58a4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 10
    .param p1, "a"    # [D
    .param p2, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 36
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 39
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 40
    .local v3, "num":D
    aget-wide v5, p1, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    aget-wide v7, p2, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 41
    .local v5, "denom":D
    const-wide/16 v7, 0x0

    cmpl-double v9, v3, v7

    if-nez v9, :cond_0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    div-double v7, v3, v5

    :goto_1
    add-double/2addr v0, v7

    .line 38
    .end local v3    # "num":D
    .end local v5    # "denom":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method
