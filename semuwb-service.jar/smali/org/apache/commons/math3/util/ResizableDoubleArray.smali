.class public Lorg/apache/commons/math3/util/ResizableDoubleArray;
.super Ljava/lang/Object;
.source "ResizableDoubleArray.java"

# interfaces
.implements Lorg/apache/commons/math3/util/DoubleArray;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    }
.end annotation


# static fields
.field public static final ADDITIVE_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_CONTRACTION_DELTA:D = 0.5

.field private static final DEFAULT_EXPANSION_FACTOR:D = 2.0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field public static final MULTIPLICATIVE_MODE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x305f1707055087bbL


# instance fields
.field private contractionCriterion:D

.field private expansionFactor:D

.field private expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

.field private internalArray:[D

.field private numElements:I

.field private startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(I)V

    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 185
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(ID)V

    .line 186
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 270
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v6, p2, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    .end local p1    # "initialCapacity":I
    .end local p2    # "expansionFactor":D
    .local v3, "initialCapacity":I
    .local v4, "expansionFactor":D
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDD)V

    .line 273
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # D
    .param p4, "contractionCriterion"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 330
    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "initialCapacity":I
    .end local p2    # "expansionFactor":D
    .end local p4    # "contractionCriterion":D
    .local v1, "initialCapacity":I
    .local v2, "expansionFactor":D
    .local v4, "contractionCriterion":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 335
    return-void
.end method

