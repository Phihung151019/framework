.class public abstract Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.super Ljava/lang/Object;
.source "AbstractFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNCTION_VALUE_ACCURACY:D = 1.0E-15

.field private static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-14


# instance fields
.field private transient equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;"
        }
    .end annotation
.end field

.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/FieldEventState<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private isLastStep:Z

.field private final name:Ljava/lang/String;

.field private resetOccurred:Z

.field private statesInitialized:Z

.field private stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private stepSize:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    .line 97
    iput-object p2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->name:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 100
    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 103
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 104
    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
            "TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    .local p2, "tEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 285
    .local v2, "previousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    .line 288
    .local v3, "currentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 289
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 290
    .local v6, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V

    .line 291
    .end local v6    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    goto :goto_0

    .line 292
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    iput-boolean v5, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 296
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->isForward()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    .line 297
    .local v4, "orderingSign":I
    :goto_1
    new-instance v6, Ljava/util/TreeSet;

    new-instance v7, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;

    invoke-direct {v7, v0, v4}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;I)V

    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 306
    .local v6, "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    iget-object v7, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 307
    .local v8, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 309
    invoke-interface {v6, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v8    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_3
    goto :goto_2

    .line 313
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v7, p1

    .line 314
    .local v7, "restricted":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    :goto_3
    invoke-interface {v6}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_d

    .line 317
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 318
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 319
    .local v10, "currentEvent":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 322
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    .line 325
    .local v11, "eventState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v7, v2, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object v7

    .line 328
    iget-object v12, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 329
    .local v13, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v13, v11}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 330
    iget-boolean v14, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stop()Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    move v14, v9

    goto :goto_6

    :cond_6
    :goto_5
    move v14, v5

    :goto_6
    iput-boolean v14, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 331
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    goto :goto_4

    .line 334
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v12, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 335
    .local v13, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    iget-boolean v14, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    invoke-interface {v13, v7, v14}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V

    .line 336
    .end local v13    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    goto :goto_7

    .line 338
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-boolean v12, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-eqz v12, :cond_9

    .line 340
    return-object v11

    .line 343
    :cond_9
    const/4 v12, 0x0

    .line 344
    .local v12, "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    iput-boolean v9, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    .line 345
    iget-object v9, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 346
    .local v13, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v13, v11}, Lorg/apache/commons/math3/ode/events/FieldEventState;->reset(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;

    move-result-object v12

    .line 347
    if-eqz v12, :cond_a

    .line 350
    iget-object v14, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {v14}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v14

    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 351
    .local v14, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15, v14}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    .line 352
    .local v15, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iput-boolean v5, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    .line 353
    iget-object v5, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v5, v1, v14, v15}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapStateAndDerivative(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    return-object v1

    .line 355
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .end local v14    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_a
    move-object/from16 v1, p1

    goto :goto_8

    .line 358
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_b
    move-object v2, v11

    .line 359
    invoke-virtual {v7, v11, v3}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object v7

    .line 362
    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 364
    invoke-interface {v6, v10}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    .end local v10    # "currentEvent":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .end local v11    # "eventState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v12    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_c
    move-object/from16 v1, p1

    goto/16 :goto_3

    .line 370
    :cond_d
    iget-object v1, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 371
    .local v8, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 372
    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-nez v10, :cond_f

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stop()Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_a

    :cond_e
    move v10, v9

    goto :goto_b

    :cond_f
    :goto_a
    move v10, v5

    :goto_b
    iput-boolean v10, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 373
    .end local v8    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    goto :goto_9

    .line 374
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_10
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-nez v1, :cond_12

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v12

    cmpg-double v1, v10, v12

    if-gtz v1, :cond_11

    goto :goto_c

    :cond_11
    move v5, v9

    goto :goto_c

    :cond_12
    move-object/from16 v8, p2

    :goto_c
    iput-boolean v5, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 377
    iget-object v1, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 378
    .local v5, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    iget-boolean v9, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    invoke-interface {v5, v7, v9}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V

    .line 379
    .end local v5    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    goto :goto_d

    .line 381
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_13
    return-object v3
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDI)V
    .locals 8
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;DDI)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x5

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .end local p1    # "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .end local p2    # "maxCheckInterval":D
    .end local p4    # "convergence":D
    .end local p6    # "maxIterationCount":I
    .local v1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .local v2, "maxCheckInterval":D
    .local v4, "convergence":D
    .local v6, "maxIterationCount":I
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V

    .line 144
    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V
    .locals 8
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;DDI",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
            "TT;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .local p7, "solver":Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/math3/ode/events/FieldEventState;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v2, p1

    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    .end local p1    # "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .end local p2    # "maxCheckInterval":D
    .end local p6    # "maxIterationCount":I
    .end local p7    # "solver":Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<TT;>;"
    .local v2, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .local v3, "maxCheckInterval":D
    .local v6, "maxIterationCount":I
    .local v7, "solver":Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<TT;>;"
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ode/events/FieldEventState;-><init>(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DLorg/apache/commons/math3/RealFieldElement;ILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .line 167
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 168
    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .line 130
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 131
    return-void
.end method

.method public computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSignedStepsize()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getCurrentStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method protected getEquations()Lorg/apache/commons/math3/ode/FieldExpandableODE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 192
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 1

    .line 242
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 160
    .local v2, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    goto :goto_0

    .line 162
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 187
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
            "TT;>;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getStepSize()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method protected getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method protected initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;TT;[TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "eqn":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 209
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 212
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 213
    .local v0, "y0Dot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-instance v2, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v2, p2, p3, v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 216
    .local v2, "state0":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 217
    .local v4, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v5

    invoke-interface {v5, v2, p4}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 218
    .end local v4    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    goto :goto_0

    .line 221
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 222
    .local v4, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    invoke-interface {v4, v2, p4}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 223
    .end local v4    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    goto :goto_1

    .line 225
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStateInitialized(Z)V

    .line 227
    return-object v2
.end method

.method protected isLastStep()Z
    .locals 1

    .line 450
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    return v0
.end method

.method protected resetOccurred()Z
    .locals 1

    .line 409
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    return v0
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 395
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "eqn":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p2, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    .line 397
    .local v0, "threshold":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    .line 398
    .local v2, "dt":D
    cmpg-double v4, v2, v0

    if-lez v4, :cond_0

    .line 403
    return-void

    .line 399
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

.method protected setIsLastStep(Z)V
    .locals 0
    .param p1, "isLastStep"    # Z

    .line 443
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 444
    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 2
    .param p1, "maxEvaluations"    # I

    .line 182
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 183
    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0
    .param p1, "stateInitialized"    # Z

    .line 268
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 269
    return-void
.end method

.method protected setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 416
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "stepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    .line 417
    return-void
.end method

.method protected setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)V"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 430
    return-void
.end method
