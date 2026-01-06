.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;
.super Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.source "InterpolatingMicrosphere2D.java"


# static fields
.field private static final DIMENSION:I = 0x2


# direct methods
.method public constructor <init>(IDDD)V
    .locals 10
    .param p1, "size"    # I
    .param p2, "maxDarkFraction"    # D
    .param p4, "darkThreshold"    # D
    .param p6, "background"    # D

    .line 57
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 61
    int-to-double v3, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v3, v5

    int-to-double v5, p1

    div-double/2addr v3, v5

    .line 63
    .local v3, "angle":D
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v7

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v9, 0x0

    aput-wide v5, v1, v9

    const/4 v5, 0x1

    aput-wide v7, v1, v5

    invoke-virtual {p0, v1, v9}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;->add([DZ)V

    .line 60
    .end local v3    # "angle":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;)V
    .locals 0
    .param p1, "other"    # Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    .line 76
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;
    .locals 1

    .line 85
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;->copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    move-result-object v0

    return-object v0
.end method