.method public varargs constructor <init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # D
    .param p4, "contractionCriterion"    # D
    .param p6, "expansionMode"    # Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    .param p7, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 122
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 128
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 146
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 401
    if-lez p1, :cond_1

    .line 405
    invoke-virtual {p0, p4, p5, p2, p3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 407
    iput-wide p2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 408
    iput-wide p4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 409
    iput-object p6, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 410
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 411
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 412
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 414
    if-eqz p7, :cond_0

    array-length v0, p7

    if-lez v0, :cond_0

    .line 415
    invoke-virtual {p0, p7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElements([D)V

    .line 417
    :cond_0
    return-void

    .line 402
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_CAPACITY_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    float-to-double v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(ID)V

    .line 243
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 6
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # F
    .param p3, "contractionCriteria"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    float-to-double v2, p2

    float-to-double v4, p3

    move-object v0, p0

    move v1, p1

    .end local p1    # "initialCapacity":I
    .local v1, "initialCapacity":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDD)V

    .line 304
    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # F
    .param p3, "contractionCriteria"    # F
    .param p4, "expansionMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    float-to-double v2, p2

    float-to-double v4, p3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "initialCapacity":I
    .local v1, "initialCapacity":I
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 373
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(I)V

    .line 374
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    .locals 2
    .param p1, "original"    # Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 122
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 128
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 146
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 431
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 432
    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V

    .line 433
    return-void
.end method

.method public constructor <init>([D)V
    .locals 8
    .param p1, "initialArray"    # [D

    .line 207
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/16 v1, 0x10

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v7, p1

    .end local p1    # "initialArray":[D
    .local v7, "initialArray":[D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 212
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    .locals 4
    .param p0, "source"    # Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .param p1, "dest"    # Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1127
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1128
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1129
    monitor-enter p0

    .line 1130
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1131
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    iput-wide v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 1132
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    iput-wide v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 1133
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 1134
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 1135
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v1, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v2, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iput v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 1138
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iput v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 1139
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1141
    return-void

    .line 1139
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "source":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p1    # "dest":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :try_start_4
    throw v0

    .line 1140
    .restart local p0    # "source":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .restart local p1    # "dest":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private declared-synchronized discardExtremeElements(IZ)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "front"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 656
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-gt p1, v0, :cond_3

    .line 660
    if-ltz p1, :cond_2

    .line 666
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 667
    if-eqz p2, :cond_0

    .line 668
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 671
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->shouldContract()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_1
    monitor-exit p0

    return-void

    .line 661
    :cond_2
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_DISCARD_NEGATIVE_NUMBER_OF_ELEMENTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 657
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_ELEMENTS_TO_DISCARD_FROM_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 655
    .end local p1    # "i":I
    .end local p2    # "front":Z
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized expandTo(I)V
    .locals 4
    .param p1, "size"    # I

    monitor-enter p0

    .line 710
    :try_start_0
    new-array v0, p1, [D

    .line 712
    .local v0, "tempArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 709
    .end local v0    # "tempArray":[D
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized shouldContract()Z
    .locals 6

    monitor-enter p0

    .line 1085
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v1, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1086
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    monitor-exit p0

    return v2

    .line 1088
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit p0

    return v2

    .line 1084
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addElement(D)V
    .locals 4
    .param p1, "value"    # D

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 442
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expand()V

    .line 444
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/2addr v1, v2

    aput-wide p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 440
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addElementRolling(D)D
    .locals 5
    .param p1, "value"    # D

    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    aget-wide v0, v0, v1

    .line 481
    .local v0, "discarded":D
    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expand()V

    .line 485
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 488
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    aput-wide p1, v2, v3

    .line 491
    invoke-direct {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->shouldContract()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_1
    monitor-exit p0

    return-wide v0

    .line 478
    .end local v0    # "discarded":D
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addElements([D)V
    .locals 5
    .param p1, "values"    # [D

    monitor-enter p0

    .line 454
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    .line 455
    .local v0, "tempArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 458
    iput v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 459
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 453
    .end local v0    # "tempArray":[D
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p1    # "values":[D
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected checkContractExpand(DD)V
    .locals 5
    .param p1, "contraction"    # D
    .param p3, "expansion"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 556
    cmpg-double v0, p1, p3

    const/4 v1, 0x1

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 556
    if-ltz v0, :cond_2

    .line 563
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v0

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 570
    cmpg-double v0, p3, v0

    if-lez v0, :cond_0

    .line 576
    return-void

    .line 571
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 572
    .local v0, "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPANSION_FACTOR_SMALLER_THAN_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 574
    throw v0

    .line 564
    .end local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 565
    .restart local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTRACTION_CRITERIA_SMALLER_THAN_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 567
    throw v0

    .line 557
    .end local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 558
    .restart local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTRACTION_CRITERIA_SMALLER_THAN_EXPANSION_FACTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 560
    throw v0
.end method

.method protected checkContractExpand(FF)V
    .locals 4
    .param p1, "contraction"    # F
    .param p2, "expansion"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 539
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 582
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 583
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 581
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public compute(Lorg/apache/commons/math3/util/MathArrays$Function;)D
    .locals 5
    .param p1, "f"    # Lorg/apache/commons/math3/util/MathArrays$Function;

    .line 944
    monitor-enter p0

    .line 945
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 946
    .local v0, "array":[D
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 947
    .local v1, "start":I
    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 948
    .local v2, "num":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-interface {p1, v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays$Function;->evaluate([DII)D

    move-result-wide v3

    return-wide v3

    .line 948
    .end local v0    # "array":[D
    .end local v1    # "start":I
    .end local v2    # "num":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contract()V
    .locals 5

    monitor-enter p0

    .line 592
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    .line 595
    .local v0, "tempArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 599
    iput v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    .line 591
    .end local v0    # "tempArray":[D
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .locals 1

    monitor-enter p0

    .line 1152
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    .line 1153
    .local v0, "result":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    monitor-exit p0

    return-object v0

    .line 1151
    .end local v0    # "result":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized discardFrontElements(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 615
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardExtremeElements(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 614
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p1    # "i":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized discardMostRecentElements(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 631
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardExtremeElements(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 630
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p1    # "i":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 1168
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1169
    return v0

    .line 1171
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1172
    return v2

    .line 1174
    :cond_1
    monitor-enter p0

    .line 1175
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1176
    const/4 v1, 0x1

    .line 1177
    .local v1, "result":Z
    :try_start_1
    move-object v3, p1

    check-cast v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 1178
    .local v3, "other":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    if-eqz v1, :cond_2

    iget-wide v4, v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    iget-wide v6, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 1179
    .end local v1    # "result":Z
    .local v4, "result":Z
    :goto_0
    if-eqz v4, :cond_3

    iget-wide v5, v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    iget-wide v7, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    cmpl-double v1, v5, v7

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1180
    .end local v4    # "result":Z
    .restart local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iget-object v5, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v4, v5, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v2

    .line 1181
    .end local v1    # "result":Z
    .restart local v4    # "result":Z
    :goto_2
    if-eqz v4, :cond_5

    iget v1, v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iget v5, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-ne v1, v5, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    .line 1182
    .end local v4    # "result":Z
    .restart local v1    # "result":Z
    :goto_3
    if-eqz v1, :cond_6

    iget v4, v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v5, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    if-ne v4, v5, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    .line 1183
    .end local v1    # "result":Z
    .local v0, "result":Z
    :goto_4
    if-nez v0, :cond_7

    .line 1184
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    .line 1186
    :cond_7
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v2, v3, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    .line 1188
    .end local v0    # "result":Z
    .end local v3    # "other":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local p1    # "object":Ljava/lang/Object;
    :try_start_6
    throw v0

    .line 1189
    .restart local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .restart local p1    # "object":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected declared-synchronized expand()V
    .locals 5

    monitor-enter p0

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "newSize":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v2, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v1, v2, :cond_0

    .line 693
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    int-to-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    goto :goto_0

    .line 695
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    int-to-long v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 697
    :goto_0
    new-array v1, v0, [D

    .line 700
    .local v1, "tempArray":[D
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    iput-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    monitor-exit p0

    return-void

    .line 690
    .end local v0    # "newSize":I
    .end local v1    # "tempArray":[D
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getArrayRef()[D
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .line 847
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    return v0
.end method

.method public getContractionCriteria()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 732
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getContractionCriterion()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getContractionCriterion()D
    .locals 2

    .line 749
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    return-wide v0
.end method

.method public declared-synchronized getElement(I)D
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 761
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-ge p1, v0, :cond_1

    .line 763
    if-ltz p1, :cond_0

    .line 764
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 766
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 762
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 760
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getElements()[D
    .locals 5

    monitor-enter p0

    .line 778
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    new-array v0, v0, [D

    .line 779
    .local v0, "elementArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return-object v0

    .line 777
    .end local v0    # "elementArray":[D
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getExpansionFactor()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    double-to-float v0, v0

    return v0
.end method

.method public getExpansionMode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 811
    monitor-enter p0

    .line 812
    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$1;->$SwitchMap$org$apache$commons$math3$util$ResizableDoubleArray$ExpansionMode:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 818
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    goto :goto_0

    .line 816
    :pswitch_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 814
    :pswitch_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 818
    :goto_0
    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    throw v0

    .line 820
    .restart local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized getInternalLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 834
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getInternalValues()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 875
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 875
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getNumElements()I
    .locals 1

    monitor-enter p0

    .line 857
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 857
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getStartIndex()I
    .locals 1

    .line 913
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    return v0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    monitor-enter p0

    .line 1200
    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [I

    .line 1201
    .local v0, "hashData":[I
    iget-wide v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1202
    iget-wide v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1203
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1204
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1205
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 1206
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 1207
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1199
    .end local v0    # "hashData":[I
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setContractionCriteria(F)V
    .locals 2
    .param p1, "contractionCriteria"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getExpansionFactor()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(FF)V

    .line 928
    monitor-enter p0

    .line 929
    float-to-double v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 930
    monitor-exit p0

    .line 931
    return-void

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setElement(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    monitor-enter p0

    .line 964
    if-ltz p1, :cond_2

    .line 967
    add-int/lit8 v0, p1, 0x1

    :try_start_0
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-le v0, v1, :cond_0

    .line 968
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 970
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 971
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expandTo(I)V

    .line 973
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit p0

    return-void

    .line 963
    .end local p1    # "index":I
    .end local p2    # "value":D
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 965
    .restart local p1    # "index":I
    .restart local p2    # "value":D
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 963
    .end local p1    # "index":I
    .end local p2    # "value":D
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setExpansionFactor(F)V
    .locals 4
    .param p1, "expansionFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getContractionCriterion()D

    move-result-wide v0

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 992
    monitor-enter p0

    .line 993
    float-to-double v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 994
    monitor-exit p0

    .line 995
    return-void

    .line 994
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExpansionMode(I)V
    .locals 7
    .param p1, "expansionMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNSUPPORTED_EXPANSION_MODE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "MULTIPLICATIVE_MODE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "ADDITIVE_MODE"

    filled-new-array {v3, v4, v5, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 1014
    :cond_1
    :goto_0
    monitor-enter p0

    .line 1015
    if-nez p1, :cond_2

    .line 1016
    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V

    goto :goto_1

    .line 1020
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1017
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1018
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V

    .line 1020
    :cond_3
    :goto_1
    monitor-exit p0

    .line 1021
    return-void

    .line 1020
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V
    .locals 1
    .param p1, "expansionMode"    # Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1031
    monitor-enter p0

    .line 1032
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 1033
    monitor-exit p0

    .line 1034
    return-void

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setInitialCapacity(I)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1048
    return-void
.end method

.method public declared-synchronized setNumElements(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 1061
    if-ltz p1, :cond_1

    .line 1069
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v0, p1

    .line 1070
    .local v0, "newSize":I
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 1071
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expandTo(I)V

    .line 1075
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    monitor-exit p0

    return-void

    .line 1060
    .end local v0    # "newSize":I
    .end local p1    # "i":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1062
    .restart local p1    # "i":I
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 1060
    .end local p1    # "i":I
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized start()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1104
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1104
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized substituteMostRecentElement(D)D
    .locals 4
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 509
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 514
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 515
    .local v0, "substIndex":I
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    aget-wide v1, v1, v0

    .line 517
    .local v1, "discarded":D
    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    aput-wide p1, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-wide v1

    .line 510
    .end local v0    # "substIndex":I
    .end local v1    # "discarded":D
    .end local p0    # "this":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_SUBSTITUTE_ELEMENT_FROM_EMPTY_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 508
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
