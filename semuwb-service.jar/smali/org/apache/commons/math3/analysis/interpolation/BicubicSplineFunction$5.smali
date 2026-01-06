.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field final synthetic val$aXY:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    .line 549
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->val$aXY:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 14
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 552
    mul-double v0, p1, p1

    .line 553
    .local v0, "x2":D
    const/4 v2, 0x4

    new-array v3, v2, [D

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v3, v7

    const/4 v10, 0x2

    aput-wide p1, v3, v10

    const/4 v11, 0x3

    aput-wide v0, v3, v11

    .line 555
    .local v3, "pX":[D
    mul-double v12, p3, p3

    .line 556
    .local v12, "y2":D
    new-array v2, v2, [D

    aput-wide v5, v2, v4

    aput-wide v8, v2, v7

    aput-wide p3, v2, v10

    aput-wide v12, v2, v11

    .line 558
    .local v2, "pY":[D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->val$aXY:[[D

    invoke-static {v4, v3, v2, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v4

    return-wide v4
.end method
