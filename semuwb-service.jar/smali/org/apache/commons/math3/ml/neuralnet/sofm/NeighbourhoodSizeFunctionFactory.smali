.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory;
.super Ljava/lang/Object;
.source "NeighbourhoodSizeFunctionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;
    .locals 7
    .param p0, "initValue"    # D
    .param p2, "valueAtNumCall"    # D
    .param p4, "numCall"    # J

    .line 60
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$1;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .end local p0    # "initValue":D
    .end local p2    # "valueAtNumCall":D
    .end local p4    # "numCall":J
    .local v1, "initValue":D
    .local v3, "valueAtNumCall":D
    .local v5, "numCall":J
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$1;-><init>(DDJ)V

    return-object v0
.end method

.method public static quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;
    .locals 7
    .param p0, "initValue"    # D
    .param p2, "slope"    # D
    .param p4, "numCall"    # J

    .line 96
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .end local p0    # "initValue":D
    .end local p2    # "slope":D
    .end local p4    # "numCall":J
    .local v1, "initValue":D
    .local v3, "slope":D
    .local v5, "numCall":J
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunctionFactory$2;-><init>(DDJ)V

    return-object v0
.end method
