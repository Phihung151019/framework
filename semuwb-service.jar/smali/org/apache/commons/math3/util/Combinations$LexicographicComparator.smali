.class Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LexicographicComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1332c5aL


# instance fields
.field private final k:I

.field private final n:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "k"    # I

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    .line 341
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    .line 342
    return-void
.end method

.method private lexNorm([I)J
    .locals 8
    .param p1, "c"    # [I

    .line 392
    const-wide/16 v0, 0x0

    .line 393
    .local v0, "ret":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 394
    aget v3, p1, v2

    .line 395
    .local v3, "digit":I
    if-ltz v3, :cond_0

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    if-ge v3, v4, :cond_0

    .line 400
    aget v4, p1, v2

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    invoke-static {v5, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 393
    .end local v3    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .restart local v3    # "digit":I
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 402
    .end local v2    # "i":I
    .end local v3    # "digit":I
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 326
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 7
    .param p1, "c1"    # [I
    .param p2, "c2"    # [I

    .line 354
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    if-ne v0, v1, :cond_3

    .line 357
    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    if-ne v0, v1, :cond_2

    .line 362
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    .line 363
    .local v0, "c1s":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 364
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v1

    .line 365
    .local v1, "c2s":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 367
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->lexNorm([I)J

    move-result-wide v2

    .line 368
    .local v2, "v1":J
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->lexNorm([I)J

    move-result-wide v4

    .line 370
    .local v4, "v2":J
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 371
    const/4 v6, -0x1

    return v6

    .line 372
    :cond_0
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 373
    const/4 v6, 0x1

    return v6

    .line 375
    :cond_1
    const/4 v6, 0x0

    return v6

    .line 358
    .end local v0    # "c1s":[I
    .end local v1    # "c2s":[I
    .end local v2    # "v1":J
    .end local v4    # "v2":J
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 355
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
