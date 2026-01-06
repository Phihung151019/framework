.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;
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

.field final synthetic val$aX:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->val$aX:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 14
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 502
    mul-double v0, p1, p1

    .line 503
    .local v0, "x2":D
    const/4 v2, 0x4

    new-array v3, v2, [D

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v3, v5

    const/4 v8, 0x2

    aput-wide p1, v3, v8

    const/4 v9, 0x3

    aput-wide v0, v3, v9

    .line 505
    .local v3, "pX":[D
    mul-double v10, p3, p3

    .line 506
    .local v10, "y2":D
    mul-double v12, v10, p3

    .line 507
    .local v12, "y3":D
    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide p3, v2, v5

    aput-wide v10, v2, v8

    aput-wide v12, v2, v9

    .line 509
    .local v2, "pY":[D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->val$aX:[[D

    invoke-static {v4, v3, v2, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v4

    return-wide v4
.end method
