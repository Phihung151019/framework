.class public Lorg/apache/commons/math3/complex/RootsOfUnity;
.super Ljava/lang/Object;
.source "RootsOfUnity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330289L


# instance fields
.field private isCounterClockWise:Z

.field private omegaCount:I

.field private omegaImaginaryClockwise:[D

.field private omegaImaginaryCounterClockwise:[D

.field private omegaReal:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    .line 72
    iput-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    .line 73
    iput-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized computeRoots(I)V
    .locals 13
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 123
    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    .line 126
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    .line 128
    .local v1, "absN":I
    iget v2, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 129
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 134
    .local v2, "t":D
    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    .line 135
    .local v4, "cosT":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    .line 136
    .local v6, "sinT":D
    new-array v8, v1, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    .line 137
    new-array v8, v1, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    .line 138
    new-array v8, v1, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    .line 139
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v0

    .line 140
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v0

    .line 141
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    aput-wide v9, v8, v0

    .line 142
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 143
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    add-int/lit8 v10, v0, -0x1

    aget-wide v9, v9, v10

    mul-double/2addr v9, v4

    iget-object v11, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    add-int/lit8 v12, v0, -0x1

    aget-wide v11, v11, v12

    mul-double/2addr v11, v6

    sub-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 145
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    add-int/lit8 v10, v0, -0x1

    aget-wide v9, v9, v10

    mul-double/2addr v9, v6

    iget-object v11, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    add-int/lit8 v12, v0, -0x1

    aget-wide v11, v11, v12

    mul-double/2addr v11, v4

    add-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 147
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    aget-wide v9, v9, v0

    neg-double v9, v9

    aput-wide v9, v8, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "i":I
    .end local p0    # "this":Lorg/apache/commons/math3/complex/RootsOfUnity;
    :cond_2
    iput v1, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 119
    .end local v1    # "absN":I
    .end local v2    # "t":D
    .end local v4    # "cosT":D
    .end local v6    # "sinT":D
    :cond_3
    :try_start_2
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_0TH_ROOT_OF_UNITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 117
    .end local p1    # "n":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getImaginary(I)D
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 195
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-ge p1, v0, :cond_1

    .line 203
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    aget-wide v0, v0, p1

    goto :goto_0

    .end local p0    # "this":Lorg/apache/commons/math3/complex/RootsOfUnity;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    aget-wide v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    .line 196
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_ROOT_OF_UNITY_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 192
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 190
    .end local p1    # "k":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getNumberOfRoots()I
    .locals 1

    monitor-enter p0

    .line 216
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 216
    .end local p0    # "this":Lorg/apache/commons/math3/complex/RootsOfUnity;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getReal(I)D
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-ge p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    aget-wide v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 169
    .end local p0    # "this":Lorg/apache/commons/math3/complex/RootsOfUnity;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_ROOT_OF_UNITY_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 165
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 163
    .end local p1    # "k":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isCounterClockWise()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-eqz v0, :cond_0

    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 91
    .end local p0    # "this":Lorg/apache/commons/math3/complex/RootsOfUnity;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
