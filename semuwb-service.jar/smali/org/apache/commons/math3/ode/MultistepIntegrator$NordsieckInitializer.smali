.class Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;
.super Ljava/lang/Object;
.source "MultistepIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NordsieckInitializer"
.end annotation


# instance fields
.field private count:I

.field private final t:[D

.field final synthetic this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

.field private final y:[[D

.field private final yDot:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V
    .locals 4
    .param p2, "nbStartPoints"    # I
    .param p3, "n"    # I

    .line 372
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    .line 374
    new-array v0, p2, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    .line 375
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    aput p2, v1, p1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    .line 376
    new-array v0, v0, [I

    aput p3, v0, v2

    aput p2, v0, p1

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    .line 377
    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 17
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v2

    .line 384
    .local v2, "prev":D
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v4

    .line 386
    .local v4, "curr":D
    iget v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 388
    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 389
    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    aput-wide v2, v6, v7

    .line 390
    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v6

    .line 391
    .local v6, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v8

    .line 392
    .local v8, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v9

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v11, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 393
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v9

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v11, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 394
    const/4 v9, 0x0

    .line 395
    .local v9, "index":I
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v10

    .local v10, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v11, v10

    .local v11, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    .line 396
    .local v13, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface {v1, v9}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v14

    iget-object v15, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    move/from16 v16, v7

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v7, v15, v7

    invoke-virtual {v13, v14, v7}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 397
    invoke-interface {v1, v9}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v7

    iget-object v14, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v15, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v7, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 398
    nop

    .end local v13    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v9, v9, 0x1

    .line 395
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v16

    goto :goto_0

    :cond_0
    move/from16 v16, v7

    goto :goto_1

    .line 386
    .end local v6    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v8    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v9    # "index":I
    .end local v10    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_1
    move/from16 v16, v7

    .line 403
    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    .line 404
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 405
    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    iget v7, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aput-wide v4, v6, v7

    .line 407
    iget-object v6, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v6

    .line 408
    .restart local v6    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v7

    .line 409
    .local v7, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 410
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 411
    const/4 v8, 0x0

    .line 412
    .local v8, "index":I
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    .local v9, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v10, v9

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v10, :cond_2

    aget-object v12, v9, v11

    .line 413
    .local v12, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-interface {v1, v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v13

    iget-object v14, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v15, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v14, v14, v15

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 414
    invoke-interface {v1, v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v13

    iget-object v14, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v15, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v14, v14, v15

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 415
    nop

    .end local v12    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v8, v8, 0x1

    .line 412
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 418
    .end local v9    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    :cond_2
    iget v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_4

    .line 421
    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    aget-wide v10, v10, v16

    iput-wide v10, v9, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepStart:D

    .line 422
    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    iget-object v12, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    aget-wide v12, v12, v16

    sub-double/2addr v10, v12

    iget-object v12, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    int-to-double v12, v12

    div-double/2addr v10, v12

    iput-wide v10, v9, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    .line 425
    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    aget-object v10, v10, v16

    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    iput-object v10, v9, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    .line 426
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v10, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 427
    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v10, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    aget-wide v11, v10, v9

    iget-object v13, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-wide v13, v13, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    mul-double/2addr v11, v13

    aput-wide v11, v10, v9

    .line 426
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 431
    .end local v9    # "j":I
    :cond_3
    iget-object v9, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-wide v11, v11, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    iget-object v13, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    iget-object v14, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget-object v15, v0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v10

    iput-object v10, v9, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 434
    new-instance v9, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;

    invoke-direct {v9}, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;-><init>()V

    throw v9

    .line 438
    :cond_4
    return-void
.end method

.method public init(D[DD)V
    .locals 0
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "time"    # D

    .line 443
    return-void
.end method
