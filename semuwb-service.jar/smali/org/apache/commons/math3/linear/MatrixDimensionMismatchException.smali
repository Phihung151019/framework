.class public Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.source "MatrixDimensionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# direct methods
.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "wrongRowDim"    # I
    .param p2, "wrongColDim"    # I
    .param p3, "expectedRowDim"    # I
    .param p4, "expectedColDim"    # I

    .line 44
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_2x2:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getExpectedColumnDimension()I
    .locals 1

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getExpectedDimension(I)I

    move-result v0

    return v0
.end method

.method public getExpectedRowDimension()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getExpectedDimension(I)I

    move-result v0

    return v0
.end method

.method public getWrongColumnDimension()I
    .locals 1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getWrongDimension(I)I

    move-result v0

    return v0
.end method

.method public getWrongRowDimension()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getWrongDimension(I)I

    move-result v0

    return v0
.end method
