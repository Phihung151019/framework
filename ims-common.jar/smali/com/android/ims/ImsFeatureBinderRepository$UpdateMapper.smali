.class final Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
.super Ljava/lang/Object;
.source "ImsFeatureBinderRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsFeatureBinderRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateMapper"
.end annotation


# instance fields
.field public final blacklist imsFeatureType:I

.field private blacklist mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

.field private final blacklist mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field public final blacklist phoneId:I

.field public blacklist subId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$9dlhV_2YBjhPLmmZOYfxcKqdx0A(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->lambda$removeFeatureContainer$1(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EgFz-ETaAqqtwL-hnF7MESUM3BA(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;ILcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->lambda$notifyStateUpdated$3(ILcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WF_W5eYyrEQ_6Fzsyop7xZJ35LY(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->lambda$addFeatureContainer$0(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "pId"    # I
    .param p2, "t"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    .line 143
    iput p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->phoneId:I

    .line 144
    iput p2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->imsFeatureType:I

    .line 145
    return-void
.end method

.method private blacklist copyListenerList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;",
            ">;"
        }
    .end annotation

    .line 263
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addFeatureContainer$0(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 2
    .param p1, "l"    # Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 154
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    iget v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->subId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->notifyFeatureCreatedOrRemoved(Lcom/android/ims/ImsFeatureContainer;I)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyStateUpdated$3(ILcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "l"    # Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 217
    iget v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->subId:I

    invoke-virtual {p2, p1, v0}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->notifyStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyUpdateCapabilities$4(JLcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 0
    .param p0, "caps"    # J
    .param p2, "l"    # Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 236
    invoke-virtual {p2, p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->notifyUpdateCapabilties(J)V

    return-void
.end method

.method private synthetic blacklist lambda$removeFeatureContainer$1(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 2
    .param p1, "l"    # Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 166
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    iget v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->subId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->notifyFeatureCreatedOrRemoved(Lcom/android/ims/ImsFeatureContainer;I)V

    return-void
.end method

.method static synthetic blacklist lambda$removeListener$2(Lcom/android/ims/internal/IImsServiceFeatureCallback;Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)Z
    .locals 1
    .param p0, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .param p1, "c"    # Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 196
    invoke-static {p1}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->-$$Nest$fgetmCallback(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist removeStaleListeners()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 248
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 249
    .local v0, "staleListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 250
    return-void
.end method


# virtual methods
.method public blacklist addFeatureContainer(Lcom/android/ims/ImsFeatureContainer;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/ImsFeatureContainer;

    .line 149
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    .line 152
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->copyListenerList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 155
    return-void

    .line 153
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist addListener(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .locals 3
    .param p1, "c"    # Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    .line 178
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->removeStaleListeners()V

    .line 180
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    monitor-exit v0

    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    .line 184
    .local v1, "featureContainer":Lcom/android/ims/ImsFeatureContainer;
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v1, :cond_1

    .line 188
    iget v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->subId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->notifyFeatureCreatedOrRemoved(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 190
    :cond_1
    return-void

    .line 185
    .end local v1    # "featureContainer":Lcom/android/ims/ImsFeatureContainer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getFeatureContainer()Lcom/android/ims/ImsFeatureContainer;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    monitor-exit v0

    return-object v1

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist notifyStateUpdated(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 205
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->removeStaleListeners()V

    .line 207
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    .line 208
    .local v1, "featureContainer":Lcom/android/ims/ImsFeatureContainer;
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->copyListenerList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 209
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    iget-object v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    invoke-virtual {v3}, Lcom/android/ims/ImsFeatureContainer;->getState()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    invoke-virtual {v3, p1}, Lcom/android/ims/ImsFeatureContainer;->setState(I)V

    .line 214
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v1, :cond_1

    .line 217
    new-instance v0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 219
    :cond_1
    return-void

    .line 214
    .end local v1    # "featureContainer":Lcom/android/ims/ImsFeatureContainer;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist notifyUpdateCapabilities(J)V
    .locals 5
    .param p1, "caps"    # J

    .line 224
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->removeStaleListeners()V

    .line 226
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    .line 227
    .local v1, "featureContainer":Lcom/android/ims/ImsFeatureContainer;
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->copyListenerList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    iget-object v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    invoke-virtual {v3}, Lcom/android/ims/ImsFeatureContainer;->getCapabilities()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/ims/ImsFeatureContainer;->setCapabilities(J)V

    .line 233
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    if-eqz v1, :cond_1

    .line 236
    new-instance v0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 238
    :cond_1
    return-void

    .line 233
    .end local v1    # "featureContainer":Lcom/android/ims/ImsFeatureContainer;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist removeFeatureContainer()Lcom/android/ims/ImsFeatureContainer;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    .line 163
    .local v1, "oldContainer":Lcom/android/ims/ImsFeatureContainer;
    iput-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    .line 164
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->copyListenerList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 165
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    new-instance v0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda4;-><init>(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;)V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 167
    return-object v1

    .line 165
    .end local v1    # "oldContainer":Lcom/android/ims/ImsFeatureContainer;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist removeListener(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 193
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->removeStaleListeners()V

    .line 195
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 196
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 197
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 198
    .local v1, "oldListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 199
    nop

    .end local v1    # "oldListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;>;"
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateMapper{phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->imsFeatureType:I

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->mFeatureContainer:Lcom/android/ims/ImsFeatureContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 255
    return-object v1

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateSubId(I)V
    .locals 0
    .param p1, "newSubId"    # I

    .line 241
    iput p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->subId:I

    .line 242
    return-void
.end method
