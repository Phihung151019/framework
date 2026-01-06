.class public Lorg/apache/commons/math3/linear/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;,
        Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

.field public static final OCTAVE_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    invoke-static {}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance()Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/MatrixUtils;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    .line 58
    new-instance v1, Lorg/apache/commons/math3/linear/RealMatrixFormat;

    const-string v6, "; "

    const-string v7, ", "

    const-string v2, "["

    const-string v3, "]"

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/commons/math3/linear/MatrixUtils;->OCTAVE_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;)",
            "Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;"
        }
    .end annotation

    .line 663
    .local p0, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;-><init>()V

    .line 664
    .local v0, "converter":Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;
    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 665
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v1

    return-object v1
.end method

.method public static blockInverse(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 25
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "splitIndex"    # I

    .line 1012
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    .line 1013
    .local v2, "n":I
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 1018
    add-int/lit8 v3, v1, 0x1

    .line 1020
    .local v3, "splitIndex1":I
    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 1021
    .local v5, "a":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v0, v4, v1, v3, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 1022
    .local v6, "b":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v7, v2, -0x1

    invoke-interface {v0, v3, v7, v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    .line 1023
    .local v7, "c":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v8, v2, -0x1

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v0, v3, v8, v3, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 1025
    .local v8, "d":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v9, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v9, v5}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1026
    .local v9, "aDec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v10

    .line 1027
    .local v10, "aSolver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v10}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1030
    invoke-interface {v10}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 1032
    .local v11, "aInv":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v12, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v12, v8}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1033
    .local v12, "dDec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual {v12}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v13

    .line 1034
    .local v13, "dSolver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v13}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1037
    invoke-interface {v13}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    .line 1039
    .local v14, "dInv":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v6, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    .line 1040
    .local v15, "tmp1":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v4, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1041
    .local v4, "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v16

    .line 1042
    .local v16, "tmp1Solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1045
    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 1047
    .local v0, "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v7, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 1048
    .local v1, "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v17, v4

    .end local v4    # "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .local v17, "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    new-instance v4, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1049
    .local v4, "tmp2Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v18

    .line 1050
    .local v18, "tmp2Solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1053
    move-object/from16 v19, v1

    .end local v1    # "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v19, "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 1055
    .local v1, "result11":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v20, v4

    .end local v4    # "tmp2Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .local v20, "tmp2Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-interface {v11, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .end local v5    # "a":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v6    # "b":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v21, "a":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v22, "b":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 1056
    .local v4, "result01":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v23, v1

    .end local v1    # "result11":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v23, "result11":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v14, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 1058
    .local v1, "result10":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v2, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 1059
    .local v5, "result":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v6

    move-object/from16 v24, v0

    const/4 v0, 0x0

    .end local v0    # "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v24, "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v5, v6, v0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1060
    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v6

    invoke-interface {v5, v6, v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1061
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v6

    invoke-interface {v5, v6, v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1062
    invoke-interface/range {v23 .. v23}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    invoke-interface {v5, v0, v3, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1064
    return-object v5

    .line 1051
    .end local v19    # "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v20    # "tmp2Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .end local v21    # "a":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v22    # "b":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v23    # "result11":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v24    # "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v0    # "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v1, "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v4, "tmp2Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .local v5, "a":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v6    # "b":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_0
    move-object/from16 v24, v0

    .end local v0    # "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v24    # "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    .line 1043
    .end local v1    # "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v17    # "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .end local v18    # "tmp2Solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    .end local v24    # "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v4, "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    .line 1035
    .end local v4    # "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .end local v14    # "dInv":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v15    # "tmp1":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v16    # "tmp1Solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    .line 1028
    .end local v11    # "aInv":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v12    # "dDec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .end local v13    # "dSolver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    .line 1014
    .end local v3    # "splitIndex1":I
    .end local v5    # "a":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v6    # "b":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v7    # "c":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "d":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v9    # "aDec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    .end local v10    # "aSolver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method public static checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 5
    .param p0, "left"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "right"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 571
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 576
    return-void

    .line 573
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public static checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V
    .locals 5
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 483
    if-ltz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 487
    return-void

    .line 484
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COLUMN_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V
    .locals 0
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 454
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 455
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 456
    return-void
.end method

.method public static checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 3
    .param p0, "left"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "right"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 606
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 610
    return-void

    .line 607
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V
    .locals 5
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 467
    if-ltz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 472
    return-void

    .line 469
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROW_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V
    .locals 5
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 506
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 507
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 508
    const/4 v0, 0x0

    if-lt p2, p1, :cond_1

    .line 513
    invoke-static {p0, p3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 514
    invoke-static {p0, p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 515
    if-lt p4, p3, :cond_0

    .line 521
    return-void

    .line 516
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_COLUMN_AFTER_FINAL_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 509
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public static checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V
    .locals 4
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 540
    if-eqz p1, :cond_5

    .line 543
    if-eqz p2, :cond_4

    .line 546
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 549
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 553
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 554
    .local v3, "row":I
    invoke-static {p0, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 553
    .end local v3    # "row":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    move-object v0, p2

    .restart local v0    # "arr$":[I
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 557
    .local v3, "column":I
    invoke-static {p0, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 556
    .end local v3    # "column":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 559
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void

    .line 550
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_SELECTED_COLUMN_INDEX_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    .line 547
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_SELECTED_ROW_INDEX_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    .line 544
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 541
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 5
    .param p0, "left"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "right"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 588
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 593
    return-void

    .line 590
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public static checkSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 1
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "eps"    # D

    .line 426
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z

    .line 427
    return-void
.end method

.method public static createColumnFieldMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 362
    .local p0, "columnData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    if-eqz p0, :cond_2

    .line 365
    array-length v0, p0

    .line 366
    .local v0, "nRows":I
    if-eqz v0, :cond_1

    .line 369
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 370
    .local v2, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 371
    aget-object v4, p0, v3

    invoke-interface {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 367
    .end local v2    # "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 363
    .end local v0    # "nRows":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "columnData"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 338
    if-eqz p0, :cond_1

    .line 341
    array-length v0, p0

    .line 342
    .local v0, "nRows":I
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 343
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 344
    const/4 v3, 0x0

    aget-wide v4, p0, v2

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 339
    .end local v0    # "nRows":I
    .end local v1    # "m":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createFieldDiagonalMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 233
    .local p0, "diagonal":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    array-length v1, p0

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 235
    .local v0, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 236
    aget-object v2, p0, v1

    invoke-interface {v0, v1, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static createFieldIdentityMatrix(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 195
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 196
    .local v0, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 197
    .local v1, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p0, p1, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    .line 198
    .local v2, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 199
    aget-object v4, v2, v3

    .line 200
    .local v4, "dRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    aput-object v1, v4, v3

    .line 198
    .end local v4    # "dRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "row":I
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v3
.end method

.method public static createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    mul-int v0, p1, p2

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    :goto_0
    return-object v0
.end method

.method public static createFieldMatrix([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 159
    .local p0, "data":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 163
    array-length v1, p0

    aget-object v0, p0, v0

    array-length v0, v0

    mul-int/2addr v1, v0

    const/16 v0, 0x1000

    if-gt v1, v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    :goto_0
    return-object v0

    .line 161
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createFieldVector([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 269
    .local p0, "data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    if-eqz p0, :cond_1

    .line 272
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    aget-object v1, p0, v1

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0

    .line 273
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 270
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4
    .param p0, "diagonal"    # [D

    .line 215
    array-length v0, p0

    array-length v1, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 216
    .local v0, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 217
    aget-wide v2, p0, v1

    invoke-interface {v0, v1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4
    .param p0, "dimension"    # I

    .line 176
    invoke-static {p0, p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 177
    .local v0, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 178
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p0, "rows"    # I
    .param p1, "columns"    # I

    .line 81
    mul-int v0, p0, p1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public static createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p0, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 130
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 134
    array-length v1, p0

    aget-object v0, p0, v0

    array-length v0, v0

    mul-int/2addr v1, v0

    const/16 v0, 0x1000

    if-gt v1, v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    :goto_0
    return-object v0

    .line 132
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createRealVector([D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p0, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 251
    if-eqz p0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createRowFieldMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 313
    .local p0, "rowData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    if-eqz p0, :cond_2

    .line 316
    array-length v0, p0

    .line 317
    .local v0, "nCols":I
    if-eqz v0, :cond_1

    .line 320
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 321
    .local v2, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 322
    aget-object v4, p0, v3

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 318
    .end local v2    # "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 314
    .end local v0    # "nCols":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static createRowRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "rowData"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 289
    if-eqz p0, :cond_1

    .line 292
    array-length v0, p0

    .line 293
    .local v0, "nCols":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 294
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 295
    const/4 v3, 0x0

    aget-wide v4, p0, v2

    invoke-interface {v1, v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 290
    .end local v0    # "nCols":I
    .end local v1    # "m":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static deserializeRealMatrix(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 880
    .local v0, "n":I
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 881
    .local v1, "m":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 882
    .local v2, "data":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 883
    aget-object v6, v2, v5

    .line 884
    .local v6, "dataI":[D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 885
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 884
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 882
    .end local v6    # "dataI":[D
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 890
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v2, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 893
    .local v5, "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 895
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 896
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "data":[[D
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    nop

    .line 907
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 904
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 905
    throw v1

    .line 898
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 899
    .local v0, "nsfe":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 900
    .restart local v1    # "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 901
    throw v1
.end method

.method public static deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 775
    .local v0, "n":I
    new-array v1, v0, [D

    .line 776
    .local v1, "data":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 777
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 784
    .local v2, "vector":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 786
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 787
    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v0    # "n":I
    .end local v1    # "data":[D
    .end local v2    # "vector":Lorg/apache/commons/math3/linear/RealVector;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    nop

    .line 799
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 795
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 796
    throw v1

    .line 789
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 790
    .local v0, "nsfe":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 791
    .restart local v1    # "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 792
    throw v1
.end method

.method public static fractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/Fraction;",
            ">;)",
            "Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;"
        }
    .end annotation

    .line 618
    .local p0, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/Fraction;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;-><init>()V

    .line 619
    .local v0, "converter":Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;
    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 620
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;->getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v1

    return-object v1
.end method

.method public static inverse(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 1085
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->inverse(Lorg/apache/commons/math3/linear/RealMatrix;D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public static inverse(Lorg/apache/commons/math3/linear/RealMatrix;D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 1105
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1107
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    instance-of v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_0

    .line 1113
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v0

    return-object v0

    .line 1115
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 1116
    .local v0, "decomposition":Lorg/apache/commons/math3/linear/QRDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    return-object v1

    .line 1108
    .end local v0    # "decomposition":Lorg/apache/commons/math3/linear/QRDecomposition;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method public static isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z
    .locals 1
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "eps"    # D

    .line 439
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z

    move-result v0

    return v0
.end method

.method private static isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z
    .locals 17
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "relativeTolerance"    # D
    .param p3, "raiseException"    # Z

    .line 390
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    .line 391
    .local v3, "rows":I
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 392
    if-nez p3, :cond_0

    .line 395
    return v5

    .line 393
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v4

    .line 398
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 399
    add-int/lit8 v6, v4, 0x1

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_4

    .line 400
    invoke-interface {v0, v4, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    .line 401
    .local v7, "mij":D
    invoke-interface {v0, v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    .line 402
    .local v9, "mji":D
    sub-double v11, v7, v9

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    move v15, v5

    move/from16 v16, v6

    .end local v6    # "j":I
    .local v16, "j":I
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double/2addr v5, v1

    cmpl-double v5, v11, v5

    if-lez v5, :cond_3

    .line 404
    if-nez p3, :cond_2

    .line 407
    return v15

    .line 405
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    move/from16 v6, v16

    .end local v16    # "j":I
    .restart local v6    # "j":I
    invoke-direct {v5, v4, v6, v1, v2}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw v5

    .line 402
    .end local v6    # "j":I
    .restart local v16    # "j":I
    :cond_3
    move/from16 v6, v16

    .line 399
    .end local v7    # "mij":D
    .end local v9    # "mji":D
    .end local v16    # "j":I
    .restart local v6    # "j":I
    add-int/lit8 v6, v6, 0x1

    move v5, v15

    goto :goto_1

    :cond_4
    move v15, v5

    .line 398
    .end local v6    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 412
    .end local v4    # "i":I
    :cond_5
    const/4 v4, 0x1

    return v4
.end method

.method public static serializeRealMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 845
    .local v0, "n":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 846
    .local v1, "m":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 847
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 848
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 849
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 850
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 849
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 848
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p0, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 744
    .local v0, "n":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 745
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 746
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static solveLowerTriangularSystem(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 12
    .param p0, "rm"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 930
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 935
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 939
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 940
    .local v1, "rows":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 941
    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 942
    .local v3, "diag":D
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_2

    .line 945
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v5, v3

    .line 946
    .local v5, "bi":D
    invoke-virtual {p1, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 947
    add-int/lit8 v7, v2, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 948
    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    invoke-interface {p0, v7, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    invoke-virtual {p1, v7, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 947
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 940
    .end local v3    # "diag":D
    .end local v5    # "bi":D
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .restart local v3    # "diag":D
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v5, v6, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 951
    .end local v2    # "i":I
    .end local v3    # "diag":D
    :cond_3
    return-void

    .line 936
    .end local v1    # "rows":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 931
    :cond_5
    :goto_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    if-nez p0, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    :goto_4
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public static solveUpperTriangularSystem(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 13
    .param p0, "rm"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 975
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 980
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 984
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 985
    .local v1, "rows":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 986
    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 987
    .local v4, "diag":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 990
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    div-double/2addr v6, v4

    .line 991
    .local v6, "bi":D
    invoke-virtual {p1, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 992
    add-int/lit8 v8, v2, -0x1

    .local v8, "j":I
    :goto_1
    if-le v8, v3, :cond_1

    .line 993
    invoke-virtual {p1, v8}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v9

    invoke-interface {p0, v8, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double/2addr v11, v6

    sub-double/2addr v9, v11

    invoke-virtual {p1, v8, v9, v10}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 992
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 985
    .end local v4    # "diag":D
    .end local v6    # "bi":D
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 988
    .restart local v4    # "diag":D
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v3, v6, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 996
    .end local v2    # "i":I
    .end local v4    # "diag":D
    :cond_3
    return-void

    .line 981
    .end local v1    # "rows":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 976
    :cond_5
    :goto_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    if-nez p0, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    :goto_4
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
