.class public abstract Lorg/apache/commons/math3/ode/AbstractIntegrator;
.super Ljava/lang/Object;
.source "AbstractIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderIntegrator;


# instance fields
.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/EventState;",
            ">;"
        }
    .end annotation
.end field

.field private transient expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field protected isLastStep:Z

.field private final name:Ljava/lang/String;

.field protected resetOccurred:Z

.field private statesInitialized:Z

.field protected stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected stepSize:D

.field protected stepStart:D


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    .line 86
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 87
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 90
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 91
    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
    .locals 21
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .param p2, "y"    # [D
    .param p3, "yDot"    # [D
    .param p4, "tEnd"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v3

    .line 328
    .local v3, "previousT":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalCurrentTime()D

    move-result-wide v5

    .line 331
    .local v5, "currentT":D
    iget-boolean v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 332
    iget-object v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ode/events/EventState;

    .line 333
    .local v9, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/ode/events/EventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    .line 334
    .end local v9    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    goto :goto_0

    .line 335
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 339
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->isForward()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    .line 340
    .local v7, "orderingSign":I
    :goto_1
    new-instance v9, Ljava/util/TreeSet;

    new-instance v10, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 349
    .local v9, "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    iget-object v10, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ode/events/EventState;

    .line 350
    .local v11, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 352
    invoke-interface {v9, v11}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v11    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_3
    goto :goto_2

    .line 356
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 359
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 360
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/events/EventState;

    .line 361
    .local v12, "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 364
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v13

    .line 365
    .local v13, "eventT":D
    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 366
    invoke-virtual {v1, v13, v14}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 369
    invoke-virtual {v1, v13, v14}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 370
    array-length v15, v2

    new-array v15, v15, [D

    .line 371
    .local v15, "eventYComplete":[D
    iget-object v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v11

    invoke-virtual {v8, v11, v15}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 373
    const/4 v8, 0x0

    .line 374
    .local v8, "index":I
    iget-object v11, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v11

    move-wide/from16 v17, v3

    .end local v3    # "previousT":D
    .local v11, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v17, "previousT":D
    array-length v3, v11

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v3, :cond_5

    move/from16 v19, v3

    .end local v3    # "len$":I
    .local v19, "len$":I
    aget-object v3, v11, v4

    .line 375
    .local v3, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v20, v8, 0x1

    .end local v8    # "index":I
    .local v20, "index":I
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v8

    invoke-virtual {v3, v8, v15}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 374
    .end local v3    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v19

    move/from16 v8, v20

    goto :goto_4

    .end local v19    # "len$":I
    .end local v20    # "index":I
    .local v3, "len$":I
    .restart local v8    # "index":I
    :cond_5
    move/from16 v19, v3

    .line 380
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v11    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    iget-object v3, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/events/EventState;

    .line 381
    .local v4, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v4, v13, v14, v15}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 382
    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v11, :cond_7

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v11, 0x1

    :goto_7
    iput-boolean v11, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    .line 383
    .end local v4    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    goto :goto_5

    .line 386
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v3, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 387
    .local v4, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    invoke-interface {v4, v1, v11}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    .line 388
    .end local v4    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    goto :goto_8

    .line 390
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v3, :cond_a

    .line 392
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v15, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    return-wide v13

    .line 396
    :cond_a
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 397
    .local v3, "needReset":Z
    iput-boolean v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    .line 398
    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/commons/math3/ode/events/EventState;->reset(D[D)Z

    move-result v3

    .line 399
    if-eqz v3, :cond_b

    .line 402
    invoke-virtual {v1, v13, v14}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 403
    array-length v11, v2

    invoke-static {v15, v4, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    move-object/from16 v11, p3

    invoke-virtual {v0, v13, v14, v2, v11}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 405
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    .line 406
    return-wide v13

    .line 410
    :cond_b
    move-object/from16 v11, p3

    move-wide/from16 v16, v13

    .line 411
    .end local v17    # "previousT":D
    .local v16, "previousT":D
    invoke-virtual {v1, v13, v14}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 412
    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 415
    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 417
    invoke-interface {v9, v12}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v3    # "needReset":Z
    .end local v8    # "index":I
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v12    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v13    # "eventT":D
    .end local v15    # "eventYComplete":[D
    :cond_c
    move-wide/from16 v3, v16

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 423
    .end local v16    # "previousT":D
    .local v3, "previousT":D
    :cond_d
    move-object/from16 v11, p3

    move-wide/from16 v17, v3

    const/4 v4, 0x0

    .end local v3    # "previousT":D
    .restart local v17    # "previousT":D
    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 424
    array-length v3, v2

    new-array v3, v3, [D

    .line 425
    .local v3, "currentY":[D
    iget-object v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v10

    invoke-virtual {v8, v10, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 427
    const/4 v8, 0x0

    .line 428
    .restart local v8    # "index":I
    iget-object v10, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v10

    .local v10, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_9
    if-ge v13, v12, :cond_e

    aget-object v14, v10, v13

    .line 429
    .local v14, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "index":I
    .local v15, "index":I
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v8

    invoke-virtual {v14, v8, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 428
    .end local v14    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v13, v13, 0x1

    move v8, v15

    goto :goto_9

    .line 432
    .end local v10    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    .end local v15    # "index":I
    .restart local v8    # "index":I
    :cond_e
    iget-object v10, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/events/EventState;

    .line 433
    .local v12, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v12, v5, v6, v3}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 434
    iget-boolean v13, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v13, :cond_10

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_b

    :cond_f
    move v13, v4

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v13, 0x1

    :goto_c
    iput-boolean v13, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    .line 435
    .end local v12    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    goto :goto_a

    .line 436
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_11
    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v10, :cond_13

    move-wide/from16 v12, p4

    const/4 v10, 0x1

    invoke-static {v5, v6, v12, v13, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_d

    :cond_12
    move v10, v4

    goto :goto_d

    :cond_13
    move-wide/from16 v12, p4

    const/4 v10, 0x1

    :goto_d
    iput-boolean v10, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    .line 439
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 440
    .local v10, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    iget-boolean v14, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    invoke-interface {v10, v1, v14}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    .line 441
    .end local v10    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    goto :goto_e

    .line 443
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_14
    return-wide v5
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDI)V
    .locals 8
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I

    .line 124
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;

    const/4 v0, 0x5

    invoke-direct {v7, p4, p5, v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .end local p1    # "handler":Lorg/apache/commons/math3/ode/events/EventHandler;
    .end local p2    # "maxCheckInterval":D
    .end local p4    # "convergence":D
    .end local p6    # "maxIterationCount":I
    .local v1, "handler":Lorg/apache/commons/math3/ode/events/EventHandler;
    .local v2, "maxCheckInterval":D
    .local v4, "convergence":D
    .local v6, "maxIterationCount":I
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 127
    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 9
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/math3/ode/events/EventState;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/ode/events/EventState;-><init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 151
    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 117
    return-void
.end method

.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 296
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->computeDerivatives(D[D[D)V

    .line 297
    return-void
.end method

.method protected getCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-object v0
.end method

.method public getCurrentSignedStepsize()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    return-wide v0
.end method

.method public getCurrentStepStart()D
    .locals 2

    .line 155
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-static {v0}, Lorg/apache/commons/math3/util/Incrementor;->wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/EventHandler;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ode/events/EventHandler;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/EventState;

    .line 143
    .local v2, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    goto :goto_0

    .line 145
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method protected getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected initIntegration(D[DD)V
    .locals 11
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/EventState;

    .line 188
    .local v2, "state":Lorg/apache/commons/math3/ode/events/EventState;
    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/ode/events/EventState;->setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 189
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v4

    move-wide v5, p1

    move-object v7, p3

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    .line 190
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    goto :goto_0

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 193
    .local v5, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-wide v6, p1

    move-object v8, p3

    move-wide v9, p4

    invoke-interface/range {v5 .. v10}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->init(D[DD)V

    .line 194
    .end local v5    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    goto :goto_1

    .line 196
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 198
    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 4
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "t0"    # D
    .param p4, "y0"    # [D
    .param p5, "t"    # D
    .param p7, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 239
    array-length v0, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 242
    array-length v0, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 247
    new-instance v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V

    .line 248
    .local v0, "expandableODE":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 249
    invoke-virtual {v0, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setPrimaryState([D)V

    .line 252
    invoke-virtual {p0, v0, p5, p6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 255
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryState()[D

    move-result-object v1

    array-length v2, p7

    const/4 v3, 0x0

    invoke-static {v1, v3, p7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    return-wide v1

    .line 243
    .end local v0    # "expandableODE":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 240
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 9
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 457
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    .line 459
    .local v0, "threshold":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    sub-double/2addr v2, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 460
    .local v2, "dt":D
    cmpg-double v4, v2, v0

    if-lez v4, :cond_0

    .line 465
    return-void

    .line 461
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_INTEGRATION_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method protected setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 204
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 205
    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 2
    .param p1, "maxEvaluations"    # I

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 166
    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0
    .param p1, "stateInitialized"    # Z

    .line 307
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 308
    return-void
.end method
