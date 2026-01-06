.class public Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "LutherIntegrator.java"


# static fields
.field private static final Q:D

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 59
    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    .line 62
    sget-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    sub-double v0, v2, v0

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    div-double/2addr v0, v4

    sget-wide v6, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    add-double/2addr v6, v2

    div-double/2addr v6, v4

    const/4 v2, 0x6

    new-array v3, v2, [D

    const/4 v4, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v3, v4

    const/4 v5, 0x1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    aput-wide v10, v3, v5

    const/4 v10, 0x2

    const-wide v11, 0x3fe5555555555555L    # 0.6666666666666666

    aput-wide v11, v3, v10

    const/4 v11, 0x3

    aput-wide v0, v3, v11

    const/4 v0, 0x4

    aput-wide v6, v3, v0

    const/4 v1, 0x5

    aput-wide v8, v3, v1

    sput-object v3, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_C:[D

    .line 67
    new-array v12, v5, [D

    aput-wide v8, v12, v4

    new-array v13, v10, [D

    fill-array-data v13, :array_0

    new-array v14, v11, [D

    fill-array-data v14, :array_1

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v8, v6

    const-wide/high16 v6, -0x3fcb000000000000L    # -21.0

    add-double/2addr v8, v6

    const-wide v6, 0x4078800000000000L    # 392.0

    div-double/2addr v8, v6

    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    sget-wide v17, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v17, v17, v15

    const-wide/high16 v15, -0x3fb4000000000000L    # -56.0

    add-double v17, v17, v15

    div-double v17, v17, v6

    const-wide/high16 v15, 0x4048000000000000L    # 48.0

    sget-wide v19, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v19, v19, v15

    const-wide/high16 v15, 0x4075000000000000L    # 336.0

    sub-double v15, v15, v19

    div-double/2addr v15, v6

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    sget-wide v21, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v21, v21, v19

    const-wide v19, -0x3fb0800000000000L    # -63.0

    add-double v21, v21, v19

    div-double v21, v21, v6

    move-wide/from16 v19, v15

    new-array v15, v0, [D

    aput-wide v8, v15, v4

    aput-wide v17, v15, v5

    aput-wide v19, v15, v10

    aput-wide v21, v15, v11

    const-wide v8, 0x406fe00000000000L    # 255.0

    sget-wide v16, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v16, v16, v8

    const-wide v8, -0x3f6df40000000000L    # -1155.0

    sub-double v8, v8, v16

    const-wide v16, 0x409ea00000000000L    # 1960.0

    div-double v8, v8, v16

    const-wide/high16 v18, 0x4044000000000000L    # 40.0

    sget-wide v20, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v20, v20, v18

    const-wide v18, -0x3f8e800000000000L    # -280.0

    sub-double v18, v18, v20

    div-double v18, v18, v16

    const-wide/high16 v20, 0x4074000000000000L    # 320.0

    sget-wide v22, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v22, v22, v20

    const-wide/16 v20, 0x0

    sub-double v22, v20, v22

    div-double v22, v22, v16

    const-wide v24, 0x4076b00000000000L    # 363.0

    sget-wide v26, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v26, v26, v24

    const-wide v24, 0x404f800000000000L    # 63.0

    add-double v26, v26, v24

    div-double v26, v26, v16

    sget-wide v24, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v24, v24, v6

    const-wide v6, 0x40a2600000000000L    # 2352.0

    add-double v24, v24, v6

    div-double v24, v24, v16

    new-array v3, v1, [D

    aput-wide v8, v3, v4

    aput-wide v18, v3, v5

    aput-wide v22, v3, v10

    aput-wide v26, v3, v11

    aput-wide v24, v3, v0

    const-wide v6, 0x405a400000000000L    # 105.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v8, v6

    const-wide v6, 0x4074a00000000000L    # 330.0

    add-double/2addr v8, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v6

    sget-wide v16, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v16, v16, v20

    const-wide/high16 v18, 0x405e000000000000L    # 120.0

    add-double v16, v16, v18

    div-double v16, v16, v6

    const-wide v18, 0x4071800000000000L    # 280.0

    sget-wide v20, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v20, v20, v18

    const-wide/high16 v18, -0x3f97000000000000L    # -200.0

    add-double v20, v20, v18

    div-double v20, v20, v6

    const-wide v18, 0x4067a00000000000L    # 189.0

    sget-wide v22, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v22, v22, v18

    const-wide v18, 0x405f800000000000L    # 126.0

    sub-double v22, v18, v22

    div-double v22, v22, v6

    sget-wide v24, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v24, v24, v18

    const-wide v18, -0x3f7a900000000000L    # -686.0

    sub-double v18, v18, v24

    div-double v18, v18, v6

    const-wide v24, 0x4051800000000000L    # 70.0

    sget-wide v26, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double v26, v26, v24

    const-wide v24, 0x407ea00000000000L    # 490.0

    sub-double v24, v24, v26

    div-double v24, v24, v6

    new-array v2, v2, [D

    aput-wide v8, v2, v4

    aput-wide v16, v2, v5

    aput-wide v20, v2, v10

    aput-wide v22, v2, v11

    aput-wide v18, v2, v0

    aput-wide v24, v2, v1

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    filled-new-array/range {v12 .. v17}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_A:[[D

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_B:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd8000000000000L    # 0.375
        0x3fc0000000000000L    # 0.125
    .end array-data

    :array_1
    .array-data 8
        0x3fd2f684bda12f68L    # 0.2962962962962963
        0x3fb2f684bda12f68L    # 0.07407407407407407
        0x3fd2f684bda12f68L    # 0.2962962962962963
    .end array-data

    :array_2
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x0
        0x3fd6c16c16c16c17L    # 0.35555555555555557
        0x0
        0x3fd16c16c16c16c1L    # 0.2722222222222222
        0x3fd16c16c16c16c1L    # 0.2722222222222222
        0x3fa999999999999aL    # 0.05
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8
    .param p1, "step"    # D

    .line 86
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>()V

    const-string v1, "Luther"

    move-object v0, p0

    move-wide v6, p1

    .end local p1    # "step":D
    .local v6, "step":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    .line 87
    return-void
.end method
