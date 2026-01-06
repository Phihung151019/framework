.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    .line 936
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .param p1, "x1"    # [D

    .line 925
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    return-object v0
.end method

.method private penalty([D[D)D
    .locals 7
    .param p1, "x"    # [D
    .param p2, "repaired"    # [D

    .line 1003
    const-wide/16 v0, 0x0

    .line 1004
    .local v0, "penalty":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1005
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 1006
    .local v3, "diff":D
    add-double/2addr v0, v3

    .line 1004
    .end local v3    # "diff":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v0

    goto :goto_1

    :cond_1
    neg-double v2, v0

    :goto_1
    return-wide v2
.end method

.method private repair([D)[D
    .locals 8
    .param p1, "x"    # [D

    .line 981
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 982
    .local v0, "lB":[D
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 984
    .local v1, "uB":[D
    array-length v2, p1

    new-array v2, v2, [D

    .line 985
    .local v2, "repaired":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 986
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 987
    aget-wide v4, v0, v3

    aput-wide v4, v2, v3

    goto :goto_1

    .line 988
    :cond_0
    aget-wide v4, p1, v3

    aget-wide v6, v1, v3

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 989
    aget-wide v4, v1, v3

    aput-wide v4, v2, v3

    goto :goto_1

    .line 991
    :cond_1
    aget-wide v4, p1, v3

    aput-wide v4, v2, v3

    .line 985
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 994
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public isFeasible([D)Z
    .locals 9
    .param p1, "x"    # [D

    .line 962
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 963
    .local v0, "lB":[D
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 965
    .local v1, "uB":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 966
    aget-wide v3, p1, v2

    aget-wide v5, v0, v2

    cmpg-double v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 967
    return v4

    .line 969
    :cond_0
    aget-wide v5, p1, v2

    aget-wide v7, v1, v2

    cmpl-double v3, v5, v7

    if-lez v3, :cond_1

    .line 970
    return v4

    .line 965
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .locals 7
    .param p1, "point"    # [D

    .line 944
    const-wide/16 v0, 0x0

    .line 945
    .local v0, "penalty":D
    iget-boolean v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v2, :cond_0

    .line 946
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v2

    .line 947
    .local v2, "repaired":[D
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v3

    .line 948
    .local v3, "value":D
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v0

    .line 949
    .end local v2    # "repaired":[D
    goto :goto_0

    .line 950
    .end local v3    # "value":D
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v3

    .line 952
    .restart local v3    # "value":D
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    neg-double v5, v3

    .line 953
    .end local v3    # "value":D
    .local v5, "value":D
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-wide v2, v0

    goto :goto_2

    :cond_2
    neg-double v2, v0

    .line 954
    .end local v0    # "penalty":D
    .local v2, "penalty":D
    :goto_2
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    invoke-direct {v0, v5, v6, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;-><init>(DD)V

    return-object v0
.end method
