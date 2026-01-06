.class public Lorg/apache/commons/math3/ode/EquationsMapper;
.super Ljava/lang/Object;
.source "EquationsMapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x132de4dL


# instance fields
.field private final dimension:I

.field private final firstIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "firstIndex"    # I
    .param p2, "dimension"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    .line 50
    iput p2, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    .line 51
    return-void
.end method


# virtual methods
.method public extractEquationData([D[D)V
    .locals 3
    .param p1, "complete"    # [D
    .param p2, "equationData"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 76
    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    if-ne v0, v1, :cond_0

    .line 79
    iget v0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    iget v2, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getDimension()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    return v0
.end method

.method public getFirstIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    return v0
.end method

.method public insertEquationData([D[D)V
    .locals 3
    .param p1, "equationData"    # [D
    .param p2, "complete"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 91
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    if-ne v0, v1, :cond_0

    .line 94
    iget v0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    iget v1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
