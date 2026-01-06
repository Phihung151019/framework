.class final Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;
.super Ljava/lang/Object;
.source "LearningFactorFunctionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;->quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

.field final synthetic val$initValue:D

.field final synthetic val$numCall:J

.field final synthetic val$slope:D


# direct methods
.method constructor <init>(DDJ)V
    .locals 7

    .line 106
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->val$initValue:D

    iput-wide p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->val$slope:D

    iput-wide p5, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->val$numCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->val$initValue:D

    iget-wide v3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->val$slope:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->val$numCall:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;-><init>(DDJ)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

    return-void
.end method


# virtual methods
.method public value(J)D
    .locals 2
    .param p1, "n"    # J

    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->value(J)D

    move-result-wide v0

    return-wide v0
.end method
