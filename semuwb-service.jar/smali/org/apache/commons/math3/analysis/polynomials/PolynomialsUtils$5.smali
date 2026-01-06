.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$v:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 240
    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 11
    .param p1, "k"    # I

    .line 243
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 244
    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr v1, v2

    .line 245
    .local v1, "kvw":I
    add-int v2, v1, p1

    .line 246
    .local v2, "twoKvw":I
    add-int/lit8 v3, v2, -0x1

    .line 247
    .local v3, "twoKvwM1":I
    add-int/lit8 v4, v2, -0x2

    .line 248
    .local v4, "twoKvwM2":I
    mul-int/lit8 v5, p1, 0x2

    mul-int/2addr v5, v1

    mul-int/2addr v5, v4

    .line 250
    .local v5, "den":I
    const/4 v6, 0x3

    new-array v6, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    iget v9, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    mul-int/2addr v8, v9

    iget v9, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    iget v10, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    mul-int/2addr v8, v3

    invoke-direct {v7, v8, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int v8, v3, v2

    mul-int/2addr v8, v4

    invoke-direct {v7, v8, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v7, v6, v0

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v8, p1

    sub-int/2addr v8, v0

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    iget v10, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr v10, p1

    sub-int/2addr v10, v0

    mul-int/2addr v8, v10

    mul-int/2addr v8, v2

    invoke-direct {v7, v8, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v7, v6, v9

    return-object v6
.end method
