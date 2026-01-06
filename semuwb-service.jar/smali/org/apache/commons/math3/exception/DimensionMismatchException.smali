.class public Lorg/apache/commons/math3/exception/DimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "DimensionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# instance fields
.field private final dimension:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "wrong"    # I
    .param p2, "expected"    # I

    .line 55
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V
    .locals 2
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "wrong"    # I
    .param p3, "expected"    # I

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 44
    iput p3, p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;->dimension:I

    .line 45
    return-void
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;->dimension:I

    return v0
.end method
