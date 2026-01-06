.class Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JacobiKey"
.end annotation


# instance fields
.field private final v:I

.field private final w:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "v"    # I
    .param p2, "w"    # I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    .line 275
    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    .line 276
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 293
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    if-nez v1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    .line 298
    .local v1, "otherK":Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    iget v3, v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    iget v3, v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 294
    .end local v1    # "otherK":Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 283
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    xor-int/2addr v0, v1

    return v0
.end method
