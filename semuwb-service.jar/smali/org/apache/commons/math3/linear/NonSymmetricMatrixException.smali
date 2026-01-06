.class public Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NonSymmetricMatrixException.java"


# static fields
.field private static final serialVersionUID:J = -0x68570fe4b18e5dbaL


# instance fields
.field private final column:I

.field private final row:I

.field private final threshold:D


# direct methods
.method public constructor <init>(IID)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "threshold"    # D

    .line 47
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_SYMMETRIC_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 48
    iput p1, p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;->row:I

    .line 49
    iput p2, p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;->column:I

    .line 50
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;->threshold:D

    .line 51
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;->row:I

    return v0
.end method

.method public getThreshold()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;->threshold:D

    return-wide v0
.end method
