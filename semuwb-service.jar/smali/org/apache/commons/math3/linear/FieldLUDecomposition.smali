.class public Lorg/apache/commons/math3/linear/FieldLUDecomposition;
.super Ljava/lang/Object;
.source "FieldLUDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private even:Z

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private lu:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private pivot:[I

.field private singular:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    .local p1, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v0

    .line 91
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    .line 92
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    .line 93
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 95
    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 96
    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 99
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aput v1, v2, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "row":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    .line 106
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    if-ge v2, v0, :cond_a

    .line 108
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 111
    .local v3, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 112
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v4

    .line 113
    .local v5, "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v3, v5, v2

    .line 114
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v4, :cond_1

    .line 115
    aget-object v7, v5, v6

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v6

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 117
    .end local v6    # "i":I
    :cond_1
    aput-object v3, v5, v2

    .line 111
    .end local v5    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 121
    .end local v4    # "row":I
    :cond_2
    move v4, v2

    .line 122
    .local v4, "nonZero":I
    move v5, v2

    .local v5, "row":I
    :goto_4
    if-ge v5, v0, :cond_5

    .line 123
    iget-object v6, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v5

    .line 124
    .local v6, "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v3, v6, v2

    .line 125
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v2, :cond_3

    .line 126
    aget-object v8, v6, v7

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v9, v7

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 128
    .end local v7    # "i":I
    :cond_3
    aput-object v3, v6, v2

    .line 130
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v4

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v8}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 122
    .end local v6    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 137
    .end local v5    # "row":I
    :cond_5
    if-lt v4, v0, :cond_6

    .line 138
    iput-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    .line 139
    return-void

    .line 143
    :cond_6
    if-eq v4, v2, :cond_8

    .line 144
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    .line 145
    .local v5, "tmp":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v0, :cond_7

    .line 146
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v4

    aget-object v5, v7, v6

    .line 147
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v4

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v2

    aget-object v8, v8, v6

    aput-object v8, v7, v6

    .line 148
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v2

    aput-object v5, v7, v6

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 150
    .end local v6    # "i":I
    :cond_7
    iget-object v6, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v6, v6, v4

    .line 151
    .local v6, "temp":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v8, v8, v2

    aput v8, v7, v4

    .line 152
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aput v6, v7, v2

    .line 153
    iget-boolean v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    xor-int/2addr v7, v1

    iput-boolean v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    .line 157
    .end local v5    # "tmp":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v6    # "temp":I
    :cond_8
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    .line 158
    .local v5, "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v6, v2, 0x1

    .local v6, "row":I
    :goto_7
    if-ge v6, v0, :cond_9

    .line 159
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v6

    .line 160
    .local v7, "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v8, v7, v2

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v7, v2

    .line 158
    .end local v7    # "luRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 106
    .end local v3    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v4    # "nonZero":I
    .end local v5    # "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v6    # "row":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 164
    .end local v2    # "col":I
    :cond_a
    return-void

    .line 86
    .end local v0    # "m":I
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getDeterminant()Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 243
    .local v0, "m":I
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 244
    .local v1, "determinant":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 245
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getL()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 174
    .local v0, "m":I
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 176
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    .line 177
    .local v2, "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 178
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v5, v2, v3

    invoke-interface {v4, v1, v3, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "j":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v3, v1, v1, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 175
    .end local v2    # "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 217
    .local v0, "m":I
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v0
.end method

.method public getPivot()[I
    .locals 1

    .line 231
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<",
            "TT;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZLorg/apache/commons/math3/linear/FieldLUDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 194
    .local v0, "m":I
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 196
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    .line 197
    .local v2, "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v3, v1

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 198
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v5, v2, v3

    invoke-interface {v4, v1, v3, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    .end local v2    # "luI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v0
.end method
