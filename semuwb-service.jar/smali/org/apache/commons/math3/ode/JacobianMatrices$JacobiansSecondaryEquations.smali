.class Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/SecondaryEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JacobiansSecondaryEquations"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;
    .param p2, "x1"    # Lorg/apache/commons/math3/ode/JacobianMatrices$1;

    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D[D[D)V
    .locals 24
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .param p5, "z"    # [D
    .param p6, "zDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$400(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v6}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$600(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v7}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$402(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z

    .line 365
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v2, v5, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[D

    .line 366
    .local v8, "dFdY":[[D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->computeMainStateJacobian(D[D[D[[D)V

    .line 369
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 370
    aget-object v3, v8, v2

    .line 371
    .local v3, "dFdYi":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 372
    const-wide/16 v5, 0x0

    .line 373
    .local v5, "s":D
    move v7, v4

    .line 374
    .local v7, "startIndex":I
    move v9, v7

    .line 375
    .local v9, "zIndex":I
    const/4 v10, 0x0

    .local v10, "l":I
    :goto_2
    iget-object v11, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v11}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 376
    aget-wide v11, v3, v10

    aget-wide v13, p5, v9

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    .line 377
    iget-object v11, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v11}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v11

    add-int/2addr v9, v11

    .line 375
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 379
    .end local v10    # "l":I
    :cond_1
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v10

    mul-int/2addr v10, v2

    add-int/2addr v10, v7

    aput-wide v5, v1, v10

    .line 371
    .end local v5    # "s":D
    .end local v7    # "startIndex":I
    .end local v9    # "zIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 369
    .end local v3    # "dFdYi":[D
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v2    # "i":I
    :cond_3
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 385
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    new-array v15, v2, [D

    .line 386
    .local v15, "dFdP":[D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    mul-int/2addr v2, v3

    .line 387
    .local v2, "startIndex":I
    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 388
    .local v6, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    const/4 v7, 0x0

    .line 389
    .local v7, "found":Z
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4
    if-nez v7, :cond_7

    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 390
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;

    .line 391
    .local v10, "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->isSupported(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 392
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v16, v9

    move-object v9, v10

    move-wide/from16 v10, p1

    .end local v10    # "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    .local v9, "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    .local v16, "k":I
    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->computeParameterJacobian(D[D[DLjava/lang/String;[D)V

    .line 394
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v11}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 395
    aget-object v11, v8, v10

    .line 396
    .local v11, "dFdYi":[D
    move v12, v2

    .line 397
    .local v12, "zIndex":I
    aget-wide v13, v15, v10

    .line 398
    .local v13, "s":D
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v3

    move/from16 v3, v23

    .local v3, "l":I
    .local v17, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    :goto_6
    move/from16 v18, v4

    .end local v4    # "len$":I
    .local v18, "len$":I
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 399
    aget-wide v19, v11, v3

    aget-wide v21, p5, v12

    mul-double v19, v19, v21

    add-double v13, v13, v19

    .line 400
    add-int/lit8 v12, v12, 0x1

    .line 398
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v18

    goto :goto_6

    .line 402
    .end local v3    # "l":I
    :cond_4
    add-int v3, v2, v10

    aput-wide v13, v1, v3

    .line 394
    .end local v11    # "dFdYi":[D
    .end local v12    # "zIndex":I
    .end local v13    # "s":D
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_5

    .end local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v18    # "len$":I
    .local v3, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v4    # "len$":I
    :cond_5
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 404
    .end local v3    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v4    # "len$":I
    .end local v10    # "i":I
    .restart local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v18    # "len$":I
    const/4 v3, 0x1

    move v7, v3

    .end local v7    # "found":Z
    .local v3, "found":Z
    goto :goto_7

    .line 391
    .end local v16    # "k":I
    .end local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v18    # "len$":I
    .local v3, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v4    # "len$":I
    .restart local v7    # "found":Z
    .local v9, "k":I
    .local v10, "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    :cond_6
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v9

    move-object v9, v10

    .line 389
    .end local v3    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v4    # "len$":I
    .end local v9    # "k":I
    .end local v10    # "provider":Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
    .restart local v16    # "k":I
    .restart local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v18    # "len$":I
    :goto_7
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    .end local v16    # "k":I
    .restart local v9    # "k":I
    goto/16 :goto_4

    .end local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v18    # "len$":I
    .restart local v3    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v4    # "len$":I
    :cond_7
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v9

    .line 407
    .end local v3    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v4    # "len$":I
    .end local v9    # "k":I
    .restart local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v18    # "len$":I
    if-nez v7, :cond_8

    .line 408
    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int/2addr v3, v2

    const-wide/16 v9, 0x0

    invoke-static {v1, v2, v3, v9, v10}, Ljava/util/Arrays;->fill([DIID)V

    .line 410
    :cond_8
    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int/2addr v2, v3

    .line 387
    .end local v6    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v7    # "found":Z
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_3

    .end local v17    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v18    # "len$":I
    .restart local v3    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .restart local v4    # "len$":I
    :cond_9
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 414
    .end local v2    # "startIndex":I
    .end local v3    # "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v15    # "dFdP":[D
    :cond_a
    return-void
.end method

.method public getDimension()I
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
