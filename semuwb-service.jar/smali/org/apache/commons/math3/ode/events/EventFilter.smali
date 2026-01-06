.class public Lorg/apache/commons/math3/ode/events/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/events/EventHandler;


# static fields
.field private static final HISTORY_SIZE:I = 0x64


# instance fields
.field private extremeT:D

.field private final filter:Lorg/apache/commons/math3/ode/events/FilterType;

.field private forward:Z

.field private final rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private final transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

.field private final updates:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;Lorg/apache/commons/math3/ode/events/FilterType;)V
    .locals 2
    .param p1, "rawHandler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "filter"    # Lorg/apache/commons/math3/ode/events/FilterType;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 84
    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    .line 85
    const/16 v0, 0x64

    new-array v1, v0, [Lorg/apache/commons/math3/ode/events/Transformer;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    .line 86
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    .line 87
    return-void
.end method


# virtual methods
.method public eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 2
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "increasing"    # Z

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/events/FilterType;->getTriggeredIncreasing()Z

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object v0

    return-object v0
.end method

.method public g(D[D)D
    .locals 9
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    .line 109
    .local v0, "rawG":D
    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v2, v2

    sub-int/2addr v2, v4

    .line 111
    .local v2, "last":I
    iget-wide v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    cmpg-double v5, v5, p1

    if-gez v5, :cond_1

    .line 115
    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v5, v5, v2

    .line 116
    .local v5, "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    iget-boolean v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    invoke-virtual {v6, v5, v0, v1, v7}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object v6

    .line 117
    .local v6, "next":Lorg/apache/commons/math3/ode/events/Transformer;
    if-eq v6, v5, :cond_0

    .line 124
    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    invoke-static {v7, v4, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v7, v4, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    aput-wide v7, v3, v2

    .line 127
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v6, v3, v2

    .line 130
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 133
    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v3

    return-wide v3

    .line 139
    .end local v5    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    .end local v6    # "next":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_1
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_3

    .line 140
    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    aget-wide v5, v5, v4

    cmpg-double v5, v5, p1

    if-gtz v5, :cond_2

    .line 142
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v5

    return-wide v5

    .line 139
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 146
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v3

    return-wide v3

    .line 150
    .end local v2    # "last":I
    :cond_4
    iget-wide v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    cmpg-double v2, p1, v5

    if-gez v2, :cond_6

    .line 154
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v2, v2, v3

    .line 155
    .local v2, "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    iget-boolean v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    invoke-virtual {v5, v2, v0, v1, v6}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object v5

    .line 156
    .local v5, "next":Lorg/apache/commons/math3/ode/events/Transformer;
    if-eq v5, v2, :cond_5

    .line 163
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v8, v8

    sub-int/2addr v8, v4

    invoke-static {v6, v3, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v8, v8

    sub-int/2addr v8, v4

    invoke-static {v6, v3, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    aput-wide v6, v4, v3

    .line 166
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v5, v4, v3

    .line 169
    :cond_5
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 172
    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v3

    return-wide v3

    .line 178
    .end local v2    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    .end local v5    # "next":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v3, v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_8

    .line 179
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    aget-wide v5, v3, v2

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_7

    .line 181
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v3

    return-wide v3

    .line 178
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    .end local v2    # "i":I
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v3, v3

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public init(D[DD)V
    .locals 6
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    .end local p1    # "t0":D
    .end local p3    # "y0":[D
    .end local p4    # "t":D
    .local v1, "t0":D
    .local v3, "y0":[D
    .local v4, "t":D
    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    .line 96
    cmpl-double p1, v4, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    .line 97
    iget-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_1
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 98
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    sget-object p2, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 101
    return-void
.end method

.method public resetState(D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .line 201
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 202
    return-void
.end method
