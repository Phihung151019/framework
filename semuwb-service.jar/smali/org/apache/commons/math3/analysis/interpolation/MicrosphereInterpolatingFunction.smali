.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;
.super Ljava/lang/Object;
.source "MicrosphereInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final brightnessExponent:D

.field private final dimension:I

.field private final microsphere:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final samples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([[D[DIILorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 6
    .param p1, "xval"    # [[D
    .param p2, "yval"    # [D
    .param p3, "brightnessExponent"    # I
    .param p4, "microsphereElements"    # I
    .param p5, "rand"    # Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 160
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 163
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_5

    .line 166
    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    .line 170
    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    .line 171
    int-to-double v0, p3

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->brightnessExponent:D

    .line 174
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 176
    aget-object v1, p1, v0

    .line 177
    .local v1, "xvalI":[D
    if-eqz v1, :cond_1

    .line 180
    array-length v2, v1

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    if-ne v2, v3, :cond_0

    .line 184
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v1    # "xvalI":[D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .restart local v1    # "xvalI":[D
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    iget v4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 178
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 187
    .end local v0    # "i":I
    .end local v1    # "xvalI":[D
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    .line 190
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_3

    .line 191
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    invoke-virtual {p5}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;-><init>([D)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 167
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 164
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 161
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 158
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private cosAngle(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 6
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "w"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 251
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public value([D)D
    .locals 12
    .param p1, "point"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 204
    .local v0, "p":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 205
    .local v2, "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->reset()V

    .line 206
    .end local v2    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    goto :goto_0

    .line 209
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 212
    .local v2, "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    .line 213
    .local v3, "diff":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v4

    .line 215
    .local v4, "diffNorm":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    return-wide v6

    .line 221
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 222
    .local v7, "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->brightnessExponent:D

    neg-double v8, v8

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v8

    .line 223
    .local v8, "w":D
    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->normal()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    invoke-direct {p0, v3, v10}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->cosAngle(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v10

    mul-double/2addr v10, v8

    invoke-virtual {v7, v10, v11, v2}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->store(DLjava/util/Map$Entry;)V

    .line 224
    .end local v7    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    .end local v8    # "w":D
    goto :goto_2

    .line 226
    .end local v2    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    .end local v3    # "diff":Lorg/apache/commons/math3/linear/RealVector;
    .end local v4    # "diffNorm":D
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .line 229
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const-wide/16 v1, 0x0

    .line 230
    .local v1, "value":D
    const-wide/16 v3, 0x0

    .line 231
    .local v3, "totalWeight":D
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 232
    .local v6, "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->illumination()D

    move-result-wide v7

    .line 233
    .local v7, "iV":D
    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->sample()Ljava/util/Map$Entry;

    move-result-object v9

    .line 234
    .local v9, "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    if-eqz v9, :cond_4

    .line 235
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v7

    add-double/2addr v1, v10

    .line 236
    add-double/2addr v3, v7

    .line 238
    .end local v6    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    .end local v7    # "iV":D
    .end local v9    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    :cond_4
    goto :goto_3

    .line 240
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    div-double v5, v1, v3

    return-wide v5
.end method
