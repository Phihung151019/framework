.class Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

.field private valueRange:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V
    .locals 2

    .line 1016
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    .line 1018
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    .line 1019
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
    .param p1, "x1"    # [D

    .line 1005
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    return-object v0
.end method

.method private penalty([D[D)D
    .locals 7
    .param p1, "x"    # [D
    .param p2, "repaired"    # [D

    .line 1090
    const-wide/16 v0, 0x0

    .line 1091
    .local v0, "penalty":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1092
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 1093
    .local v3, "diff":D
    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    mul-double/2addr v5, v3

    add-double/2addr v0, v5

    .line 1091
    .end local v3    # "diff":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z

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

    .line 1068
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 1069
    .local v0, "lB":[D
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 1071
    .local v1, "uB":[D
    array-length v2, p1

    new-array v2, v2, [D

    .line 1072
    .local v2, "repaired":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 1073
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1074
    aget-wide v4, v0, v3

    aput-wide v4, v2, v3

    goto :goto_1

    .line 1075
    :cond_0
    aget-wide v4, p1, v3

    aget-wide v6, v1, v3

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 1076
    aget-wide v4, v1, v3

    aput-wide v4, v2, v3

    goto :goto_1

    .line 1078
    :cond_1
    aget-wide v4, p1, v3

    aput-wide v4, v2, v3

    .line 1072
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1081
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public isFeasible([D)Z
    .locals 9
    .param p1, "x"    # [D

    .line 1042
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 1043
    .local v0, "lB":[D
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 1045
    .local v1, "uB":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1046
    aget-wide v3, p1, v2

    aget-wide v5, v0, v2

    cmpg-double v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 1047
    return v4

    .line 1049
    :cond_0
    aget-wide v5, p1, v2

    aget-wide v7, v1, v2

    cmpl-double v3, v5, v7

    if-lez v3, :cond_1

    .line 1050
    return v4

    .line 1045
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public setValueRange(D)V
    .locals 0
    .param p1, "valueRange"    # D

    .line 1060
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    .line 1061
    return-void
.end method

.method public value([D)D
    .locals 5
    .param p1, "point"    # [D

    .line 1027
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v0, :cond_0

    .line 1028
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    .line 1029
    .local v0, "repaired":[D
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 1031
    .end local v0    # "repaired":[D
    .local v1, "value":D
    goto :goto_0

    .line 1032
    .end local v1    # "value":D
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 1034
    .restart local v1    # "value":D
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    neg-double v3, v1

    :goto_1
    return-wide v3
.end method
