.class Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.source "BicubicInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

.field final synthetic val$xval:[D

.field final synthetic val$yval:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V
    .locals 0
    .param p2, "x0"    # [D
    .param p3, "x1"    # [D
    .param p4, "x2"    # [[D
    .param p5, "x3"    # [[D
    .param p6, "x4"    # [[D
    .param p7, "x5"    # [[D

    .line 98
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

    iput-object p8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    iput-object p9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    return-void
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 4
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v0, v2

    cmpl-double v0, p1, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    aget-wide v2, v0, v1

    cmpg-double v0, p3, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v0, v2

    cmpl-double v0, p3, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    return v1

    .line 106
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
