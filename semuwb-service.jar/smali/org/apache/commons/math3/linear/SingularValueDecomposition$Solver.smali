.class Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private nonSingular:Z

.field private final pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method private constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V
    .locals 8
    .param p1, "singularValues"    # [D
    .param p2, "uT"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "v"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p4, "nonSingular"    # Z
    .param p5, "tol"    # D

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    .line 675
    .local v0, "suT":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 677
    aget-wide v2, p1, v1

    cmpl-double v2, v2, p5

    if-lez v2, :cond_0

    .line 678
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v4, p1, v1

    div-double/2addr v2, v4

    .local v2, "a":D
    goto :goto_1

    .line 680
    .end local v2    # "a":D
    :cond_0
    const-wide/16 v2, 0x0

    .line 682
    .restart local v2    # "a":D
    :goto_1
    aget-object v4, v0, v1

    .line 683
    .local v4, "suTi":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 684
    aget-wide v6, v4, v5

    mul-double/2addr v6, v2

    aput-wide v6, v4, v5

    .line 683
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 675
    .end local v2    # "a":D
    .end local v4    # "suTi":[D
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {p3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 688
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->nonSingular:Z

    .line 689
    return-void
.end method

.method synthetic constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "x2"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p4, "x3"    # Z
    .param p5, "x4"    # D
    .param p7, "x5"    # Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;

    .line 657
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 737
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->nonSingular:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 703
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
