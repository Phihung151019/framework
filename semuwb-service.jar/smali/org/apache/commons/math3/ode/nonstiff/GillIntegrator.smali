.class public Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "GillIntegrator.java"


# static fields
.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 50
    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_C:[D

    .line 55
    const/4 v1, 0x1

    new-array v2, v1, [D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    aput-wide v4, v2, v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v6, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    sub-double v8, v4, v8

    div-double/2addr v8, v4

    const/4 v10, 0x2

    new-array v11, v10, [D

    aput-wide v6, v11, v3

    aput-wide v8, v11, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    neg-double v6, v6

    div-double/2addr v6, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v8, v4

    div-double/2addr v8, v4

    new-array v12, v0, [D

    const-wide/16 v13, 0x0

    aput-wide v13, v12, v3

    aput-wide v6, v12, v1

    aput-wide v8, v12, v10

    filled-new-array {v2, v11, v12}, [[D

    move-result-object v2

    sput-object v2, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_A:[[D

    .line 62
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v6, v4, v6

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    add-double/2addr v11, v4

    div-double/2addr v11, v8

    const/4 v2, 0x4

    new-array v2, v2, [D

    const-wide v4, 0x3fc5555555555555L    # 0.16666666666666666

    aput-wide v4, v2, v3

    aput-wide v6, v2, v1

    aput-wide v11, v2, v10

    aput-wide v4, v2, v0

    sput-object v2, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_B:[D

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8
    .param p1, "step"    # D

    .line 71
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>()V

    const-string v1, "Gill"

    move-object v0, p0

    move-wide v6, p1

    .end local p1    # "step":D
    .local v6, "step":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    .line 72
    return-void
.end method
