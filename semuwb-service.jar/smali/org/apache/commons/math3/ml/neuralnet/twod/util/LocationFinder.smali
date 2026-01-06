.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
.super Ljava/lang/Object;
.source "LocationFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    }
.end annotation


# instance fields
.field private final locations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V
    .locals 7
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    .line 81
    .local v0, "nR":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    .line 83
    .local v1, "nC":I
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 84
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 85
    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 86
    .local v4, "id":Ljava/lang/Long;
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 89
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    new-instance v6, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    invoke-direct {v6, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;-><init>(II)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v4    # "id":Ljava/lang/Long;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .restart local v4    # "id":Ljava/lang/Long;
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v5

    .line 83
    .end local v3    # "c":I
    .end local v4    # "id":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "r":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .locals 3
    .param p1, "n"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    return-object v0
.end method
