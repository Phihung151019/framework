.class public Lorg/apache/commons/math3/ml/neuralnet/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;,
        Lorg/apache/commons/math3/ml/neuralnet/Network$NeuronIdentifierComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final featureSize:I

.field private final linkMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final neuronMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation
.end field

.field private final nextId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "initialIdentifier"    # J
    .param p3, "featureSize"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 135
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    .line 136
    return-void
.end method

.method constructor <init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V
    .locals 16
    .param p1, "nextId"    # J
    .param p3, "featureSize"    # I
    .param p4, "neuronList"    # [Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p5, "neighbourIdList"    # [[J

    .line 96
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    array-length v5, v3

    .line 98
    .local v5, "numNeurons":I
    array-length v6, v4

    if-ne v5, v6, :cond_5

    .line 102
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 103
    aget-object v7, v3, v6

    .line 104
    .local v7, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v8

    .line 105
    .local v8, "id":J
    cmp-long v10, v8, v1

    if-gez v10, :cond_0

    .line 108
    iget-object v10, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v10, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v7    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v8    # "id":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .restart local v7    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .restart local v8    # "id":J
    :cond_0
    new-instance v10, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v10}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v10

    .line 112
    .end local v6    # "i":I
    .end local v7    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v8    # "id":J
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 113
    aget-object v7, v3, v6

    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v7

    .line 114
    .local v7, "aId":J
    iget-object v9, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 115
    .local v9, "aLinks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    aget-object v10, v4, v6

    .local v10, "arr$":[J
    array-length v11, v10

    .local v11, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v11, :cond_3

    aget-wide v13, v10, v12

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 116
    .local v13, "bId":Ljava/lang/Long;
    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 119
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v0, v9, v14, v15}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLinkToLinkSet(Ljava/util/Set;J)V

    .line 115
    .end local v13    # "bId":Ljava/lang/Long;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 117
    .restart local v13    # "bId":Ljava/lang/Long;
    :cond_2
    new-instance v14, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v14}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v14

    .line 112
    .end local v7    # "aId":J
    .end local v9    # "aLinks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v10    # "arr$":[J
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    .end local v13    # "bId":Ljava/lang/Long;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    .end local v6    # "i":I
    :cond_4
    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v6, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 124
    move/from16 v6, p3

    iput v6, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    .line 125
    return-void

    .line 99
    :cond_5
    move/from16 v6, p3

    new-instance v7, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v7}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v7
.end method

.method private addLinkToLinkSet(Ljava/util/Set;J)V
    .locals 1
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 274
    .local p1, "linkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private createNextId()Ljava/lang/Long;
    .locals 2

    .line 417
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private deleteLinkFromLinkSet(Ljava/util/Set;J)V
    .locals 1
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 312
    .local p1, "linkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 10

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 436
    .local v5, "neuronList":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    array-length v0, v5

    new-array v6, v0, [[J

    .line 438
    .local v6, "neighbourIdList":[[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v5

    if-ge v0, v1, :cond_1

    .line 439
    aget-object v1, v5, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v1

    .line 440
    .local v1, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 441
    .local v2, "neighboursId":[J
    const/4 v3, 0x0

    .line 442
    .local v3, "count":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 443
    .local v7, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 444
    nop

    .end local v7    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    add-int/lit8 v3, v3, 0x1

    .line 445
    goto :goto_1

    .line 446
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    aput-object v2, v6, v0

    .line 438
    .end local v1    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v2    # "neighboursId":[J
    .end local v3    # "count":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;-><init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V

    return-object v1
.end method


# virtual methods
.method public addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "b"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v0

    .line 250
    .local v0, "aId":J
    invoke-virtual {p2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    .line 253
    .local v2, "bId":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 256
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-ne p2, v4, :cond_0

    .line 261
    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLinkToLinkSet(Ljava/util/Set;J)V

    .line 262
    return-void

    .line 257
    :cond_0
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 254
    :cond_1
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/ml/neuralnet/Network;
    .locals 7

    monitor-enter p0

    .line 147
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->nextId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    .line 151
    .local v0, "copy":Lorg/apache/commons/math3/ml/neuralnet/Network;
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    iget-object v3, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->copy()Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    nop

    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    goto :goto_0

    .line 155
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local p0    # "this":Lorg/apache/commons/math3/ml/neuralnet/Network;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Ljava/lang/Long;>;>;"
    iget-object v3, v0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    nop

    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Ljava/lang/Long;>;>;"
    goto :goto_1

    .line 159
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 146
    .end local v0    # "copy":Lorg/apache/commons/math3/ml/neuralnet/Network;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createNeuron([D)J
    .locals 5
    .param p1, "features"    # [D

    .line 196
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNextId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 201
    .local v0, "id":J
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-direct {v4, v0, v1, p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-wide v0

    .line 197
    .end local v0    # "id":J
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public deleteLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "b"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 287
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v0

    .line 288
    .local v0, "aId":J
    invoke-virtual {p2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    .line 291
    .local v2, "bId":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 294
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    if-ne p2, v4, :cond_0

    .line 299
    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->deleteLinkFromLinkSet(Ljava/util/Set;J)V

    .line 300
    return-void

    .line 295
    :cond_0
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_1
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public deleteNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V
    .locals 4
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 216
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v0

    .line 219
    .local v0, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 220
    .local v2, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->deleteLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    .line 221
    .end local v2    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    goto :goto_0

    .line 224
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public getFeaturesSize()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->featureSize:I

    return v0
.end method

.method public getNeighbours(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 339
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 356
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .local p2, "exclude":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 358
    .local v0, "idList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 359
    .local v2, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 360
    .end local v2    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    goto :goto_0

    .line 361
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p2, :cond_1

    .line 362
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 363
    .restart local v2    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 364
    .end local v2    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    goto :goto_1

    .line 367
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "neuronList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 369
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v3    # "id":Ljava/lang/Long;
    goto :goto_2

    .line 372
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v1
.end method

.method public getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;
    .locals 1
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 6
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 396
    .local p2, "exclude":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->linkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 397
    .local v0, "idList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 398
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 399
    .local v2, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 400
    .end local v2    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    goto :goto_0

    .line 403
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v1, "neuronList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 405
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v3    # "id":Ljava/lang/Long;
    goto :goto_1

    .line 408
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method public getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 3
    .param p1, "id"    # J

    .line 324
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 325
    .local v0, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    if-eqz v0, :cond_0

    .line 328
    return-object v0

    .line 326
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNeurons(Ljava/util/Comparator;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 178
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "neurons":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Network;->neuronMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
