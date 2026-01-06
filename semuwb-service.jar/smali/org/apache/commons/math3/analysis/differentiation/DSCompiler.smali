.class public Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
.super Ljava/lang/Object;
.source "DSCompiler.java"


# static fields
.field private static compilers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[[",
            "Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final compIndirection:[[[I

.field private final derivativesIndirection:[[I

.field private final lowerIndirection:[I

.field private final multIndirection:[[[I

.field private final order:I

.field private final parameters:I

.field private final sizes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 7
    .param p1, "parameters"    # I
    .param p2, "order"    # I
    .param p3, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p4, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    .line 164
    iput p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    .line 165
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    .line 166
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    .line 169
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    invoke-static {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    .line 175
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "parameters":I
    .end local p2    # "order":I
    .end local p3    # "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .end local p4    # "derivativeCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .local v1, "parameters":I
    .local v2, "order":I
    .local v3, "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .local v4, "derivativeCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    .line 180
    return-void
.end method

.method private static compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I
    .locals 23
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p4, "sizes"    # [[I
    .param p5, "derivativesIndirection"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 415
    move/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    const/4 v8, 0x0

    if-eqz v1, :cond_e

    if-nez v4, :cond_0

    const/16 v16, 0x1

    goto/16 :goto_a

    .line 419
    :cond_0
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v10, v0

    .line 420
    .local v10, "vSize":I
    iget-object v0, v7, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v11, v0

    .line 421
    .local v11, "dSize":I
    add-int v0, v10, v11

    new-array v12, v0, [[[I

    .line 424
    .local v12, "compIndirection":[[[I
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    invoke-static {v0, v8, v12, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_d

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 432
    .local v14, "row":Ljava/util/List;, "Ljava/util/List<[I>;"
    iget-object v0, v7, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    aget-object v15, v0, v13

    .local v15, "arr$":[[I
    array-length v0, v15

    .local v0, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, v15, v2

    .line 437
    .local v3, "term":[I
    const/16 v16, 0x1

    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    .line 438
    .local v9, "derivedTermF":[I
    aget v17, v3, v8

    aput v17, v9, v8

    .line 439
    aget v17, v3, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v9, v16

    .line 440
    move/from16 v17, v8

    new-array v8, v1, [I

    .line 441
    .local v8, "orders":[I
    add-int/lit8 v18, v1, -0x1

    aput v16, v8, v18

    .line 442
    move/from16 v18, v0

    .end local v0    # "len$":I
    .local v18, "len$":I
    array-length v0, v3

    invoke-static {v1, v4, v5, v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v19

    aput v19, v9, v0

    .line 443
    const/4 v0, 0x2

    .local v0, "j":I
    :goto_2
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 446
    move v1, v0

    .end local v0    # "j":I
    .local v1, "j":I
    aget v0, v3, v1

    move/from16 v19, v2

    .end local v2    # "i$":I
    .local v19, "i$":I
    iget-object v2, v7, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move-object/from16 v20, v3

    .end local v3    # "term":[I
    .local v20, "term":[I
    move/from16 v3, p0

    move-object/from16 v6, v20

    move/from16 v20, v1

    move/from16 v1, p0

    .end local v1    # "j":I
    .local v6, "term":[I
    .local v20, "j":I
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v0

    aput v0, v9, v20

    .line 443
    add-int/lit8 v0, v20, 0x1

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v3, v6

    move/from16 v2, v19

    move-object/from16 v6, p2

    .end local v20    # "j":I
    .restart local v0    # "j":I
    goto :goto_2

    .end local v6    # "term":[I
    .end local v19    # "i$":I
    .restart local v2    # "i$":I
    .restart local v3    # "term":[I
    :cond_1
    move/from16 v20, v0

    move/from16 v19, v2

    move-object v6, v3

    .line 450
    .end local v0    # "j":I
    .end local v2    # "i$":I
    .end local v3    # "term":[I
    .restart local v6    # "term":[I
    .restart local v19    # "i$":I
    array-length v0, v9

    const/4 v1, 0x2

    invoke-static {v9, v1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 451
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    const/4 v0, 0x2

    .local v0, "l":I
    :goto_3
    array-length v2, v6

    if-ge v0, v2, :cond_4

    .line 455
    array-length v2, v6

    new-array v2, v2, [I

    .line 456
    .local v2, "derivedTermG":[I
    aget v3, v6, v17

    aput v3, v2, v17

    .line 457
    aget v3, v6, v16

    aput v3, v2, v16

    .line 458
    const/4 v3, 0x2

    .local v3, "j":I
    :goto_4
    array-length v4, v6

    if-ge v3, v4, :cond_3

    .line 461
    move v4, v0

    .end local v0    # "l":I
    .local v4, "l":I
    aget v0, v6, v3

    move-object v5, v2

    .end local v2    # "derivedTermG":[I
    .local v5, "derivedTermG":[I
    iget-object v2, v7, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move/from16 v20, v3

    .end local v3    # "j":I
    .restart local v20    # "j":I
    move/from16 v3, p0

    move/from16 v7, v20

    move-object/from16 v20, v9

    move v9, v7

    move-object v7, v5

    move-object/from16 v21, v6

    move/from16 v22, v10

    move-object/from16 v5, p4

    move v10, v1

    move v6, v4

    move/from16 v1, p0

    move/from16 v4, p1

    .end local v4    # "l":I
    .end local v5    # "derivedTermG":[I
    .end local v10    # "vSize":I
    .local v6, "l":I
    .local v7, "derivedTermG":[I
    .local v9, "j":I
    .local v20, "derivedTermF":[I
    .local v21, "term":[I
    .local v22, "vSize":I
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v0

    aput v0, v7, v9

    .line 464
    if-ne v9, v6, :cond_2

    .line 466
    aget v0, v7, v9

    aget-object v0, p5, v0

    move/from16 v2, v17

    invoke-static {v0, v2, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    add-int/lit8 v0, v1, -0x1

    aget v2, v8, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v8, v0

    .line 468
    invoke-static {v1, v4, v5, v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v0

    aput v0, v7, v9

    .line 458
    :cond_2
    add-int/lit8 v3, v9, 0x1

    move v0, v6

    move-object v2, v7

    move v1, v10

    move-object/from16 v9, v20

    move-object/from16 v6, v21

    move/from16 v10, v22

    const/16 v17, 0x0

    move-object/from16 v7, p3

    .end local v9    # "j":I
    .restart local v3    # "j":I
    goto :goto_4

    .end local v7    # "derivedTermG":[I
    .end local v20    # "derivedTermF":[I
    .end local v21    # "term":[I
    .end local v22    # "vSize":I
    .restart local v0    # "l":I
    .restart local v2    # "derivedTermG":[I
    .local v6, "term":[I
    .local v9, "derivedTermF":[I
    .restart local v10    # "vSize":I
    :cond_3
    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v7, v2

    move-object/from16 v21, v6

    move-object/from16 v20, v9

    move/from16 v22, v10

    move v6, v0

    move v10, v1

    move v9, v3

    move/from16 v1, p0

    .line 471
    .end local v0    # "l":I
    .end local v2    # "derivedTermG":[I
    .end local v3    # "j":I
    .end local v9    # "derivedTermF":[I
    .end local v10    # "vSize":I
    .local v6, "l":I
    .restart local v7    # "derivedTermG":[I
    .restart local v20    # "derivedTermF":[I
    .restart local v21    # "term":[I
    .restart local v22    # "vSize":I
    array-length v0, v7

    invoke-static {v7, v10, v0}, Ljava/util/Arrays;->sort([III)V

    .line 472
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v7    # "derivedTermG":[I
    add-int/lit8 v0, v6, 0x1

    move-object/from16 v7, p3

    move v1, v10

    move-object/from16 v9, v20

    move-object/from16 v6, v21

    move/from16 v10, v22

    const/16 v17, 0x0

    .end local v6    # "l":I
    .restart local v0    # "l":I
    goto/16 :goto_3

    .end local v20    # "derivedTermF":[I
    .end local v21    # "term":[I
    .end local v22    # "vSize":I
    .local v6, "term":[I
    .restart local v9    # "derivedTermF":[I
    .restart local v10    # "vSize":I
    :cond_4
    move/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v21, v6

    move-object/from16 v20, v9

    move/from16 v22, v10

    move v6, v0

    .line 432
    .end local v0    # "l":I
    .end local v6    # "term":[I
    .end local v8    # "orders":[I
    .end local v9    # "derivedTermF":[I
    .end local v10    # "vSize":I
    .restart local v22    # "vSize":I
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v0, v18

    const/4 v8, 0x0

    .end local v19    # "i$":I
    .local v2, "i$":I
    goto/16 :goto_1

    .end local v18    # "len$":I
    .end local v22    # "vSize":I
    .local v0, "len$":I
    .restart local v10    # "vSize":I
    :cond_5
    move/from16 v18, v0

    move/from16 v19, v2

    move/from16 v22, v10

    const/16 v16, 0x1

    .line 478
    .end local v0    # "len$":I
    .end local v2    # "i$":I
    .end local v10    # "vSize":I
    .end local v15    # "arr$":[[I
    .restart local v22    # "vSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    .local v0, "combined":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 480
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 481
    .local v3, "termJ":[I
    const/16 v17, 0x0

    aget v6, v3, v17

    if-lez v6, :cond_b

    .line 482
    add-int/lit8 v6, v2, 0x1

    .local v6, "k":I
    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 483
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 484
    .local v7, "termK":[I
    array-length v8, v3

    array-length v9, v7

    if-ne v8, v9, :cond_6

    move/from16 v8, v16

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    .line 485
    .local v8, "equals":Z
    :goto_7
    const/4 v9, 0x1

    .local v9, "l":I
    :goto_8
    if-eqz v8, :cond_8

    array-length v10, v3

    if-ge v9, v10, :cond_8

    .line 486
    aget v10, v3, v9

    aget v15, v7, v9

    if-ne v10, v15, :cond_7

    move/from16 v10, v16

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    :goto_9
    and-int/2addr v8, v10

    .line 485
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 488
    .end local v9    # "l":I
    :cond_8
    if-eqz v8, :cond_9

    .line 490
    const/16 v17, 0x0

    aget v9, v3, v17

    aget v10, v7, v17

    add-int/2addr v9, v10

    aput v9, v3, v17

    .line 492
    aput v17, v7, v17

    .line 482
    .end local v7    # "termK":[I
    .end local v8    # "equals":Z
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 495
    .end local v6    # "k":I
    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v3    # "termJ":[I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 499
    .end local v2    # "j":I
    :cond_c
    add-int v10, v22, v13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    aput-object v2, v12, v10

    .line 430
    .end local v0    # "combined":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v14    # "row":Ljava/util/List;, "Ljava/util/List<[I>;"
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, v22

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 503
    .end local v13    # "i":I
    .end local v22    # "vSize":I
    .restart local v10    # "vSize":I
    :cond_d
    return-object v12

    .line 415
    .end local v10    # "vSize":I
    .end local v11    # "dSize":I
    .end local v12    # "compIndirection":[[[I
    :cond_e
    const/16 v16, 0x1

    .line 416
    :goto_a
    move/from16 v0, v16

    const/4 v2, 0x0

    filled-new-array {v0, v2}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    filled-new-array {v0}, [[[I

    move-result-object v0

    return-object v0
.end method

.method private static compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 9
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 265
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 269
    :cond_0
    iget-object v3, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length v3, v3

    .line 270
    .local v3, "vSize":I
    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length v4, v4

    .line 271
    .local v4, "dSize":I
    add-int v5, v3, v4

    new-array v0, v0, [I

    aput p0, v0, v2

    aput v5, v0, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 274
    .local v0, "derivativesIndirection":[[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 276
    iget-object v6, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v6, v6, v5

    aget-object v7, v0, v5

    add-int/lit8 v8, p0, -0x1

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 285
    iget-object v6, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v6, v6, v5

    add-int v7, v3, v5

    aget-object v7, v0, v7

    invoke-static {v6, v1, v7, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    add-int v6, v3, v5

    aget-object v6, v0, v6

    add-int/lit8 v7, p0, -0x1

    aget v8, v6, v7

    add-int/2addr v8, v2

    aput v8, v6, v7

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 294
    .end local v5    # "i":I
    :cond_2
    return-object v0

    .line 266
    .end local v0    # "derivativesIndirection":[[I
    .end local v3    # "vSize":I
    .end local v4    # "dSize":I
    :cond_3
    :goto_2
    new-array v0, v0, [I

    aput p0, v0, v2

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method

.method private static compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I
    .locals 7
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 313
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    iget-object v1, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length v1, v1

    .line 319
    .local v1, "vSize":I
    iget-object v2, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length v2, v2

    .line 320
    .local v2, "dSize":I
    add-int v3, v1, v2

    new-array v3, v3, [I

    .line 321
    .local v3, "lowerIndirection":[I
    iget-object v4, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    invoke-static {v4, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 323
    add-int v4, v1, v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v5

    iget-object v6, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    :cond_1
    return-object v3

    .line 314
    .end local v1    # "vSize":I
    .end local v2    # "dSize":I
    .end local v3    # "lowerIndirection":[I
    :cond_2
    :goto_1
    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private static compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I
    .locals 18
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p4, "lowerIndirection"    # [I

    .line 348
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    move/from16 v17, v2

    goto/16 :goto_5

    .line 353
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v4, v4

    .line 354
    .local v4, "vSize":I
    iget-object v5, v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v5, v5

    .line 355
    .local v5, "dSize":I
    add-int v6, v4, v5

    new-array v6, v6, [[[I

    .line 357
    .local v6, "multIndirection":[[[I
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    invoke-static {v7, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_6

    .line 360
    iget-object v8, v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    aget-object v8, v8, v7

    .line 361
    .local v8, "dRow":[[I
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v9, "row":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    array-length v12, v8

    if-ge v10, v12, :cond_1

    .line 363
    aget-object v12, v8, v10

    aget v12, v12, v3

    aget-object v13, v8, v10

    aget v13, v13, v2

    aget v13, p4, v13

    aget-object v14, v8, v10

    aget v14, v14, v11

    add-int/2addr v14, v4

    filled-new-array {v12, v13, v14}, [I

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    aget-object v12, v8, v10

    aget v12, v12, v3

    aget-object v13, v8, v10

    aget v13, v13, v2

    add-int/2addr v13, v4

    aget-object v14, v8, v10

    aget v14, v14, v11

    aget v14, p4, v14

    filled-new-array {v12, v13, v14}, [I

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 368
    .end local v10    # "j":I
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v10, "combined":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 370
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 371
    .local v13, "termJ":[I
    aget v14, v13, v3

    if-lez v14, :cond_4

    .line 372
    add-int/lit8 v14, v12, 0x1

    .local v14, "k":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 373
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 374
    .local v15, "termK":[I
    move/from16 v16, v11

    aget v11, v13, v2

    move/from16 v17, v2

    aget v2, v15, v17

    if-ne v11, v2, :cond_2

    aget v2, v13, v16

    aget v11, v15, v16

    if-ne v2, v11, :cond_2

    .line 376
    aget v2, v13, v3

    aget v11, v15, v3

    add-int/2addr v2, v11

    aput v2, v13, v3

    .line 378
    aput v3, v15, v3

    .line 372
    .end local v15    # "termK":[I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v16

    move/from16 v2, v17

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    move/from16 v16, v11

    .line 381
    .end local v14    # "k":I
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 371
    :cond_4
    move/from16 v17, v2

    move/from16 v16, v11

    .line 369
    .end local v13    # "termJ":[I
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v2

    .line 385
    .end local v12    # "j":I
    add-int v2, v4, v7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [[I

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    aput-object v11, v6, v2

    .line 359
    .end local v8    # "dRow":[[I
    .end local v9    # "row":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v10    # "combined":Ljava/util/List;, "Ljava/util/List<[I>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 389
    .end local v7    # "i":I
    :cond_6
    return-object v6

    .line 348
    .end local v4    # "vSize":I
    .end local v5    # "dSize":I
    .end local v6    # "multIndirection":[[[I
    :cond_7
    move/from16 v17, v2

    .line 349
    :goto_5
    move/from16 v2, v17

    filled-new-array {v2, v3, v3}, [I

    move-result-object v2

    filled-new-array {v2}, [[I

    move-result-object v2

    filled-new-array {v2}, [[[I

    move-result-object v2

    return-object v2
.end method

.method private static compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 7
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 239
    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 240
    .local v0, "sizes":[[I
    if-nez p0, :cond_0

    .line 241
    aget-object v1, v0, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 243
    :cond_0
    iget-object v2, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {v2, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    aget-object v2, v0, p0

    aput v3, v2, v1

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 246
    aget-object v2, v0, p0

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v0, p0

    aget v4, v4, v1

    add-int/lit8 v5, p0, -0x1

    aget-object v5, v0, v5

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static convertIndex(II[[III[[I)I
    .locals 4
    .param p0, "index"    # I
    .param p1, "srcP"    # I
    .param p2, "srcDerivativesIndirection"    # [[I
    .param p3, "destP"    # I
    .param p4, "destO"    # I
    .param p5, "destSizes"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 610
    new-array v0, p3, [I

    .line 611
    .local v0, "orders":[I
    aget-object v1, p2, p0

    const/4 v2, 0x0

    invoke-static {p1, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    invoke-static {p3, p4, p5, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v1

    return v1
.end method

.method public static getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .locals 12
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 192
    sget-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 193
    .local v0, "cache":[[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p0, :cond_0

    aget-object v1, v0, p0

    array-length v1, v1

    if-le v1, p1, :cond_0

    aget-object v1, v0, p0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 196
    aget-object v1, v0, p0

    aget-object v1, v1, p1

    return-object v1

    .line 200
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    invoke-static {p0, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    .line 201
    .local v2, "maxParameters":I
    if-nez v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    array-length v3, v3

    :goto_1
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 202
    .local v3, "maxOrder":I
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    aput v4, v6, v1

    const-class v4, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 204
    .local v4, "newCache":[[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    if-eqz v0, :cond_3

    .line 206
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 207
    aget-object v6, v0, v5

    aget-object v7, v4, v5

    aget-object v8, v0, v5

    array-length v8, v8

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 212
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .local v5, "diag":I
    :goto_3
    add-int v6, p0, p1

    if-gt v5, v6, :cond_8

    .line 213
    sub-int v6, v5, p0

    invoke-static {v1, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    .local v6, "o":I
    :goto_4
    invoke-static {p1, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    if-gt v6, v7, :cond_7

    .line 214
    sub-int v7, v5, v6

    .line 215
    .local v7, "p":I
    aget-object v8, v4, v7

    aget-object v8, v8, v6

    if-nez v8, :cond_6

    .line 216
    const/4 v8, 0x0

    if-nez v7, :cond_4

    move-object v9, v8

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v7, -0x1

    aget-object v9, v4, v9

    aget-object v9, v9, v6

    .line 217
    .local v9, "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :goto_5
    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    aget-object v8, v4, v7

    add-int/lit8 v10, v6, -0x1

    aget-object v8, v8, v10

    .line 218
    .local v8, "derivativeCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :goto_6
    aget-object v10, v4, v7

    new-instance v11, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v11, v7, v6, v9, v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;-><init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    aput-object v11, v10, v6

    .line 213
    .end local v7    # "p":I
    .end local v8    # "derivativeCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .end local v9    # "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 212
    .end local v6    # "o":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 224
    .end local v5    # "diag":I
    :cond_8
    sget-object v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    aget-object v1, v4, p0

    aget-object v1, v1, p1

    return-object v1
.end method

.method private static varargs getPartialDerivativeIndex(II[[I[I)I
    .locals 9
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "sizes"    # [[I
    .param p3, "orders"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "index":I
    move v1, p1

    .line 569
    .local v1, "m":I
    const/4 v2, 0x0

    .line 570
    .local v2, "ordersSum":I
    add-int/lit8 v3, p0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 573
    aget v4, p3, v3

    .line 576
    .local v4, "derivativeOrder":I
    add-int/2addr v2, v4

    .line 577
    if-gt v2, p1, :cond_1

    .line 581
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "derivativeOrder":I
    .local v5, "derivativeOrder":I
    if-lez v4, :cond_0

    .line 585
    aget-object v4, p2, v3

    add-int/lit8 v6, v1, -0x1

    .end local v1    # "m":I
    .local v6, "m":I
    aget v1, v4, v1

    add-int/2addr v0, v1

    move v4, v5

    move v1, v6

    goto :goto_1

    .line 570
    .end local v5    # "derivativeOrder":I
    .end local v6    # "m":I
    .restart local v1    # "m":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 578
    .restart local v4    # "derivativeOrder":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 590
    .end local v3    # "i":I
    .end local v4    # "derivativeOrder":I
    :cond_2
    return v0
.end method


# virtual methods
.method public acos([DI[DI)V
    .locals 24
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1262
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1263
    .local v3, "function":[D
    aget-wide v6, p1, p2

    .line 1264
    .local v6, "x":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    const/4 v1, 0x0

    aput-wide v4, v3, v1

    .line 1265
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1273
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v4, v4, [D

    .line 1274
    .local v4, "p":[D
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    aput-wide v8, v4, v1

    .line 1275
    mul-double v8, v6, v6

    .line 1276
    .local v8, "x2":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v12, v10, v8

    div-double/2addr v10, v12

    .line 1277
    .local v10, "f":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 1278
    .local v12, "coeff":D
    aget-wide v14, v4, v1

    mul-double/2addr v14, v12

    aput-wide v14, v3, v2

    .line 1279
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_0
    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v14, :cond_4

    .line 1282
    const-wide/16 v14, 0x0

    .line 1283
    .local v14, "v":D
    add-int/lit8 v16, v5, -0x1

    move/from16 v17, v1

    add-int/lit8 v1, v5, -0x1

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .local v19, "function":[D
    int-to-double v2, v1

    add-int/lit8 v1, v5, -0x2

    aget-wide v20, v4, v1

    mul-double v2, v2, v20

    aput-wide v2, v4, v16

    .line 1284
    add-int/lit8 v1, v5, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1285
    mul-double v2, v14, v8

    aget-wide v20, v4, v1

    add-double v14, v2, v20

    .line 1286
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1287
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v1, -0x1

    move/from16 v16, v2

    int-to-double v2, v3

    add-int/lit8 v20, v1, -0x1

    aget-wide v20, v4, v20

    mul-double v2, v2, v20

    mul-int/lit8 v20, v5, 0x2

    sub-int v0, v20, v1

    move-wide/from16 v20, v2

    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x3

    aget-wide v22, v4, v0

    mul-double v2, v2, v22

    add-double v2, v20, v2

    aput-wide v2, v4, v16

    goto :goto_2

    .line 1288
    :cond_0
    if-ne v1, v2, :cond_1

    .line 1289
    aget-wide v2, v4, v18

    aput-wide v2, v4, v17

    .line 1284
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p0

    goto :goto_1

    .line 1292
    .end local v1    # "k":I
    :cond_2
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_3

    .line 1293
    mul-double/2addr v14, v6

    .line 1296
    :cond_3
    mul-double/2addr v12, v10

    .line 1297
    mul-double v0, v12, v14

    aput-wide v0, v19, v5

    .line 1279
    .end local v14    # "v":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_0

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_4
    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    goto :goto_3

    .line 1265
    .end local v4    # "p":[D
    .end local v5    # "n":I
    .end local v8    # "x2":D
    .end local v10    # "f":D
    .end local v12    # "coeff":D
    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_5
    move-object/from16 v19, v3

    .line 1303
    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v3, v19

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1305
    return-void
.end method

.method public acosh([DI[DI)V
    .locals 24
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1591
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1592
    .local v3, "function":[D
    aget-wide v6, p1, p2

    .line 1593
    .local v6, "x":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v4

    const/4 v1, 0x0

    aput-wide v4, v3, v1

    .line 1594
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1602
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v4, v4, [D

    .line 1603
    .local v4, "p":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v1

    .line 1604
    mul-double v10, v6, v6

    .line 1605
    .local v10, "x2":D
    sub-double v12, v10, v8

    div-double/2addr v8, v12

    .line 1606
    .local v8, "f":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 1607
    .local v12, "coeff":D
    aget-wide v14, v4, v1

    mul-double/2addr v14, v12

    aput-wide v14, v3, v2

    .line 1608
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_0
    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v14, :cond_4

    .line 1611
    const-wide/16 v14, 0x0

    .line 1612
    .local v14, "v":D
    add-int/lit8 v16, v5, -0x1

    move/from16 v17, v1

    rsub-int/lit8 v1, v5, 0x1

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .local v19, "function":[D
    int-to-double v2, v1

    add-int/lit8 v1, v5, -0x2

    aget-wide v20, v4, v1

    mul-double v2, v2, v20

    aput-wide v2, v4, v16

    .line 1613
    add-int/lit8 v1, v5, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1614
    mul-double v2, v14, v10

    aget-wide v20, v4, v1

    add-double v14, v2, v20

    .line 1615
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1616
    add-int/lit8 v2, v1, -0x2

    rsub-int/lit8 v3, v1, 0x1

    move/from16 v16, v2

    int-to-double v2, v3

    add-int/lit8 v20, v1, -0x1

    aget-wide v20, v4, v20

    mul-double v2, v2, v20

    mul-int/lit8 v20, v5, 0x2

    sub-int v0, v1, v20

    move-wide/from16 v20, v2

    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x3

    aget-wide v22, v4, v0

    mul-double v2, v2, v22

    add-double v2, v20, v2

    aput-wide v2, v4, v16

    goto :goto_2

    .line 1617
    :cond_0
    if-ne v1, v2, :cond_1

    .line 1618
    aget-wide v2, v4, v18

    neg-double v2, v2

    aput-wide v2, v4, v17

    .line 1613
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p0

    goto :goto_1

    .line 1621
    .end local v1    # "k":I
    :cond_2
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_3

    .line 1622
    mul-double/2addr v14, v6

    .line 1625
    :cond_3
    mul-double/2addr v12, v8

    .line 1626
    mul-double v0, v12, v14

    aput-wide v0, v19, v5

    .line 1608
    .end local v14    # "v":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_0

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_4
    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    goto :goto_3

    .line 1594
    .end local v4    # "p":[D
    .end local v5    # "n":I
    .end local v8    # "f":D
    .end local v10    # "x2":D
    .end local v12    # "coeff":D
    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_5
    move-object/from16 v19, v3

    .line 1632
    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v3, v19

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1634
    return-void
.end method

.method public add([DI[DI[DI)V
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 744
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 745
    add-int v1, p6, v0

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    add-double/2addr v2, v4

    aput-wide v2, p5, v1

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public asin([DI[DI)V
    .locals 24
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1319
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1320
    .local v3, "function":[D
    aget-wide v6, p1, p2

    .line 1321
    .local v6, "x":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    const/4 v1, 0x0

    aput-wide v4, v3, v1

    .line 1322
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1330
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v4, v4, [D

    .line 1331
    .local v4, "p":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v1

    .line 1332
    mul-double v10, v6, v6

    .line 1333
    .local v10, "x2":D
    sub-double v12, v8, v10

    div-double/2addr v8, v12

    .line 1334
    .local v8, "f":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 1335
    .local v12, "coeff":D
    aget-wide v14, v4, v1

    mul-double/2addr v14, v12

    aput-wide v14, v3, v2

    .line 1336
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_0
    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v14, :cond_4

    .line 1339
    const-wide/16 v14, 0x0

    .line 1340
    .local v14, "v":D
    add-int/lit8 v16, v5, -0x1

    move/from16 v17, v1

    add-int/lit8 v1, v5, -0x1

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .local v19, "function":[D
    int-to-double v2, v1

    add-int/lit8 v1, v5, -0x2

    aget-wide v20, v4, v1

    mul-double v2, v2, v20

    aput-wide v2, v4, v16

    .line 1341
    add-int/lit8 v1, v5, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1342
    mul-double v2, v14, v10

    aget-wide v20, v4, v1

    add-double v14, v2, v20

    .line 1343
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1344
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v1, -0x1

    move/from16 v16, v2

    int-to-double v2, v3

    add-int/lit8 v20, v1, -0x1

    aget-wide v20, v4, v20

    mul-double v2, v2, v20

    mul-int/lit8 v20, v5, 0x2

    sub-int v0, v20, v1

    move-wide/from16 v20, v2

    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x3

    aget-wide v22, v4, v0

    mul-double v2, v2, v22

    add-double v2, v20, v2

    aput-wide v2, v4, v16

    goto :goto_2

    .line 1345
    :cond_0
    if-ne v1, v2, :cond_1

    .line 1346
    aget-wide v2, v4, v18

    aput-wide v2, v4, v17

    .line 1341
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p0

    goto :goto_1

    .line 1349
    .end local v1    # "k":I
    :cond_2
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_3

    .line 1350
    mul-double/2addr v14, v6

    .line 1353
    :cond_3
    mul-double/2addr v12, v8

    .line 1354
    mul-double v0, v12, v14

    aput-wide v0, v19, v5

    .line 1336
    .end local v14    # "v":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_0

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_4
    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    goto :goto_3

    .line 1322
    .end local v4    # "p":[D
    .end local v5    # "n":I
    .end local v8    # "f":D
    .end local v10    # "x2":D
    .end local v12    # "coeff":D
    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_5
    move-object/from16 v19, v3

    .line 1360
    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v3, v19

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1362
    return-void
.end method

.method public asinh([DI[DI)V
    .locals 24
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1648
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1649
    .local v3, "function":[D
    aget-wide v6, p1, p2

    .line 1650
    .local v6, "x":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v4

    const/4 v1, 0x0

    aput-wide v4, v3, v1

    .line 1651
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1659
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v4, v4, [D

    .line 1660
    .local v4, "p":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v1

    .line 1661
    mul-double v10, v6, v6

    .line 1662
    .local v10, "x2":D
    add-double v12, v10, v8

    div-double/2addr v8, v12

    .line 1663
    .local v8, "f":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 1664
    .local v12, "coeff":D
    aget-wide v14, v4, v1

    mul-double/2addr v14, v12

    aput-wide v14, v3, v2

    .line 1665
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_0
    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v14, :cond_4

    .line 1668
    const-wide/16 v14, 0x0

    .line 1669
    .local v14, "v":D
    add-int/lit8 v16, v5, -0x1

    move/from16 v17, v1

    rsub-int/lit8 v1, v5, 0x1

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .local v19, "function":[D
    int-to-double v2, v1

    add-int/lit8 v1, v5, -0x2

    aget-wide v20, v4, v1

    mul-double v2, v2, v20

    aput-wide v2, v4, v16

    .line 1670
    add-int/lit8 v1, v5, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1671
    mul-double v2, v14, v10

    aget-wide v20, v4, v1

    add-double v14, v2, v20

    .line 1672
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1673
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v1, -0x1

    move/from16 v16, v2

    int-to-double v2, v3

    add-int/lit8 v20, v1, -0x1

    aget-wide v20, v4, v20

    mul-double v2, v2, v20

    mul-int/lit8 v20, v5, 0x2

    sub-int v0, v1, v20

    move-wide/from16 v20, v2

    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x3

    aget-wide v22, v4, v0

    mul-double v2, v2, v22

    add-double v2, v20, v2

    aput-wide v2, v4, v16

    goto :goto_2

    .line 1674
    :cond_0
    if-ne v1, v2, :cond_1

    .line 1675
    aget-wide v2, v4, v18

    aput-wide v2, v4, v17

    .line 1670
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p0

    goto :goto_1

    .line 1678
    .end local v1    # "k":I
    :cond_2
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_3

    .line 1679
    mul-double/2addr v14, v6

    .line 1682
    :cond_3
    mul-double/2addr v12, v8

    .line 1683
    mul-double v0, v12, v14

    aput-wide v0, v19, v5

    .line 1665
    .end local v14    # "v":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_0

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_4
    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    goto :goto_3

    .line 1651
    .end local v4    # "p":[D
    .end local v5    # "n":I
    .end local v8    # "f":D
    .end local v10    # "x2":D
    .end local v12    # "coeff":D
    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_5
    move-object/from16 v19, v3

    .line 1689
    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v3, v19

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1691
    return-void
.end method

.method public atan([DI[DI)V
    .locals 24
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1376
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1377
    .local v3, "function":[D
    aget-wide v6, p1, p2

    .line 1378
    .local v6, "x":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v4

    const/4 v1, 0x0

    aput-wide v4, v3, v1

    .line 1379
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1387
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v4, v4, [D

    .line 1388
    .local v4, "q":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v1

    .line 1389
    mul-double v10, v6, v6

    .line 1390
    .local v10, "x2":D
    add-double v12, v10, v8

    div-double/2addr v8, v12

    .line 1391
    .local v8, "f":D
    move-wide v12, v8

    .line 1392
    .local v12, "coeff":D
    aget-wide v14, v4, v1

    mul-double/2addr v14, v12

    aput-wide v14, v3, v2

    .line 1393
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_0
    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v14, :cond_4

    .line 1396
    const-wide/16 v14, 0x0

    .line 1397
    .local v14, "v":D
    add-int/lit8 v16, v5, -0x1

    move/from16 v17, v1

    neg-int v1, v5

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .local v19, "function":[D
    int-to-double v2, v1

    add-int/lit8 v1, v5, -0x2

    aget-wide v20, v4, v1

    mul-double v2, v2, v20

    aput-wide v2, v4, v16

    .line 1398
    add-int/lit8 v1, v5, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1399
    mul-double v2, v14, v10

    aget-wide v20, v4, v1

    add-double v14, v2, v20

    .line 1400
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1401
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v1, -0x1

    move/from16 v16, v2

    int-to-double v2, v3

    add-int/lit8 v20, v1, -0x1

    aget-wide v20, v4, v20

    mul-double v2, v2, v20

    add-int/lit8 v20, v1, -0x1

    mul-int/lit8 v21, v5, 0x2

    sub-int v0, v20, v21

    move-wide/from16 v20, v2

    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x3

    aget-wide v22, v4, v0

    mul-double v2, v2, v22

    add-double v2, v20, v2

    aput-wide v2, v4, v16

    goto :goto_2

    .line 1402
    :cond_0
    if-ne v1, v2, :cond_1

    .line 1403
    aget-wide v2, v4, v18

    aput-wide v2, v4, v17

    .line 1398
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p0

    goto :goto_1

    .line 1406
    .end local v1    # "k":I
    :cond_2
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_3

    .line 1407
    mul-double/2addr v14, v6

    .line 1410
    :cond_3
    mul-double/2addr v12, v8

    .line 1411
    mul-double v0, v12, v14

    aput-wide v0, v19, v5

    .line 1393
    .end local v14    # "v":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_0

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_4
    move-object/from16 v19, v3

    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    goto :goto_3

    .line 1379
    .end local v4    # "q":[D
    .end local v5    # "n":I
    .end local v8    # "f":D
    .end local v10    # "x2":D
    .end local v12    # "coeff":D
    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    :cond_5
    move-object/from16 v19, v3

    .line 1417
    .end local v3    # "function":[D
    .restart local v19    # "function":[D
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v3, v19

    .end local v19    # "function":[D
    .restart local v3    # "function":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1419
    return-void
.end method

.method public atan2([DI[DI[DI)V
    .locals 12
    .param p1, "y"    # [D
    .param p2, "yOffset"    # I
    .param p3, "x"    # [D
    .param p4, "xOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 1436
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v1, v0, [D

    .line 1437
    .local v1, "tmp1":[D
    const/4 v6, 0x0

    move-object v3, p3

    move/from16 v4, p4

    move-object v0, p0

    move/from16 v2, p4

    move-object v5, v1

    move-object v1, p3

    .end local v1    # "tmp1":[D
    .local v5, "tmp1":[D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 1438
    move-object v7, v5

    .end local v5    # "tmp1":[D
    .local v7, "tmp1":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v3, v0, [D

    .line 1439
    .local v3, "tmp2":[D
    move-object v5, v3

    .end local v3    # "tmp2":[D
    .local v5, "tmp2":[D
    move-object v3, p1

    move v4, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 1440
    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v3, v5

    .end local v5    # "tmp2":[D
    .restart local v3    # "tmp2":[D
    move-object v1, v7

    .end local v7    # "tmp1":[D
    .restart local v1    # "tmp1":[D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    .line 1441
    .end local v3    # "tmp2":[D
    .restart local v5    # "tmp2":[D
    const/4 v3, 0x2

    move-object v4, v1

    move-object v1, v5

    .end local v5    # "tmp2":[D
    .local v1, "tmp2":[D
    .local v4, "tmp1":[D
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->rootN([DII[DI)V

    .line 1443
    move-object v5, v1

    move-object v1, v4

    .end local v4    # "tmp1":[D
    .local v1, "tmp1":[D
    .restart local v5    # "tmp2":[D
    aget-wide v2, p3, p4

    const-wide/16 v7, 0x0

    cmpl-double v0, v2, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x0

    if-ltz v0, :cond_1

    .line 1446
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    .line 1447
    const/4 v4, 0x0

    move v2, p2

    move-object v3, v5

    move-object v5, v1

    move-object v1, p1

    .end local v1    # "tmp1":[D
    .restart local v3    # "tmp2":[D
    .local v5, "tmp1":[D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 1448
    move-object v1, v5

    move-object v5, v3

    .end local v3    # "tmp2":[D
    .restart local v1    # "tmp1":[D
    .local v5, "tmp2":[D
    invoke-virtual {p0, v1, v11, v5, v11}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 1449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v5

    if-ge v2, v3, :cond_0

    .line 1450
    add-int v3, p6, v2

    aget-wide v6, v5, v2

    mul-double/2addr v6, v9

    aput-wide v6, p5, v3

    .line 1449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_3

    .line 1456
    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->subtract([DI[DI[DI)V

    .line 1457
    const/4 v4, 0x0

    move v2, p2

    move-object v3, v5

    move-object v5, v1

    move-object v1, p1

    .end local v1    # "tmp1":[D
    .restart local v3    # "tmp2":[D
    .local v5, "tmp1":[D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 1458
    move-object v1, v5

    move-object v5, v3

    .end local v3    # "tmp2":[D
    .restart local v1    # "tmp1":[D
    .local v5, "tmp2":[D
    invoke-virtual {p0, v1, v11, v5, v11}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 1459
    aget-wide v2, v5, v11

    cmpg-double v2, v2, v7

    if-gtz v2, :cond_2

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_1

    :cond_2
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    :goto_1
    aget-wide v6, v5, v11

    mul-double/2addr v6, v9

    sub-double/2addr v2, v6

    aput-wide v2, p5, p6

    .line 1461
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    array-length v3, v5

    if-ge v2, v3, :cond_3

    .line 1462
    add-int v3, p6, v2

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    aget-wide v8, v5, v2

    mul-double/2addr v8, v6

    aput-wide v8, p5, v3

    .line 1461
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1468
    .end local v2    # "i":I
    :cond_3
    :goto_3
    aget-wide v2, p1, p2

    aget-wide v6, p3, p4

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p5, p6

    .line 1470
    return-void
.end method

.method public atanh([DI[DI)V
    .locals 24
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1705
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1706
    .local v3, "function":[D
    aget-wide v6, p1, p2

    .line 1707
    .local v6, "x":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v4

    const/4 v1, 0x0

    aput-wide v4, v3, v1

    .line 1708
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1716
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v4, v4, [D

    .line 1717
    .local v4, "q":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v1

    .line 1718
    mul-double v10, v6, v6

    .line 1719
    .local v10, "x2":D
    sub-double v12, v8, v10

    div-double/2addr v8, v12

    .line 1720
    .local v8, "f":D
    move-wide v12, v8

    .line 1721
    .local v12, "coeff":D
    aget-wide v14, v4, v1

    mul-double/2addr v14, v12

    aput-wide v14, v3, v2

    .line 1722
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_0
    iget v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v14, :cond_4

    .line 1725
    const-wide/16 v14, 0x0

    .line 1726
    .local v14, "v":D
    add-int/lit8 v16, v5, -0x1

    move/from16 v18, v1

    move/from16 v17, v2

    int-to-double v1, v5

    add-int/lit8 v19, v5, -0x2

    aget-wide v19, v4, v19

    mul-double v1, v1, v19

    aput-wide v1, v4, v16

    .line 1727
    add-int/lit8 v1, v5, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1728
    mul-double v19, v14, v10

    aget-wide v21, v4, v1

    add-double v14, v19, v21

    .line 1729
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1730
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v0, v1, -0x1

    move/from16 v19, v2

    move-object/from16 v16, v3

    .end local v3    # "function":[D
    .local v16, "function":[D
    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x1

    aget-wide v20, v4, v0

    mul-double v2, v2, v20

    mul-int/lit8 v0, v5, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v20, v2

    int-to-double v2, v0

    add-int/lit8 v0, v1, -0x3

    aget-wide v22, v4, v0

    mul-double v2, v2, v22

    add-double v2, v20, v2

    aput-wide v2, v4, v19

    goto :goto_2

    .line 1731
    .end local v16    # "function":[D
    .restart local v3    # "function":[D
    :cond_0
    move-object/from16 v16, v3

    .end local v3    # "function":[D
    .restart local v16    # "function":[D
    if-ne v1, v2, :cond_1

    .line 1732
    aget-wide v2, v4, v17

    aput-wide v2, v4, v18

    .line 1727
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    goto :goto_1

    .end local v16    # "function":[D
    .restart local v3    # "function":[D
    :cond_2
    move-object/from16 v16, v3

    .line 1735
    .end local v1    # "k":I
    .end local v3    # "function":[D
    .restart local v16    # "function":[D
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_3

    .line 1736
    mul-double/2addr v14, v6

    .line 1739
    :cond_3
    mul-double/2addr v12, v8

    .line 1740
    mul-double v0, v12, v14

    aput-wide v0, v16, v5

    .line 1722
    .end local v14    # "v":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move/from16 v2, v17

    move/from16 v1, v18

    goto :goto_0

    .end local v16    # "function":[D
    .restart local v3    # "function":[D
    :cond_4
    move-object/from16 v16, v3

    .end local v3    # "function":[D
    .restart local v16    # "function":[D
    goto :goto_3

    .line 1708
    .end local v4    # "q":[D
    .end local v5    # "n":I
    .end local v8    # "f":D
    .end local v10    # "x2":D
    .end local v12    # "coeff":D
    .end local v16    # "function":[D
    .restart local v3    # "function":[D
    :cond_5
    move-object/from16 v16, v3

    .line 1746
    .end local v3    # "function":[D
    .restart local v16    # "function":[D
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v3, v16

    .end local v16    # "function":[D
    .restart local v3    # "function":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1748
    .end local v3    # "function":[D
    .restart local v16    # "function":[D
    return-void
.end method

.method public checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 3
    .param p1, "compiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1812
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    if-ne v0, v1, :cond_1

    .line 1815
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-ne v0, v1, :cond_0

    .line 1818
    return-void

    .line 1816
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget v2, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 1813
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v2, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public compose([DI[D[DI)V
    .locals 11
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "f"    # [D
    .param p4, "result"    # [D
    .param p5, "resultOffset"    # I

    .line 1762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1763
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    aget-object v1, v1, v0

    .line 1764
    .local v1, "mappingI":[[I
    const-wide/16 v2, 0x0

    .line 1765
    .local v2, "r":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 1766
    aget-object v5, v1, v4

    .line 1767
    .local v5, "mappingIJ":[I
    const/4 v6, 0x0

    aget v6, v5, v6

    int-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    aget-wide v8, p3, v8

    mul-double/2addr v6, v8

    .line 1768
    .local v6, "product":D
    const/4 v8, 0x2

    .local v8, "k":I
    :goto_2
    array-length v9, v5

    if-ge v8, v9, :cond_0

    .line 1769
    aget v9, v5, v8

    add-int/2addr v9, p2

    aget-wide v9, p1, v9

    mul-double/2addr v6, v9

    .line 1768
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1771
    .end local v8    # "k":I
    :cond_0
    add-double/2addr v2, v6

    .line 1765
    .end local v5    # "mappingIJ":[I
    .end local v6    # "product":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1773
    .end local v4    # "j":I
    :cond_1
    add-int v4, p5, v0

    aput-wide v2, p4, v4

    .line 1762
    .end local v1    # "mappingI":[[I
    .end local v2    # "r":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1775
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public cos([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1155
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1156
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1157
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1158
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v5, v1

    .line 1159
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    .line 1160
    add-int/lit8 v1, v0, -0x2

    aget-wide v1, v5, v1

    neg-double v1, v1

    aput-wide v1, v5, v0

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    .end local v0    # "i":I
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v3, "operand":[D
    .local v4, "operandOffset":I
    .local v6, "result":[D
    .local v7, "resultOffset":I
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1167
    return-void
.end method

.method public cosh([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1484
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1485
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1486
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1487
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    .line 1488
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    .line 1489
    add-int/lit8 v1, v0, -0x2

    aget-wide v1, v5, v1

    aput-wide v1, v5, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1494
    .end local v0    # "i":I
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v3, "operand":[D
    .local v4, "operandOffset":I
    .local v6, "result":[D
    .local v7, "resultOffset":I
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1496
    return-void
.end method

.method public divide([DI[DI[DI)V
    .locals 8
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 803
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v4, v0, [D

    .line 804
    .local v4, "reciprocal":[D
    move-object v5, v4

    .end local v4    # "reciprocal":[D
    .local v5, "reciprocal":[D
    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-object v2, p3

    .end local p2    # "lhsOffset":I
    .end local p3    # "rhs":[D
    .local v2, "rhs":[D
    .local v3, "lhsOffset":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    .line 805
    move-object p2, v2

    .end local v2    # "rhs":[D
    .local p2, "rhs":[D
    move-object v4, v5

    .end local v5    # "reciprocal":[D
    .restart local v4    # "reciprocal":[D
    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p5

    move v7, p6

    .end local p1    # "lhs":[D
    .end local p5    # "result":[D
    .end local p6    # "resultOffset":I
    .local v2, "lhs":[D
    .local v6, "result":[D
    .local v7, "resultOffset":I
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 806
    move-object v5, v4

    .end local v4    # "reciprocal":[D
    .restart local v5    # "reciprocal":[D
    return-void
.end method

.method public exp([DI[DI)V
    .locals 7
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1032
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 1033
    .local v4, "function":[D
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    invoke-static {v4, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 1036
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v2, "operand":[D
    .local v3, "operandOffset":I
    .local v5, "result":[D
    .local v6, "resultOffset":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1038
    return-void
.end method

.method public expm1([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1052
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1053
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1054
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/2addr v0, v1

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    invoke-static {v5, v1, v0, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    .line 1057
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v3, "operand":[D
    .local v4, "operandOffset":I
    .local v6, "result":[D
    .local v7, "resultOffset":I
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1059
    return-void
.end method

.method public getFreeParameters()I
    .locals 1

    .line 631
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 638
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    return v0
.end method

.method public varargs getPartialDerivativeIndex([I)I
    .locals 3
    .param p1, "orders"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 543
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 547
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v0

    return v0

    .line 544
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getPartialDerivativeOrders(I)[I
    .locals 1
    .param p1, "index"    # I

    .line 624
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .line 649
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    aget v0, v0, v1

    return v0
.end method

.method public linearCombination(D[DID[DID[DID[DI[DI)V
    .locals 19
    .param p1, "a1"    # D
    .param p3, "c1"    # [D
    .param p4, "offset1"    # I
    .param p5, "a2"    # D
    .param p7, "c2"    # [D
    .param p8, "offset2"    # I
    .param p9, "a3"    # D
    .param p11, "c3"    # [D
    .param p12, "offset3"    # I
    .param p13, "a4"    # D
    .param p15, "c4"    # [D
    .param p16, "offset4"    # I
    .param p17, "result"    # [D
    .param p18, "resultOffset"    # I

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 724
    add-int v1, p18, v0

    add-int v2, p4, v0

    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    add-int v2, p12, v0

    aget-wide v13, p11, v2

    add-int v2, p16, v0

    aget-wide v17, p15, v2

    move-wide/from16 v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v11, p9

    move-wide/from16 v15, p13

    invoke-static/range {v3 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v5

    aput-wide v5, p17, v1

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DID[DI[DI)V
    .locals 15
    .param p1, "a1"    # D
    .param p3, "c1"    # [D
    .param p4, "offset1"    # I
    .param p5, "a2"    # D
    .param p7, "c2"    # [D
    .param p8, "offset2"    # I
    .param p9, "a3"    # D
    .param p11, "c3"    # [D
    .param p12, "offset3"    # I
    .param p13, "result"    # [D
    .param p14, "resultOffset"    # I

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 693
    add-int v1, p14, v0

    add-int v2, p4, v0

    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    add-int v2, p12, v0

    aget-wide v13, p11, v2

    move-wide/from16 v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v11, p9

    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v5

    aput-wide v5, p13, v1

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DI[DI)V
    .locals 11
    .param p1, "a1"    # D
    .param p3, "c1"    # [D
    .param p4, "offset1"    # I
    .param p5, "a2"    # D
    .param p7, "c2"    # [D
    .param p8, "offset2"    # I
    .param p9, "result"    # [D
    .param p10, "resultOffset"    # I

    .line 667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 668
    add-int v1, p10, v0

    add-int v2, p4, v0

    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    move-wide v3, p1

    move-wide/from16 v7, p5

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    aput-wide v5, p9, v1

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public log([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1073
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 1074
    .local v4, "function":[D
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v4, v2

    .line 1075
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1076
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aget-wide v2, p1, p2

    div-double/2addr v0, v2

    .line 1077
    .local v0, "inv":D
    move-wide v2, v0

    .line 1078
    .local v2, "xk":D
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v6, :cond_0

    .line 1079
    aput-wide v2, v4, v5

    .line 1080
    neg-int v6, v5

    int-to-double v6, v6

    mul-double/2addr v6, v0

    mul-double/2addr v2, v6

    .line 1078
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "inv":D
    .end local v2    # "xk":D
    .end local v5    # "i":I
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v2, "operand":[D
    .local v3, "operandOffset":I
    .local v5, "result":[D
    .local v6, "resultOffset":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1087
    return-void
.end method

.method public log10([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1127
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 1128
    .local v4, "function":[D
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v4, v2

    .line 1129
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1130
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aget-wide v2, p1, p2

    div-double/2addr v0, v2

    .line 1131
    .local v0, "inv":D
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    div-double v2, v0, v2

    .line 1132
    .local v2, "xk":D
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v6, :cond_0

    .line 1133
    aput-wide v2, v4, v5

    .line 1134
    neg-int v6, v5

    int-to-double v6, v6

    mul-double/2addr v6, v0

    mul-double/2addr v2, v6

    .line 1132
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1139
    .end local v0    # "inv":D
    .end local v2    # "xk":D
    .end local v5    # "i":I
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v2, "operand":[D
    .local v3, "operandOffset":I
    .local v5, "result":[D
    .local v6, "resultOffset":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1141
    return-void
.end method

.method public log1p([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1100
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 1101
    .local v4, "function":[D
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v4, v2

    .line 1102
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1103
    aget-wide v0, p1, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    div-double/2addr v2, v0

    .line 1104
    .local v2, "inv":D
    move-wide v0, v2

    .line 1105
    .local v0, "xk":D
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v5, v6, :cond_0

    .line 1106
    aput-wide v0, v4, v5

    .line 1107
    neg-int v6, v5

    int-to-double v6, v6

    mul-double/2addr v6, v2

    mul-double/2addr v0, v6

    .line 1105
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1112
    .end local v0    # "xk":D
    .end local v2    # "inv":D
    .end local v5    # "i":I
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v2, "operand":[D
    .local v3, "operandOffset":I
    .local v5, "result":[D
    .local v6, "resultOffset":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1114
    return-void
.end method

.method public multiply([DI[DI[DI)V
    .locals 9
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 779
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    aget-object v1, v1, v0

    .line 780
    .local v1, "mappingI":[[I
    const-wide/16 v2, 0x0

    .line 781
    .local v2, "r":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 782
    aget-object v5, v1, v4

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-double v5, v5

    aget-object v7, v1, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p2

    aget-wide v7, p1, v7

    mul-double/2addr v5, v7

    aget-object v7, v1, v4

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int/2addr v7, p4

    aget-wide v7, p3, v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    .line 781
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 786
    .end local v4    # "j":I
    :cond_0
    add-int v4, p6, v0

    aput-wide v2, p5, v4

    .line 778
    .end local v1    # "mappingI":[[I
    .end local v2    # "r":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public pow(D[DI[DI)V
    .locals 7
    .param p1, "a"    # D
    .param p3, "operand"    # [D
    .param p4, "operandOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 851
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 852
    .local v4, "function":[D
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 853
    aget-wide v5, p3, p4

    cmpl-double v2, v5, v0

    if-nez v2, :cond_1

    .line 854
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aput-wide v0, v4, v3

    .line 855
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 856
    .local v0, "infinity":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_0

    .line 857
    neg-double v0, v0

    .line 858
    aput-wide v0, v4, v2

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "infinity":D
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 860
    :cond_1
    aget-wide v2, p3, p4

    cmpg-double v0, v2, v0

    if-gez v0, :cond_2

    .line 861
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v4, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    goto :goto_3

    .line 860
    :cond_2
    :goto_1
    goto :goto_3

    .line 864
    :cond_3
    aget-wide v0, p3, p4

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 865
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 866
    .local v0, "lnA":D
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    array-length v3, v4

    if-ge v2, v3, :cond_4

    .line 867
    add-int/lit8 v3, v2, -0x1

    aget-wide v5, v4, v3

    mul-double/2addr v5, v0

    aput-wide v5, v4, v2

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 873
    .end local v0    # "lnA":D
    .end local v2    # "i":I
    :cond_4
    :goto_3
    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move v6, p6

    .end local p3    # "operand":[D
    .end local p4    # "operandOffset":I
    .end local p5    # "result":[D
    .end local p6    # "resultOffset":I
    .local v2, "operand":[D
    .local v3, "operandOffset":I
    .local v5, "result":[D
    .local v6, "resultOffset":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 875
    return-void
.end method

.method public pow([DID[DI)V
    .locals 10
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "p"    # D
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 891
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [D

    .line 892
    .local v3, "function":[D
    aget-wide v1, p1, p2

    iget v4, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    int-to-double v4, v4

    sub-double v4, p3, v4

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    .line 893
    .local v1, "xk":D
    iget v4, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    move-wide v6, v1

    .end local v1    # "xk":D
    .local v4, "i":I
    .local v6, "xk":D
    :goto_0
    if-lez v4, :cond_0

    .line 894
    aput-wide v6, v3, v4

    .line 895
    aget-wide v1, p1, p2

    mul-double/2addr v6, v1

    .line 893
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 897
    .end local v4    # "i":I
    :cond_0
    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 898
    move-wide v1, p3

    .line 899
    .local v1, "coefficient":D
    const/4 v4, 0x1

    move-wide v8, v1

    .end local v1    # "coefficient":D
    .restart local v4    # "i":I
    .local v8, "coefficient":D
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v4, v1, :cond_1

    .line 900
    aget-wide v1, v3, v4

    mul-double/2addr v1, v8

    aput-wide v1, v3, v4

    .line 901
    int-to-double v1, v4

    sub-double v1, p3, v1

    mul-double/2addr v8, v1

    .line 899
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 905
    .end local v4    # "i":I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 907
    return-void
.end method

.method public pow([DII[DI)V
    .locals 9
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "n"    # I
    .param p4, "result"    # [D
    .param p5, "resultOffset"    # I

    .line 921
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-nez p3, :cond_0

    .line 923
    aput-wide v0, p4, p5

    .line 924
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    add-int/2addr v1, p5

    const-wide/16 v2, 0x0

    invoke-static {p4, v0, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    .line 925
    return-void

    .line 930
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [D

    .line 932
    .local v6, "function":[D
    if-lez p3, :cond_2

    .line 934
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    invoke-static {v0, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 935
    .local v0, "maxOrder":I
    aget-wide v1, p1, p2

    sub-int v3, p3, v0

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    .line 936
    .local v1, "xk":D
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 937
    aput-wide v1, v6, v3

    .line 938
    aget-wide v4, p1, p2

    mul-double/2addr v1, v4

    .line 936
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 940
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    aput-wide v1, v6, v3

    .line 941
    .end local v0    # "maxOrder":I
    .end local v1    # "xk":D
    goto :goto_2

    .line 943
    :cond_2
    aget-wide v2, p1, p2

    div-double/2addr v0, v2

    .line 944
    .local v0, "inv":D
    neg-int v2, p3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    .line 945
    .local v2, "xk":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v4, v5, :cond_3

    .line 946
    aput-wide v2, v6, v4

    .line 947
    mul-double/2addr v2, v0

    .line 945
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    .end local v0    # "inv":D
    .end local v2    # "xk":D
    .end local v4    # "i":I
    :cond_3
    :goto_2
    int-to-double v0, p3

    .line 952
    .local v0, "coefficient":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v2, v3, :cond_4

    .line 953
    aget-wide v3, v6, v2

    mul-double/2addr v3, v0

    aput-wide v3, v6, v2

    .line 954
    sub-int v3, p3, v2

    int-to-double v3, v3

    mul-double/2addr v0, v3

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 958
    .end local v2    # "i":I
    :cond_4
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    move v8, p5

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p4    # "result":[D
    .end local p5    # "resultOffset":I
    .local v4, "operand":[D
    .local v5, "operandOffset":I
    .local v7, "result":[D
    .local v8, "resultOffset":I
    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 960
    return-void
.end method

.method public pow([DI[DI[DI)V
    .locals 8
    .param p1, "x"    # [D
    .param p2, "xOffset"    # I
    .param p3, "y"    # [D
    .param p4, "yOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 975
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v2, v0, [D

    .line 976
    .local v2, "logX":[D
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log([DI[DI)V

    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    new-array v6, v1, [D

    .line 978
    .local v6, "yLogX":[D
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    .end local p3    # "y":[D
    .end local p4    # "yOffset":I
    .local v4, "y":[D
    .local v5, "yOffset":I
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 979
    invoke-virtual {p0, v6, v0, p5, p6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->exp([DI[DI)V

    .line 980
    return-void
.end method

.method public remainder([DI[DI[DI)V
    .locals 10
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 822
    aget-wide v0, p1, p2

    aget-wide v2, p3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v0

    .line 823
    .local v0, "rem":D
    aget-wide v2, p1, p2

    sub-double/2addr v2, v0

    aget-wide v4, p3, p4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    .line 826
    .local v2, "k":D
    aput-wide v0, p5, p6

    .line 829
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 830
    add-int v5, p6, v4

    add-int v6, p2, v4

    aget-wide v6, p1, v6

    add-int v8, p4, v4

    aget-wide v8, p3, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    aput-wide v6, p5, v5

    .line 829
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 833
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public rootN([DII[DI)V
    .locals 13
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "n"    # I
    .param p4, "result"    # [D
    .param p5, "resultOffset"    # I

    .line 996
    move/from16 v6, p3

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [D

    .line 998
    .local v3, "function":[D
    const/4 v1, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    if-ne v6, v1, :cond_0

    .line 999
    aget-wide v7, p1, p2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    aput-wide v7, v3, v2

    .line 1000
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    aget-wide v1, v3, v2

    div-double/2addr v7, v1

    .local v7, "xk":D
    goto :goto_0

    .line 1001
    .end local v7    # "xk":D
    :cond_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_1

    .line 1002
    aget-wide v7, p1, p2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v7

    aput-wide v7, v3, v2

    .line 1003
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    aget-wide v9, v3, v2

    mul-double/2addr v9, v7

    aget-wide v1, v3, v2

    mul-double/2addr v9, v1

    div-double v7, v4, v9

    .restart local v7    # "xk":D
    goto :goto_0

    .line 1005
    .end local v7    # "xk":D
    :cond_1
    aget-wide v7, p1, p2

    int-to-double v9, v6

    div-double v9, v4, v9

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    aput-wide v7, v3, v2

    .line 1006
    int-to-double v7, v6

    aget-wide v1, v3, v2

    add-int/lit8 v9, v6, -0x1

    invoke-static {v1, v2, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    mul-double/2addr v7, v1

    div-double v7, v4, v7

    .line 1008
    .restart local v7    # "xk":D
    :goto_0
    int-to-double v1, v6

    div-double v9, v4, v1

    .line 1009
    .local v9, "nReciprocal":D
    aget-wide v1, p1, p2

    div-double v11, v4, v1

    .line 1010
    .local v11, "xReciprocal":D
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v2, :cond_2

    .line 1011
    aput-wide v7, v3, v1

    .line 1012
    int-to-double v4, v1

    sub-double v4, v9, v4

    mul-double/2addr v4, v11

    mul-double/2addr v7, v4

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1016
    .end local v1    # "i":I
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1018
    return-void
.end method

.method public sin([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1181
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1182
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1183
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1184
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    .line 1185
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    .line 1186
    add-int/lit8 v1, v0, -0x2

    aget-wide v1, v5, v1

    neg-double v1, v1

    aput-wide v1, v5, v0

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    .end local v0    # "i":I
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v3, "operand":[D
    .local v4, "operandOffset":I
    .local v6, "result":[D
    .local v7, "resultOffset":I
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1193
    return-void
.end method

.method public sinh([DI[DI)V
    .locals 8
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1510
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1511
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1512
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1513
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    .line 1514
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    .line 1515
    add-int/lit8 v1, v0, -0x2

    aget-wide v1, v5, v1

    aput-wide v1, v5, v0

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1520
    .end local v0    # "i":I
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "operand":[D
    .end local p2    # "operandOffset":I
    .end local p3    # "result":[D
    .end local p4    # "resultOffset":I
    .local v3, "operand":[D
    .local v4, "operandOffset":I
    .local v6, "result":[D
    .local v7, "resultOffset":I
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1522
    return-void
.end method

.method public subtract([DI[DI[DI)V
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .line 760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 761
    add-int v1, p6, v0

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    sub-double/2addr v2, v4

    aput-wide v2, p5, v1

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public tan([DI[DI)V
    .locals 22
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1207
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1208
    .local v3, "function":[D
    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v6

    .line 1209
    .local v6, "t":D
    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1211
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1220
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-array v4, v4, [D

    .line 1221
    .local v4, "p":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v2

    .line 1222
    mul-double v8, v6, v6

    .line 1223
    .local v8, "t2":D
    const/4 v10, 0x1

    .local v10, "n":I
    :goto_0
    iget v11, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v11, :cond_4

    .line 1226
    const-wide/16 v11, 0x0

    .line 1227
    .local v11, "v":D
    add-int/lit8 v13, v10, 0x1

    int-to-double v14, v10

    aget-wide v16, v4, v10

    mul-double v14, v14, v16

    aput-wide v14, v4, v13

    .line 1228
    add-int/lit8 v13, v10, 0x1

    .local v13, "k":I
    :goto_1
    if-ltz v13, :cond_2

    .line 1229
    mul-double v14, v11, v8

    aget-wide v16, v4, v13

    add-double v11, v14, v16

    .line 1230
    if-le v13, v5, :cond_0

    .line 1231
    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v13, -0x1

    move/from16 v17, v1

    move/from16 v16, v2

    int-to-double v1, v15

    add-int/lit8 v15, v13, -0x1

    aget-wide v18, v4, v15

    mul-double v1, v1, v18

    add-int/lit8 v15, v13, -0x3

    move-wide/from16 v18, v6

    .end local v6    # "t":D
    .local v18, "t":D
    int-to-double v5, v15

    add-int/lit8 v15, v13, -0x3

    aget-wide v20, v4, v15

    mul-double v5, v5, v20

    add-double/2addr v1, v5

    aput-wide v1, v4, v14

    const/4 v7, 0x2

    goto :goto_2

    .line 1232
    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_0
    move/from16 v17, v1

    move/from16 v16, v2

    move-wide/from16 v18, v6

    .end local v6    # "t":D
    .restart local v18    # "t":D
    const/4 v7, 0x2

    if-ne v13, v7, :cond_1

    .line 1233
    aget-wide v1, v4, v16

    aput-wide v1, v4, v17

    .line 1228
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x2

    move v5, v7

    move/from16 v2, v16

    move/from16 v1, v17

    move-wide/from16 v6, v18

    goto :goto_1

    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_2
    move/from16 v17, v1

    move/from16 v16, v2

    move-wide/from16 v18, v6

    move v7, v5

    .line 1236
    .end local v6    # "t":D
    .end local v13    # "k":I
    .restart local v18    # "t":D
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_3

    .line 1237
    mul-double v11, v11, v18

    .line 1240
    :cond_3
    aput-wide v11, v3, v10

    .line 1223
    .end local v11    # "v":D
    add-int/lit8 v10, v10, 0x1

    move v5, v7

    move/from16 v2, v16

    move/from16 v1, v17

    move-wide/from16 v6, v18

    goto :goto_0

    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_4
    move-wide/from16 v18, v6

    .end local v6    # "t":D
    .restart local v18    # "t":D
    goto :goto_3

    .line 1211
    .end local v4    # "p":[D
    .end local v8    # "t2":D
    .end local v10    # "n":I
    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_5
    move-wide/from16 v18, v6

    .line 1246
    .end local v6    # "t":D
    .restart local v18    # "t":D
    :goto_3
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1248
    return-void
.end method

.method public tanh([DI[DI)V
    .locals 22
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .line 1536
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1537
    .local v3, "function":[D
    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v6

    .line 1538
    .local v6, "t":D
    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1540
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v4, :cond_5

    .line 1549
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-array v4, v4, [D

    .line 1550
    .local v4, "p":[D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v2

    .line 1551
    mul-double v8, v6, v6

    .line 1552
    .local v8, "t2":D
    const/4 v10, 0x1

    .local v10, "n":I
    :goto_0
    iget v11, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v11, :cond_4

    .line 1555
    const-wide/16 v11, 0x0

    .line 1556
    .local v11, "v":D
    add-int/lit8 v13, v10, 0x1

    neg-int v14, v10

    int-to-double v14, v14

    aget-wide v16, v4, v10

    mul-double v14, v14, v16

    aput-wide v14, v4, v13

    .line 1557
    add-int/lit8 v13, v10, 0x1

    .local v13, "k":I
    :goto_1
    if-ltz v13, :cond_2

    .line 1558
    mul-double v14, v11, v8

    aget-wide v16, v4, v13

    add-double v11, v14, v16

    .line 1559
    if-le v13, v5, :cond_0

    .line 1560
    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v13, -0x1

    move/from16 v17, v1

    move/from16 v16, v2

    int-to-double v1, v15

    add-int/lit8 v15, v13, -0x1

    aget-wide v18, v4, v15

    mul-double v1, v1, v18

    add-int/lit8 v15, v13, -0x3

    move-wide/from16 v18, v6

    .end local v6    # "t":D
    .local v18, "t":D
    int-to-double v5, v15

    add-int/lit8 v15, v13, -0x3

    aget-wide v20, v4, v15

    mul-double v5, v5, v20

    sub-double/2addr v1, v5

    aput-wide v1, v4, v14

    const/4 v7, 0x2

    goto :goto_2

    .line 1561
    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_0
    move/from16 v17, v1

    move/from16 v16, v2

    move-wide/from16 v18, v6

    .end local v6    # "t":D
    .restart local v18    # "t":D
    const/4 v7, 0x2

    if-ne v13, v7, :cond_1

    .line 1562
    aget-wide v1, v4, v16

    aput-wide v1, v4, v17

    .line 1557
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x2

    move v5, v7

    move/from16 v2, v16

    move/from16 v1, v17

    move-wide/from16 v6, v18

    goto :goto_1

    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_2
    move/from16 v17, v1

    move/from16 v16, v2

    move-wide/from16 v18, v6

    move v7, v5

    .line 1565
    .end local v6    # "t":D
    .end local v13    # "k":I
    .restart local v18    # "t":D
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_3

    .line 1566
    mul-double v11, v11, v18

    .line 1569
    :cond_3
    aput-wide v11, v3, v10

    .line 1552
    .end local v11    # "v":D
    add-int/lit8 v10, v10, 0x1

    move v5, v7

    move/from16 v2, v16

    move/from16 v1, v17

    move-wide/from16 v6, v18

    goto :goto_0

    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_4
    move-wide/from16 v18, v6

    .end local v6    # "t":D
    .restart local v18    # "t":D
    goto :goto_3

    .line 1540
    .end local v4    # "p":[D
    .end local v8    # "t2":D
    .end local v10    # "n":I
    .end local v18    # "t":D
    .restart local v6    # "t":D
    :cond_5
    move-wide/from16 v18, v6

    .line 1575
    .end local v6    # "t":D
    .restart local v18    # "t":D
    :goto_3
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1577
    return-void
.end method

.method public varargs taylor([DI[D)D
    .locals 11
    .param p1, "ds"    # [D
    .param p2, "dsOffset"    # I
    .param p3, "delta"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1786
    const-wide/16 v0, 0x0

    .line 1787
    .local v0, "value":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1788
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeOrders(I)[I

    move-result-object v3

    .line 1789
    .local v3, "orders":[I
    add-int v4, p2, v2

    aget-wide v4, p1, v4

    .line 1790
    .local v4, "term":D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 1791
    aget v7, v3, v6

    if-lez v7, :cond_0

    .line 1793
    :try_start_0
    aget-wide v7, p3, v6

    aget v9, v3, v6

    invoke-static {v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    aget v9, v3, v6

    invoke-static {v9}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v9
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v9, v9

    div-double/2addr v7, v9

    mul-double/2addr v4, v7

    .line 1798
    goto :goto_2

    .line 1795
    :catch_0
    move-exception v7

    .line 1797
    .local v7, "e":Lorg/apache/commons/math3/exception/NotPositiveException;
    new-instance v8, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v8, v7}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1790
    .end local v7    # "e":Lorg/apache/commons/math3/exception/NotPositiveException;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1801
    .end local v6    # "k":I
    :cond_1
    add-double/2addr v0, v4

    .line 1787
    .end local v3    # "orders":[I
    .end local v4    # "term":D
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1803
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method
