.class public abstract Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.super Ljava/lang/Object;
.source "AbstractFieldMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrix;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrix<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    .line 53
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    .line 61
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 3
    .param p2, "rowDimension"    # I
    .param p3, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-lez p2, :cond_1

    .line 80
    if-lez p3, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    .line 85
    return-void

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method protected static buildArray(Lorg/apache/commons/math3/Field;I)[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method protected static buildArray(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method protected static extractField([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 120
    .local p0, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method protected static extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 98
    .local p0, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    if-eqz p0, :cond_2

    .line 101
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 107
    aget-object v1, p0, v0

    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    .line 99
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 181
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 182
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 183
    .local v2, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 184
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 185
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public abstract addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method protected checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1120
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1125
    return-void

    .line 1122
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method protected checkColumnIndex(I)V
    .locals 5
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1046
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1050
    return-void

    .line 1047
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COLUMN_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method protected checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1152
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1155
    return-void

    .line 1153
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected checkRowIndex(I)V
    .locals 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1032
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1036
    return-void

    .line 1033
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROW_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method protected checkSubMatrixIndex(IIII)V
    .locals 5
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

    .line 1067
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 1068
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 1069
    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    .line 1074
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 1075
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 1076
    if-lt p4, p3, :cond_0

    .line 1080
    return-void

    .line 1077
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_COLUMN_AFTER_FINAL_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 1070
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

.method protected checkSubMatrixIndex([I[I)V
    .locals 4
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1094
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1098
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    .line 1103
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1104
    .local v3, "row":I
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 1103
    .end local v3    # "row":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1106
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

    .line 1107
    .local v3, "column":I
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 1106
    .end local v3    # "column":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1109
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void

    .line 1100
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 1096
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method protected checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1136
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1141
    return-void

    .line 1138
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public abstract copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end method

.method public copySubMatrix(IIII[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 10
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p5, "destination":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 392
    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p1

    .line 393
    .local v0, "rowsCount":I
    add-int/lit8 v1, p4, 0x1

    sub-int/2addr v1, p3

    .line 394
    .local v1, "columnsCount":I
    array-length v2, p5

    const/4 v3, 0x0

    if-lt v2, v0, :cond_0

    aget-object v2, p5, v3

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 402
    new-instance v5, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {v5, p0, v2, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;-><init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .end local p1    # "startRow":I
    .end local p2    # "endRow":I
    .end local p3    # "startColumn":I
    .end local p4    # "endColumn":I
    .local v6, "startRow":I
    .local v7, "endRow":I
    .local v8, "startColumn":I
    .local v9, "endColumn":I
    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;

    .line 427
    return-void

    .line 394
    .end local v6    # "startRow":I
    .end local v7    # "endRow":I
    .end local v8    # "startColumn":I
    .end local v9    # "endColumn":I
    .restart local p1    # "startRow":I
    .restart local p2    # "endRow":I
    .restart local p3    # "startColumn":I
    .restart local p4    # "endColumn":I
    :cond_0
    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 395
    .end local p1    # "startRow":I
    .end local p2    # "endRow":I
    .end local p3    # "startColumn":I
    .end local p4    # "endColumn":I
    .restart local v6    # "startRow":I
    .restart local v7    # "endRow":I
    .restart local v8    # "startColumn":I
    .restart local v9    # "endColumn":I
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p5

    aget-object p3, p5, v3

    array-length p3, p3

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public copySubMatrix([I[I[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 434
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p3, "destination":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex([I[I)V

    .line 435
    array-length v0, p3

    array-length v1, p1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    aget-object v0, p3, v2

    array-length v0, v0

    array-length v1, p2

    if-lt v0, v1, :cond_2

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 445
    aget-object v1, p3, v0

    .line 446
    .local v1, "destinationI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 447
    aget v3, p1, v0

    aget v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v1    # "destinationI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 437
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v1, p3

    aget-object v2, p3, v2

    array-length v2, v2

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public abstract createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 983
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 984
    return v0

    .line 986
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 987
    return v2

    .line 989
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 990
    .local v1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v3

    .line 991
    .local v3, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v4

    .line 992
    .local v4, "nCols":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v5

    if-ne v5, v4, :cond_6

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_2

    .line 995
    :cond_2
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 996
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 997
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 998
    return v2

    .line 996
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 995
    .end local v6    # "col":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1002
    .end local v5    # "row":I
    :cond_5
    return v0

    .line 993
    :cond_6
    :goto_2
    return v2
.end method

.method public getColumn(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 623
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 624
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 625
    .local v0, "nRows":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 626
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 627
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public abstract getColumnDimension()I
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 524
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 525
    .local v0, "nRows":I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 526
    .local v1, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 527
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 575
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumn(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    .line 331
    .local v0, "data":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 332
    aget-object v2, v0, v1

    .line 333
    .local v2, "dataI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 334
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    .end local v2    # "dataI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public abstract getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getRow(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 596
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 597
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 598
    .local v0, "nCols":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 599
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 600
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public abstract getRowDimension()I
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 491
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 492
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 493
    .local v0, "nCols":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 494
    .local v1, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 495
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 554
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRow(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 345
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 347
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 349
    .local v0, "subMatrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 350
    move v2, p3

    .local v2, "j":I
    :goto_1
    if-gt v2, p4, :cond_0

    .line 351
    sub-int v3, v1, p1

    sub-int v4, v2, p3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getSubMatrix([I[I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 3
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex([I[I)V

    .line 368
    array-length v0, p1

    array-length v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 370
    .local v0, "subMatrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    new-instance v1, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;-><init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[I[I)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 380
    return-object v0
.end method

.method public getTrace()Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 688
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 689
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 690
    .local v1, "nCols":I
    if-ne v0, v1, :cond_1

    .line 693
    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 694
    .local v2, "trace":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 695
    invoke-virtual {p0, v3, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 691
    .end local v2    # "trace":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v2
.end method

.method public hashCode()I
    .locals 8

    .line 1012
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    const v0, 0x4ec02

    .line 1013
    .local v0, "ret":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 1014
    .local v1, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 1015
    .local v2, "nCols":I
    mul-int/lit8 v3, v0, 0x1f

    add-int/2addr v3, v1

    .line 1016
    .end local v0    # "ret":I
    .local v3, "ret":I
    mul-int/lit8 v0, v3, 0x1f

    add-int/2addr v0, v2

    .line 1017
    .end local v3    # "ret":I
    .restart local v0    # "ret":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1018
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 1019
    mul-int/lit8 v5, v0, 0x1f

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0xb

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x11

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    mul-int/2addr v6, v7

    add-int v0, v5, v6

    .line 1018
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1017
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1022
    .end local v3    # "row":I
    :cond_1
    return v0
.end method

.method public isSquare()Z
    .locals 2

    .line 677
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 246
    .local v0, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    .line 247
    .local v1, "nCols":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 248
    .local v2, "nSum":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v3

    .line 249
    .local v3, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 250
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 251
    iget-object v6, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 252
    .local v6, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_0

    .line 253
    invoke-virtual {p0, v4, v7}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-interface {p1, v7, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 252
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 255
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 250
    .end local v6    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 249
    .end local v5    # "col":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v4    # "row":I
    :cond_2
    return-object v3
.end method

.method public abstract multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public operate(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 725
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    move-object v3, p1

    check-cast v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v2

    .line 728
    .local v2, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v3

    .line 729
    .local v3, "nCols":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 733
    iget-object v4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 734
    .local v4, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 735
    iget-object v6, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 736
    .local v6, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 737
    invoke-virtual {p0, v5, v7}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-interface {p1, v7}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 736
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 739
    .end local v7    # "i":I
    :cond_0
    aput-object v6, v4, v5

    .line 734
    .end local v6    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 742
    .end local v5    # "row":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v5, v6, v4, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v5

    .line 730
    .end local v4    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 703
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 704
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 705
    .local v1, "nCols":I
    array-length v2, p1

    if-ne v2, v1, :cond_2

    .line 709
    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 710
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 711
    iget-object v4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 712
    .local v4, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 713
    invoke-virtual {p0, v3, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    aget-object v7, p1, v5

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 712
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 715
    .end local v5    # "i":I
    :cond_0
    aput-object v4, v2, v3

    .line 710
    .end local v4    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    .end local v3    # "row":I
    :cond_1
    return-object v2

    .line 706
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public power(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    if-ltz p1, :cond_7

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 279
    if-nez p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldIdentityMatrix(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copy()Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    return-object v0

    .line 287
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 296
    .local v1, "power":I
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 298
    .local v2, "binaryRepresentation":[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v3, "nonZeroPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 301
    aget-char v5, v2, v4

    const/16 v6, 0x31

    if-ne v5, v6, :cond_2

    .line 302
    array-length v5, v2

    sub-int/2addr v5, v4

    sub-int/2addr v5, v0

    .line 303
    .local v5, "pos":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v5    # "pos":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    .end local v4    # "i":I
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;>;"
    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copy()Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 312
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 313
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 314
    .local v5, "s":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-interface {v5, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v6

    .line 315
    .local v6, "r":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {v0, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 312
    .end local v5    # "s":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    .end local v6    # "r":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copy()Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v4

    .line 320
    .local v4, "result":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 321
    .local v6, "i":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/linear/FieldMatrix;

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/linear/FieldMatrix;->multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v4

    .line 322
    .end local v6    # "i":Ljava/lang/Integer;
    goto :goto_2

    .line 324
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v4

    .line 276
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;>;"
    .end local v1    # "power":I
    .end local v2    # "binaryRepresentation":[C
    .end local v3    # "nonZeroPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "result":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 272
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/FieldMatrix;->multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    return-object v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 771
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    move-object v3, p1

    check-cast v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v2

    .line 774
    .local v2, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v3

    .line 775
    .local v3, "nCols":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 779
    iget-object v4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 780
    .local v4, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 781
    iget-object v6, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 782
    .local v6, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_0

    .line 783
    invoke-virtual {p0, v7, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-interface {p1, v7}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    .line 782
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 785
    .end local v7    # "i":I
    :cond_0
    aput-object v6, v4, v5

    .line 780
    .end local v6    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 788
    .end local v5    # "col":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v5, v6, v4, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v5

    .line 776
    .end local v4    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    invoke-direct {v0, v4, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 749
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 750
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 751
    .local v1, "nCols":I
    array-length v2, p1

    if-ne v2, v0, :cond_2

    .line 755
    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 756
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 757
    iget-object v4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 758
    .local v4, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 759
    invoke-virtual {p0, v5, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    aget-object v7, p1, v5

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 758
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 761
    .end local v5    # "i":I
    :cond_0
    aput-object v4, v2, v3

    .line 756
    .end local v4    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    .end local v3    # "col":I
    :cond_1
    return-object v2

    .line 752
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 214
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 215
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 216
    .local v2, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 217
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 218
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 228
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 229
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 230
    .local v2, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 231
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 232
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p2, "array":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 638
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 639
    .local v0, "nRows":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 642
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 643
    aget-object v2, p2, v1

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 640
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 5
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 537
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 538
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 539
    .local v0, "nRows":I
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 546
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 541
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 4
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 582
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p2, "vector":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 584
    .local v0, "nRows":I
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 585
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public abstract setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 610
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p2, "array":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 611
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 612
    .local v0, "nCols":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 616
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 613
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 507
    .local v0, "nCols":I
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 509
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 4
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p2, "vector":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 561
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 562
    .local v0, "nCols":I
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 567
    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 563
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 7
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 458
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "subMatrix":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    if-eqz p1, :cond_6

    .line 461
    array-length v0, p1

    .line 462
    .local v0, "nRows":I
    if-eqz v0, :cond_5

    .line 466
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    .line 467
    .local v1, "nCols":I
    if-eqz v1, :cond_4

    .line 471
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 472
    aget-object v3, p1, v2

    array-length v3, v3

    if-ne v3, v1, :cond_0

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v2

    array-length v4, v4

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 477
    .end local v2    # "r":I
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 478
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 479
    add-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 480
    add-int v2, v1, p3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 482
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 483
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 484
    add-int v4, p2, v2

    add-int v5, p3, v3

    aget-object v6, p1, v2

    aget-object v6, v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 482
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 468
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v2

    .line 463
    .end local v1    # "nCols":I
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 459
    .end local v0    # "nRows":I
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 199
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 200
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 201
    .local v2, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 202
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 203
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 948
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 949
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 950
    .local v1, "nCols":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 951
    .local v2, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, "fullClassName":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, "shortClassName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 955
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-string v7, "}"

    if-ge v5, v0, :cond_3

    .line 956
    const-string v8, ","

    if-lez v5, :cond_0

    .line 957
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 959
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 960
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_2

    .line 961
    if-lez v9, :cond_1

    .line 962
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    :cond_1
    invoke-virtual {p0, v5, v9}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 960
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 966
    .end local v9    # "j":I
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 955
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 969
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 970
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 662
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 663
    .local v1, "nCols":I
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 664
    .local v2, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    new-instance v3, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$3;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {v3, p0, v4, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$3;-><init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 672
    return-object v2
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 856
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 857
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 858
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 859
    const/4 p1, 0x0

    .local p1, "column":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 860
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 861
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    .line 862
    .local v4, "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v0, v3, p1, v4}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    .line 863
    .local v5, "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, v3, p1, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 860
    .end local v4    # "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 859
    .end local v3    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 866
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 887
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 888
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 890
    move p1, v5

    .local p1, "column":I
    :goto_0
    if-gt p1, v6, :cond_1

    .line 891
    move p2, v3

    .local p2, "row":I
    :goto_1
    if-gt p2, v4, :cond_0

    .line 892
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p3

    .line 893
    .local p3, "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v0, p2, p1, p3}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p4

    .line 894
    .local p4, "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p2, p1, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 891
    .end local p3    # "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local p4    # "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 890
    .end local p2    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 897
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 871
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 872
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 873
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 874
    const/4 p1, 0x0

    .local p1, "column":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 875
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 876
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v0, v3, p1, v4}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 875
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 874
    .end local v3    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 879
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 905
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 906
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 908
    move p1, v5

    .local p1, "column":I
    :goto_0
    if-gt p1, v6, :cond_1

    .line 909
    move p2, v3

    .local p2, "row":I
    :goto_1
    if-gt p2, v4, :cond_0

    .line 910
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p3

    invoke-interface {v0, p2, p1, p3}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 909
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 908
    .end local p2    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 913
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 918
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 931
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 923
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 939
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 794
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 795
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 796
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 797
    const/4 p1, 0x0

    .local p1, "row":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 798
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 799
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    .line 800
    .local v4, "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v0, p1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    .line 801
    .local v5, "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1, v3, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 798
    .end local v4    # "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 797
    .end local v3    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 804
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 825
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 826
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 828
    move p1, v3

    .local p1, "row":I
    :goto_0
    if-gt p1, v4, :cond_1

    .line 829
    move p2, v5

    .local p2, "column":I
    :goto_1
    if-gt p2, v6, :cond_0

    .line 830
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p3

    .line 831
    .local p3, "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p4

    .line 832
    .local p4, "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 829
    .end local p3    # "oldValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local p4    # "newValue":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 828
    .end local p2    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 835
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 809
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 810
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 811
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 812
    const/4 p1, 0x0

    .local p1, "row":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 813
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 814
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v0, p1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 813
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 812
    .end local v3    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 817
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 843
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 844
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 846
    move p1, v3

    .local p1, "row":I
    :goto_0
    if-gt p1, v4, :cond_1

    .line 847
    move p2, v5

    .local p2, "column":I
    :goto_1
    if-gt p2, v6, :cond_0

    .line 848
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 847
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 846
    .end local p2    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 851
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method
