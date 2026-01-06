.class public Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;
.super Lcom/samsung/android/contextaware/manager/InterruptContextProvider;
.source "InterruptAggregator.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .locals 0
    .param p1, "provider"    # Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .line 50
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->registerObserver()V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 57
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 60
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_0
    goto :goto_0

    .line 62
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 63
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .line 74
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 80
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 83
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_0
    goto :goto_0

    .line 85
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 86
    return-void
.end method
