.class public Lorg/apache/commons/math3/ml/distance/EarthMoversDistance;
.super Ljava/lang/Object;
.source "EarthMoversDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x4b0892d12c4e138aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 9
    .param p1, "a"    # [D
    .param p2, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .local v0, "lastDistance":D
    const-wide/16 v2, 0x0

    .line 41
    .local v2, "totalDistance":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 42
    aget-wide v5, p1, v4

    add-double/2addr v5, v0

    aget-wide v7, p2, v4

    sub-double/2addr v5, v7

    .line 43
    .local v5, "currentDistance":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 44
    move-wide v0, v5

    .line 41
    .end local v5    # "currentDistance":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    .end local v4    # "i":I
    :cond_0
    return-wide v2
.end method
