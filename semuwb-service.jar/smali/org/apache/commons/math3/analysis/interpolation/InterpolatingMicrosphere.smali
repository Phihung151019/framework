.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.super Ljava/lang/Object;
.source "InterpolatingMicrosphere.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;,
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;
    }
.end annotation


# instance fields
.field private final background:D

.field private final darkThreshold:D

.field private final dimension:I

.field private final maxDarkFraction:D

.field private final microsphere:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;",
            ">;"
        }
    .end annotation
.end field

.field private final microsphereData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method protected constructor <init>(IIDDD)V
    .locals 4
    .param p1, "dimension"    # I
    .param p2, "size"    # I
    .param p3, "maxDarkFraction"    # D
    .param p5, "darkThreshold"    # D
    .param p7, "background"    # D

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-lez p1, :cond_3

    .line 80
    if-lez p2, :cond_2

    .line 83
    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p3, v2

    if-gtz v2, :cond_1

    .line 87
    cmpg-double v0, p5, v0

    if-ltz v0, :cond_0

    .line 91
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    .line 92
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    .line 93
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    .line 94
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    .line 95
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    .line 98
    return-void

    .line 88
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 81
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 78
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public constructor <init>(IIDDDLorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 4
    .param p1, "dimension"    # I
    .param p2, "size"    # I
    .param p3, "maxDarkFraction"    # D
    .param p5, "darkThreshold"    # D
    .param p7, "background"    # D
    .param p9, "rand"    # Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;

    .line 128
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    .line 132
    move-wide v0, p7

    move-wide p6, p5

    move-wide p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "dimension":I
    .end local p5    # "darkThreshold":D
    .end local p7    # "background":D
    .local v0, "background":D
    .local p2, "dimension":I
    .local p3, "size":I
    .local p4, "maxDarkFraction":D
    .local p6, "darkThreshold":D
    const/4 p8, 0x0

    .local p8, "i":I
    :goto_0
    if-ge p8, p3, :cond_0

    .line 133
    invoke-virtual {p9}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->add([DZ)V

    .line 132
    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    .line 135
    .end local p8    # "i":I
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V
    .locals 8
    .param p1, "other"    # Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iget v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    .line 144
    iget v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    .line 145
    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    .line 146
    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    .line 147
    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    .line 150
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    .line 154
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    .line 155
    .local v1, "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v1    # "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    goto :goto_0

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 5

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_0

    .line 322
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private illuminate([DDD)V
    .locals 8
    .param p1, "sampleDirection"    # [D
    .param p2, "sampleValue"    # D
    .param p4, "weight"    # D

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_1

    .line 303
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;->getNormal()[D

    move-result-object v1

    .line 304
    .local v1, "n":[D
    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->cosAngle([D[D)D

    move-result-wide v2

    .line 306
    .local v2, "cos":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 307
    mul-double v4, v2, p4

    .line 309
    .local v4, "illumination":D
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 311
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-direct {v7, v4, v5, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v6, v0, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v1    # "n":[D
    .end local v2    # "cos":D
    .end local v4    # "illumination":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private interpolate()D
    .locals 11

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "darkCount":I
    const-wide/16 v1, 0x0

    .line 273
    .local v1, "value":D
    const-wide/16 v3, 0x0

    .line 274
    .local v3, "totalWeight":D
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    .line 275
    .local v6, "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v7

    .line 276
    .local v7, "iV":D
    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_0

    .line 277
    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample()D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v1, v9

    .line 278
    add-double/2addr v3, v7

    goto :goto_1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 282
    .end local v6    # "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    .end local v7    # "iV":D
    :goto_1
    goto :goto_0

    .line 284
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    int-to-double v5, v0

    iget v7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 286
    .local v5, "darkFraction":D
    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_2

    div-double v7, v1, v3

    goto :goto_2

    :cond_2
    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    :goto_2
    return-wide v7
.end method


# virtual methods
.method protected add([DZ)V
    .locals 4
    .param p1, "normal"    # [D
    .param p2, "copy"    # Z

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_2

    .line 254
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    if-gt v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-direct {v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;-><init>([D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-void

    .line 255
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 252
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 1

    .line 165
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    return v0
.end method

.method public value([D[[D[DDD)D
    .locals 15
    .param p1, "point"    # [D
    .param p2, "samplePoints"    # [[D
    .param p3, "sampleValues"    # [D
    .param p4, "exponent"    # D
    .param p6, "noInterpolationTolerance"    # D

    .line 211
    move-object/from16 v0, p2

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_2

    .line 215
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->clear()V

    .line 219
    array-length v3, v0

    .line 220
    .local v3, "numSamples":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 222
    aget-object v5, v0, v4

    move-object/from16 v6, p1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v8

    .line 223
    .local v8, "diff":[D
    invoke-static {v8}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v13

    .line 225
    .local v13, "diffNorm":D
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v5, v9, p6

    if-gez v5, :cond_0

    .line 228
    aget-wide v9, p3, v4

    return-wide v9

    .line 231
    :cond_0
    neg-double v9, v1

    invoke-static {v13, v14, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v11

    .line 232
    .local v11, "weight":D
    aget-wide v9, p3, v4

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->illuminate([DDD)V

    .line 220
    .end local v8    # "diff":[D
    .end local v11    # "weight":D
    .end local v13    # "diffNorm":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    .line 235
    .end local v4    # "i":I
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->interpolate()D

    move-result-wide v4

    return-wide v4

    .line 212
    .end local v3    # "numSamples":I
    :cond_2
    move-object/from16 v6, p1

    new-instance v3, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v3
.end method
