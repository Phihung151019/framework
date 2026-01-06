.class Lorg/apache/commons/math3/optim/linear/SimplexTableau;
.super Ljava/lang/Object;
.source "SimplexTableau.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NEGATIVE_VAR_COLUMN_LABEL:Ljava/lang/String; = "x-"

.field private static final serialVersionUID:J = -0x130202931f9dd83dL


# instance fields
.field private basicRows:[I

.field private basicVariables:[I

.field private final columnLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final constraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private final epsilon:D

.field private final f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

.field private final maxUlps:I

.field private numArtificialVariables:I

.field private final numDecisionVariables:I

.field private final numSlackVariables:I

.field private final restrictToNonNegative:Z

.field private transient tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZD)V
    .locals 8
    .param p1, "f"    # Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .param p4, "restrictToNonNegative"    # Z
    .param p5, "epsilon"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;",
            "ZD)V"
        }
    .end annotation

    .line 121
    .local p2, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    const/16 v7, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    .end local p1    # "f":Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .end local p2    # "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    .end local p3    # "goalType":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .end local p4    # "restrictToNonNegative":Z
    .end local p5    # "epsilon":D
    .local v1, "f":Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .local v2, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    .local v3, "goalType":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .local v4, "restrictToNonNegative":Z
    .local v5, "epsilon":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZDI)V

    .line 122
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZDI)V
    .locals 2
    .param p1, "f"    # Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .param p4, "restrictToNonNegative"    # Z
    .param p5, "epsilon"    # D
    .param p7, "maxUlps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;",
            "ZDI)V"
        }
    .end annotation

    .line 138
    .local p2, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    .line 140
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->normalizeConstraints(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    .line 141
    iput-boolean p4, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    .line 142
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->epsilon:D

    .line 143
    iput p7, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->maxUlps:I

    .line 144
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    xor-int/lit8 v1, p4, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    .line 145
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optim/linear/Relationship;)I

    move-result v0

    sget-object v1, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optim/linear/Relationship;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    .line 147
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optim/linear/Relationship;)I

    move-result v0

    sget-object v1, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optim/linear/Relationship;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    .line 149
    sget-object v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MAXIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->createTableau(Z)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->initializeBasicVariables(I)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->initializeColumnLabels()V

    .line 154
    return-void
.end method

