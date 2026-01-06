.class public Lorg/apache/commons/math3/linear/ConjugateGradient;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "ConjugateGradient.java"


# static fields
.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0
    .param p1, "maxIterations"    # I
    .param p2, "delta"    # D
    .param p4, "check"    # Z

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 108
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    .line 109
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/commons/math3/util/IterationManager;
    .param p2, "delta"    # D
    .param p4, "check"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 126
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    .line 127
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    .line 128
    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    return v0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 37
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 154
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/ConjugateGradient;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 155
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ConjugateGradient;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v10

    .line 157
    .local v10, "manager":Lorg/apache/commons/math3/util/IterationManager;
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 158
    iget-wide v2, v1, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v4

    mul-double v11, v2, v4

    .line 159
    .local v11, "rmax":D
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    .line 162
    .local v4, "bro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 166
    move-object/from16 v13, p4

    .line 167
    .local v13, "x":Lorg/apache/commons/math3/linear/RealVector;
    invoke-static {v13}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    .line 168
    .local v3, "xro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    .line 169
    .local v14, "p":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v20

    .line 171
    .local v20, "q":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object/from16 v15, p3

    invoke-virtual/range {v15 .. v20}, Lorg/apache/commons/math3/linear/RealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v21

    .line 172
    .local v21, "r":Lorg/apache/commons/math3/linear/RealVector;
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    .line 173
    .local v5, "rro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v6

    .line 175
    .local v6, "rnorm":D
    if-nez v9, :cond_0

    .line 176
    move-object/from16 v0, v21

    move-object v15, v0

    .local v0, "z":Lorg/apache/commons/math3/linear/RealVector;
    goto :goto_0

    .line 178
    .end local v0    # "z":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    const/4 v0, 0x0

    move-object v15, v0

    .line 181
    .local v15, "z":Lorg/apache/commons/math3/linear/RealVector;
    :goto_0
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-wide/from16 v27, v11

    move-object/from16 v11, v21

    .end local v21    # "r":Lorg/apache/commons/math3/linear/RealVector;
    .local v11, "r":Lorg/apache/commons/math3/linear/RealVector;
    .local v27, "rmax":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 183
    .local v0, "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 184
    cmpg-double v1, v6, v27

    if-gtz v1, :cond_1

    .line 185
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 186
    return-object v13

    .line 188
    :cond_1
    const-wide/16 v1, 0x0

    move-object v12, v0

    move-wide/from16 v29, v1

    .line 190
    .end local v0    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    .local v12, "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    .local v29, "rhoPrev":D
    :goto_1
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 191
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    move-object v12, v0

    .line 193
    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 194
    if-eqz v9, :cond_2

    .line 195
    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    .line 197
    :cond_2
    invoke-virtual {v11, v15}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v31

    .line 198
    .local v31, "rhoNext":D
    iget-boolean v0, v1, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    const-string v2, "vector"

    move/from16 v16, v0

    const-string v0, "operator"

    const-wide/16 v21, 0x0

    if-eqz v16, :cond_4

    cmpg-double v16, v31, v21

    if-lez v16, :cond_3

    move-object/from16 v33, v3

    goto :goto_2

    .line 200
    :cond_3
    new-instance v16, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct/range {v16 .. v16}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 201
    .local v16, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    move-object/from16 v33, v3

    .end local v3    # "xro":Lorg/apache/commons/math3/linear/RealVector;
    .local v33, "xro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v3

    .line 202
    .local v3, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    invoke-virtual {v3, v0, v9}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v3, v2, v11}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    throw v16

    .line 198
    .end local v16    # "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    .end local v33    # "xro":Lorg/apache/commons/math3/linear/RealVector;
    .local v3, "xro":Lorg/apache/commons/math3/linear/RealVector;
    :cond_4
    move-object/from16 v33, v3

    .line 206
    .end local v3    # "xro":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v33    # "xro":Lorg/apache/commons/math3/linear/RealVector;
    :goto_2
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v3

    move-object/from16 v34, v4

    .end local v4    # "bro":Lorg/apache/commons/math3/linear/RealVector;
    .local v34, "bro":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v14, v3, v15}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    move-object/from16 v19, v15

    goto :goto_3

    .line 209
    :cond_5
    move-object/from16 v19, v15

    .end local v15    # "z":Lorg/apache/commons/math3/linear/RealVector;
    .local v19, "z":Lorg/apache/commons/math3/linear/RealVector;
    div-double v15, v31, v29

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v14 .. v19}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    .line 211
    :goto_3
    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    .line 212
    .end local v20    # "q":Lorg/apache/commons/math3/linear/RealVector;
    .local v3, "q":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v35

    .line 213
    .local v35, "pq":D
    iget-boolean v4, v1, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    if-eqz v4, :cond_7

    cmpg-double v4, v35, v21

    if-lez v4, :cond_6

    goto :goto_4

    .line 215
    :cond_6
    new-instance v4, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v4}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 216
    .local v4, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v15

    .line 217
    .local v15, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    invoke-virtual {v15, v0, v8}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v15, v2, v14}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    throw v4

    .line 221
    .end local v4    # "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    .end local v15    # "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    :cond_7
    :goto_4
    div-double v16, v31, v35

    .line 222
    .local v16, "alpha":D
    move-object/from16 v18, v14

    .end local v14    # "p":Lorg/apache/commons/math3/linear/RealVector;
    .local v18, "p":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v13 .. v18}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    .line 223
    move-wide/from16 v8, v16

    move-object/from16 v14, v18

    .end local v16    # "alpha":D
    .end local v18    # "p":Lorg/apache/commons/math3/linear/RealVector;
    .local v8, "alpha":D
    .restart local v14    # "p":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    neg-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v21, v11

    .end local v3    # "q":Lorg/apache/commons/math3/linear/RealVector;
    .end local v11    # "r":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v21    # "r":Lorg/apache/commons/math3/linear/RealVector;
    .local v26, "q":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v21 .. v26}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    .line 224
    .end local v21    # "r":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v11    # "r":Lorg/apache/commons/math3/linear/RealVector;
    move-wide/from16 v29, v31

    .line 225
    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v6

    .line 226
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-object/from16 v1, p0

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    .end local v33    # "xro":Lorg/apache/commons/math3/linear/RealVector;
    .end local v34    # "bro":Lorg/apache/commons/math3/linear/RealVector;
    .local v3, "xro":Lorg/apache/commons/math3/linear/RealVector;
    .local v4, "bro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    move-object v12, v0

    .line 228
    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 229
    cmpg-double v0, v6, v27

    if-gtz v0, :cond_8

    .line 230
    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 231
    return-object v13

    .line 233
    .end local v8    # "alpha":D
    .end local v31    # "rhoNext":D
    .end local v35    # "pq":D
    :cond_8
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v15, v19

    move-object/from16 v20, v26

    goto/16 :goto_1
.end method