.method private copyArray([D[D)V
    .locals 3
    .param p1, "src"    # [D
    .param p2, "dest"    # [D

    .line 421
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    return-void
.end method

.method private findBasicRow(I)Ljava/lang/Integer;
    .locals 7
    .param p1, "col"    # I

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "row":Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 356
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 357
    .local v2, "entry":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->maxUlps:I

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 359
    :cond_0
    const-wide/16 v4, 0x0

    iget v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->maxUlps:I

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-nez v4, :cond_1

    .line 360
    const/4 v4, 0x0

    return-object v4

    .line 355
    .end local v2    # "entry":D
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private getConstraintTypeCounts(Lorg/apache/commons/math3/optim/linear/Relationship;)I
    .locals 4
    .param p1, "relationship"    # Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .line 290
    .local v2, "constraint":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 291
    add-int/lit8 v0, v0, 0x1

    .line 293
    .end local v2    # "constraint":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    :cond_0
    goto :goto_0

    .line 294
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method protected static getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 7
    .param p0, "coefficients"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 303
    const-wide/16 v0, 0x0

    .line 304
    .local v0, "sum":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    .local v2, "arr$":[D
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 305
    .local v5, "coefficient":D
    sub-double/2addr v0, v5

    .line 304
    .end local v5    # "coefficient":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "arr$":[D
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-wide v0
.end method

.method private initializeBasicVariables(I)V
    .locals 4
    .param p1, "startColumn"    # I

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicVariables:[I

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicRows:[I

    .line 337
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicVariables:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 339
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 340
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->findBasicRow(I)Ljava/lang/Integer;

    move-result-object v1

    .line 341
    .local v1, "row":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 342
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicVariables:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 343
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicRows:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v0, v2, v3

    .line 339
    .end local v1    # "row":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private normalize(Lorg/apache/commons/math3/optim/linear/LinearConstraint;)Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    .locals 7
    .param p1, "constraint"    # Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .line 265
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 266
    new-instance v0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/linear/Relationship;->oppositeRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getValue()D

    move-result-wide v5

    mul-double/2addr v5, v2

    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/linear/Relationship;D)V

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/linear/Relationship;D)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 711
    const-string v0, "tableau"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealMatrix(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    .line 712
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 699
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/io/ObjectOutputStream;)V

    .line 700
    return-void
.end method


# virtual methods
.method protected createTableau(Z)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 20
    .param p1, "maximize"    # Z

    .line 187
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    iget v2, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 189
    .local v1, "width":I
    iget-object v3, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v4

    add-int/2addr v3, v4

    .line 190
    .local v3, "height":I
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 193
    .local v4, "matrix":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v5

    const/4 v6, 0x2

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const/4 v9, 0x0

    if-ne v5, v6, :cond_0

    .line 194
    invoke-virtual {v4, v9, v9, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 197
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v9

    goto :goto_0

    :cond_1
    move v5, v2

    .line 198
    .local v5, "zIndex":I
    :goto_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_2

    move-wide v12, v10

    goto :goto_1

    :cond_2
    move-wide v12, v7

    :goto_1
    invoke-virtual {v4, v5, v5, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 199
    iget-object v6, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    if-eqz p1, :cond_3

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    .line 200
    .local v6, "objectiveCoefficients":Lorg/apache/commons/math3/linear/RealVector;
    :cond_3
    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v12

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v13

    aget-object v13, v13, v5

    invoke-direct {v0, v12, v13}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->copyArray([D[D)V

    .line 201
    add-int/lit8 v12, v1, -0x1

    iget-object v13, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    invoke-virtual {v13}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->getConstantTerm()D

    move-result-wide v13

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    mul-double/2addr v13, v7

    :goto_2
    invoke-virtual {v4, v5, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 203
    iget-boolean v12, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v12, :cond_5

    .line 204
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-static {v6}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v13

    invoke-virtual {v4, v5, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 209
    :cond_5
    const/4 v12, 0x0

    .line 210
    .local v12, "slackVar":I
    const/4 v13, 0x0

    .line 211
    .local v13, "artificialVar":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    iget-object v15, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_b

    .line 212
    iget-object v15, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .line 213
    .local v15, "constraint":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v16

    move/from16 v17, v2

    add-int v2, v16, v14

    .line 216
    .local v2, "row":I
    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v9

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v16

    aget-object v7, v16, v2

    invoke-direct {v0, v9, v7}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->copyArray([D[D)V

    .line 219
    iget-boolean v7, v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v7, :cond_6

    .line 220
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v8

    invoke-virtual {v4, v2, v7, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 225
    :cond_6
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getValue()D

    move-result-wide v8

    invoke-virtual {v4, v2, v7, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 228
    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v7

    sget-object v8, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    if-ne v7, v8, :cond_7

    .line 229
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v7

    add-int/lit8 v8, v12, 0x1

    .end local v12    # "slackVar":I
    .local v8, "slackVar":I
    add-int/2addr v7, v12

    invoke-virtual {v4, v2, v7, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v12, v8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    goto :goto_4

    .line 230
    .end local v8    # "slackVar":I
    .restart local v12    # "slackVar":I
    :cond_7
    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v7

    sget-object v8, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    if-ne v7, v8, :cond_8

    .line 231
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v7

    add-int/lit8 v8, v12, 0x1

    .end local v12    # "slackVar":I
    .restart local v8    # "slackVar":I
    add-int/2addr v7, v12

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v2, v7, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v12, v8

    goto :goto_4

    .line 230
    .end local v8    # "slackVar":I
    .restart local v12    # "slackVar":I
    :cond_8
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 235
    :goto_4
    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v7

    sget-object v8, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    if-eq v7, v8, :cond_a

    invoke-virtual {v15}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;

    move-result-object v7

    sget-object v8, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    if-ne v7, v8, :cond_9

    goto :goto_5

    :cond_9
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    goto :goto_6

    .line 237
    :cond_a
    :goto_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v7

    add-int/2addr v7, v13

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v7, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 238
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v7

    add-int/lit8 v11, v13, 0x1

    .end local v13    # "artificialVar":I
    .local v11, "artificialVar":I
    add-int/2addr v7, v13

    invoke-virtual {v4, v2, v7, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 239
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-virtual {v4, v10, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    move v13, v11

    .line 211
    .end local v2    # "row":I
    .end local v11    # "artificialVar":I
    .end local v15    # "constraint":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    .restart local v13    # "artificialVar":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v18, v8

    move v9, v10

    move-wide/from16 v10, v18

    move/from16 v2, v17

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    goto/16 :goto_3

    .line 243
    .end local v14    # "i":I
    :cond_b
    return-object v4
.end method

.method protected divideRow(ID)V
    .locals 4
    .param p1, "dividendRowIndex"    # I
    .param p2, "divisor"    # D

    .line 515
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRow(I)[D

    move-result-object v0

    .line 516
    .local v0, "dividendRow":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 517
    aget-wide v2, v0, v1

    div-double/2addr v2, p2

    aput-wide v2, v0, v1

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method protected dropPhase1Objective()V
    .locals 11

    .line 371
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 376
    .local v0, "columnsToDrop":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 380
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v5

    .line 381
    .local v5, "entry":D
    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->epsilon:D

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-lez v4, :cond_1

    .line 382
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v5    # "entry":D
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v4

    add-int/2addr v4, v3

    .line 389
    .local v4, "col":I
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 390
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v4    # "col":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 394
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v1

    aput v3, v5, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 395
    .local v3, "matrix":[[D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 396
    const/4 v5, 0x0

    .line 397
    .local v5, "col":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 398
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 399
    add-int/lit8 v7, v4, -0x1

    aget-object v7, v3, v7

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "col":I
    .local v8, "col":I
    invoke-virtual {p0, v4, v6}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v9

    aput-wide v9, v7, v5

    move v5, v8

    .line 397
    .end local v8    # "col":I
    .restart local v5    # "col":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 395
    .end local v5    # "col":I
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 405
    .end local v4    # "i":I
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 406
    .local v4, "drop":[Ljava/lang/Integer;
    array-length v5, v4

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_4
    if-ltz v5, :cond_8

    .line 407
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 406
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 410
    .end local v5    # "i":I
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 411
    iput v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    .line 413
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->initializeBasicVariables(I)V

    .line 414
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 658
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 659
    return v0

    .line 662
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 663
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    .line 664
    .local v1, "rhs":Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    iget-boolean v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    iget-boolean v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    iget v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    iget v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    iget v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->epsilon:D

    iget-wide v5, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->epsilon:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    iget v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->maxUlps:I

    iget v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->maxUlps:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    iget-object v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    iget-object v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v4, v1, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 674
    .end local v1    # "rhs":Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    :cond_2
    return v2
.end method

.method protected final getArtificialVariableOffset()I
    .locals 2

    .line 588
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getBasicRow(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "col"    # I

    .line 316
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicVariables:[I

    aget v0, v0, p1

    .line 317
    .local v0, "row":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected getBasicVariable(I)I
    .locals 1
    .param p1, "row"    # I

    .line 326
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicRows:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final getData()[[D
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method protected final getEntry(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 562
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v0

    return-wide v0
.end method

.method protected final getHeight()I
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    return v0
.end method

.method protected final getNumArtificialVariables()I
    .locals 1

    .line 634
    iget v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    return v0
.end method

.method protected final getNumDecisionVariables()I
    .locals 1

    .line 609
    iget v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    return v0
.end method

.method protected final getNumObjectiveFunctions()I
    .locals 1

    .line 279
    iget v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected final getNumSlackVariables()I
    .locals 1

    .line 626
    iget v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    return v0
.end method

.method protected final getOriginalNumDecisionVariables()I
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method protected final getRhsOffset()I
    .locals 1

    .line 596
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final getRow(I)[D
    .locals 1
    .param p1, "row"    # I

    .line 643
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final getSlackVariableOffset()I
    .locals 2

    .line 580
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSolution()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 15

    .line 445
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "x-"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 446
    .local v0, "negativeVarColumn":I
    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 447
    .local v1, "negativeVarBasicRow":Ljava/lang/Integer;
    :goto_0
    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 449
    .local v4, "mostNegative":D
    :goto_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 450
    .local v6, "usedBasicRows":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getOriginalNumDecisionVariables()I

    move-result v7

    new-array v7, v7, [D

    .line 451
    .local v7, "coefficients":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_8

    .line 452
    iget-object v9, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 453
    .local v9, "colIndex":I
    if-gez v9, :cond_2

    .line 454
    aput-wide v2, v7, v8

    .line 455
    goto :goto_6

    .line 457
    :cond_2
    invoke-virtual {p0, v9}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v10

    .line 458
    .local v10, "basicRow":Ljava/lang/Integer;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_3

    .line 462
    aput-wide v2, v7, v8

    goto :goto_6

    .line 463
    :cond_3
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 466
    iget-boolean v11, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    if-eqz v11, :cond_4

    move-wide v11, v2

    goto :goto_3

    :cond_4
    move-wide v11, v4

    :goto_3
    sub-double v11, v2, v11

    aput-wide v11, v7, v8

    goto :goto_6

    .line 468
    :cond_5
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    if-nez v10, :cond_6

    move-wide v11, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v11

    :goto_4
    iget-boolean v13, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    if-eqz v13, :cond_7

    move-wide v13, v2

    goto :goto_5

    :cond_7
    move-wide v13, v4

    :goto_5
    sub-double/2addr v11, v13

    aput-wide v11, v7, v8

    .line 451
    .end local v9    # "colIndex":I
    .end local v10    # "basicRow":Ljava/lang/Integer;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 474
    .end local v8    # "i":I
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->value([D)D

    move-result-wide v8

    invoke-direct {v2, v7, v8, v9}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    return-object v2
.end method

.method protected final getWidth()I
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 680
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numDecisionVariables:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numSlackVariables:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->numArtificialVariables:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->epsilon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->maxUlps:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected initializeColumnLabels()V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "Z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getOriginalNumDecisionVariables()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "x-"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumSlackVariables()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 171
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 174
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 176
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "RHS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method isOptimal()Z
    .locals 10

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRow(I)[D

    move-result-object v1

    .line 430
    .local v1, "objectiveFunctionRow":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v2

    .line 431
    .local v2, "end":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 432
    aget-wide v4, v1, v3

    .line 433
    .local v4, "entry":D
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->epsilon:D

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v6

    if-gez v6, :cond_0

    .line 434
    return v0

    .line 431
    .end local v4    # "entry":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public normalizeConstraints(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .line 252
    .local p1, "originalConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v0, "normalized":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .line 254
    .local v2, "constraint":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->normalize(Lorg/apache/commons/math3/optim/linear/LinearConstraint;)Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v2    # "constraint":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    goto :goto_0

    .line 256
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method protected performRowOperations(II)V
    .locals 7
    .param p1, "pivotCol"    # I
    .param p2, "pivotRow"    # I

    .line 485
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    .line 486
    .local v0, "pivotVal":D
    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->divideRow(ID)V

    .line 489
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 490
    if-eq v2, p2, :cond_0

    .line 491
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v3

    .line 492
    .local v3, "multiplier":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    .line 493
    invoke-virtual {p0, v2, p2, v3, v4}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->subtractRow(IID)V

    .line 489
    .end local v3    # "multiplier":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicVariable(I)I

    move-result v2

    .line 500
    .local v2, "previousBasicVariable":I
    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicVariables:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 501
    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicVariables:[I

    aput p2, v3, p1

    .line 502
    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->basicRows:[I

    aput p1, v3, p2

    .line 503
    return-void
.end method

.method protected final setEntry(IID)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D

    .line 572
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 573
    return-void
.end method

.method protected subtractRow(IID)V
    .locals 7
    .param p1, "minuendRowIndex"    # I
    .param p2, "subtrahendRowIndex"    # I
    .param p3, "multiplier"    # D

    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRow(I)[D

    move-result-object v0

    .line 533
    .local v0, "minuendRow":[D
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRow(I)[D

    move-result-object v1

    .line 534
    .local v1, "subtrahendRow":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 535
    aget-wide v3, v0, v2

    aget-wide v5, v1, v2

    mul-double/2addr v5, p3

    sub-double/2addr v3, v5

    aput-wide v3, v0, v2

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
