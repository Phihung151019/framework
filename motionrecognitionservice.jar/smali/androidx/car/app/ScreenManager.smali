.class public Landroidx/car/app/ScreenManager;
.super Ljava/lang/Object;
.source "ScreenManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/ScreenManager$LifecycleObserverImpl;
    }
.end annotation


# instance fields
.field private final mAppLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mCarContext:Landroidx/car/app/CarContext;

.field private final mScreenStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/car/app/Screen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "carContext"    # Landroidx/car/app/CarContext;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    .line 432
    iput-object p1, p0, Landroidx/car/app/ScreenManager;->mCarContext:Landroidx/car/app/CarContext;

    .line 433
    iput-object p2, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 434
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;

    invoke-direct {v1, p0}, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;-><init>(Landroidx/car/app/ScreenManager;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 435
    return-void
.end method

.method static create(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/ScreenManager;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 267
    new-instance v0, Landroidx/car/app/ScreenManager;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/ScreenManager;-><init>(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method private foundMarker(Ljava/lang/String;)Z
    .locals 1
    .param p1, "marker"    # Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Landroidx/car/app/ScreenManager;->getTop()Landroidx/car/app/Screen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/app/Screen;->getMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private moveToTop(Landroidx/car/app/Screen;)V
    .locals 3
    .param p1, "screen"    # Landroidx/car/app/Screen;

    .line 414
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    .line 415
    .local v0, "top":Landroidx/car/app/Screen;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 422
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/car/app/ScreenManager;->pushAndStart(Landroidx/car/app/Screen;Z)V

    .line 423
    invoke-direct {p0, v0, v1}, Landroidx/car/app/ScreenManager;->stop(Landroidx/car/app/Screen;Z)V

    .line 425
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 428
    :cond_1
    return-void

    .line 416
    :cond_2
    :goto_0
    return-void
.end method

.method private popInternal(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/Screen;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "poppedScreens":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/Screen;>;"
    invoke-virtual {p0}, Landroidx/car/app/ScreenManager;->getTop()Landroidx/car/app/Screen;

    move-result-object v0

    .line 349
    .local v0, "newTop":Landroidx/car/app/Screen;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->setUseLastTemplateId(Z)V

    .line 353
    iget-object v2, p0, Landroidx/car/app/ScreenManager;->mCarContext:Landroidx/car/app/CarContext;

    const-class v3, Landroidx/car/app/AppManager;

    invoke-virtual {v2, v3}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/AppManager;

    invoke-virtual {v2}, Landroidx/car/app/AppManager;->invalidate()V

    .line 355
    iget-object v2, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 360
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "CarApp"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/app/Screen;

    .line 361
    .local v3, "screen":Landroidx/car/app/Screen;
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Popping screen "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " off the screen stack"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    invoke-direct {p0, v3, v1}, Landroidx/car/app/ScreenManager;->stop(Landroidx/car/app/Screen;Z)V

    .line 365
    .end local v3    # "screen":Landroidx/car/app/Screen;
    goto :goto_0

    .line 367
    :cond_2
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is at the top of the screen stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 378
    :cond_4
    return-void
.end method

.method private pushAndStart(Landroidx/car/app/Screen;Z)V
    .locals 2
    .param p1, "screen"    # Landroidx/car/app/Screen;
    .param p2, "shouldCreate"    # Z

    .line 381
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 382
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroidx/car/app/Screen;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mCarContext:Landroidx/car/app/CarContext;

    const-class v1, Landroidx/car/app/AppManager;

    invoke-virtual {v0, v1}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->invalidate()V

    .line 393
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 395
    :cond_2
    return-void
.end method

.method private pushInternal(Landroidx/car/app/Screen;)V
    .locals 3
    .param p1, "screen"    # Landroidx/car/app/Screen;

    .line 316
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pushing screen "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to the top of the screen stack"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0, p1}, Landroidx/car/app/ScreenManager;->moveToTop(Landroidx/car/app/Screen;)V

    .line 322
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    .line 327
    .local v0, "top":Landroidx/car/app/Screen;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroidx/car/app/ScreenManager;->pushAndStart(Landroidx/car/app/Screen;Z)V

    .line 329
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    return-void

    .line 334
    :cond_2
    if-eqz v0, :cond_3

    .line 335
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/car/app/ScreenManager;->stop(Landroidx/car/app/Screen;Z)V

    .line 338
    :cond_3
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 341
    :cond_4
    return-void
.end method

.method private stop(Landroidx/car/app/Screen;Z)V
    .locals 2
    .param p1, "screen"    # Landroidx/car/app/Screen;
    .param p2, "shouldDestroy"    # Z

    .line 398
    invoke-virtual {p1}, Landroidx/car/app/Screen;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 400
    .local v0, "currentState":Landroidx/lifecycle/Lifecycle$State;
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 404
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 408
    :cond_1
    if-eqz p2, :cond_2

    .line 409
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 411
    :cond_2
    return-void
.end method


# virtual methods
.method destroyAndClearScreenStack()V
    .locals 4

    .line 292
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v0, "screenStack":Ljava/util/Deque;, "Ljava/util/Deque<Landroidx/car/app/Screen;>;"
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/Screen;

    .line 294
    .local v2, "screen":Landroidx/car/app/Screen;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroidx/car/app/ScreenManager;->stop(Landroidx/car/app/Screen;Z)V

    .line 295
    .end local v2    # "screen":Landroidx/car/app/Screen;
    goto :goto_0

    .line 296
    :cond_0
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 297
    return-void
.end method

.method public getScreenStack()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/car/app/Screen;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getScreenStackInternal()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Landroidx/car/app/Screen;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    return-object v0
.end method

.method public getStackSize()I
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public getTop()Landroidx/car/app/Screen;
    .locals 1

    .line 67
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 68
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    return-object v0
.end method

.method getTopTemplate()Landroidx/car/app/model/TemplateWrapper;
    .locals 6

    .line 273
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 275
    invoke-virtual {p0}, Landroidx/car/app/ScreenManager;->getTop()Landroidx/car/app/Screen;

    move-result-object v0

    .line 276
    .local v0, "screen":Landroidx/car/app/Screen;
    const/4 v1, 0x3

    const-string v2, "CarApp"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting template from Screen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-virtual {v0}, Landroidx/car/app/Screen;->getTemplateWrapper()Landroidx/car/app/model/TemplateWrapper;

    move-result-object v1

    .line 282
    .local v1, "templateWrapper":Landroidx/car/app/model/TemplateWrapper;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v2, "templateInfoList":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/TemplateInfo;>;"
    iget-object v3, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/car/app/Screen;

    .line 284
    .local v4, "s":Landroidx/car/app/Screen;
    invoke-virtual {v4}, Landroidx/car/app/Screen;->getLastTemplateInfo()Landroidx/car/app/model/TemplateInfo;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v4    # "s":Landroidx/car/app/Screen;
    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/car/app/model/TemplateWrapper;->setTemplateInfosForScreenStack(Ljava/util/List;)V

    .line 288
    return-object v1
.end method

.method public pop()V
    .locals 2

    .line 139
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 140
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "Popping screens after the DESTROYED state is a no-op"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/app/ScreenManager;->popInternal(Ljava/util/List;)V

    .line 150
    :cond_2
    return-void
.end method

.method public popTo(Ljava/lang/String;)V
    .locals 3
    .param p1, "marker"    # Ljava/lang/String;

    .line 166
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "Popping screens after the DESTROYED state is a no-op"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "screensToPop":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/Screen;>;"
    :goto_0
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-direct {p0, p1}, Landroidx/car/app/ScreenManager;->foundMarker(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    iget-object v1, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/Screen;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    return-void

    .line 186
    :cond_3
    invoke-direct {p0, v0}, Landroidx/car/app/ScreenManager;->popInternal(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public popToRoot()V
    .locals 3

    .line 198
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 199
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "Popping screens after the DESTROYED state is a no-op"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 207
    return-void

    .line 211
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, "screensToPop":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/Screen;>;"
    :goto_0
    iget-object v2, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 213
    iget-object v2, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/Screen;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0, v0}, Landroidx/car/app/ScreenManager;->popInternal(Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public push(Landroidx/car/app/Screen;)V
    .locals 2
    .param p1, "screen"    # Landroidx/car/app/Screen;

    .line 84
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 85
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "Pushing screens after the DESTROYED state is a no-op"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    invoke-direct {p0, v0}, Landroidx/car/app/ScreenManager;->pushInternal(Landroidx/car/app/Screen;)V

    .line 93
    return-void
.end method

.method public pushForResult(Landroidx/car/app/Screen;Landroidx/car/app/OnScreenResultListener;)V
    .locals 2
    .param p1, "screen"    # Landroidx/car/app/Screen;
    .param p2, "onScreenResultListener"    # Landroidx/car/app/OnScreenResultListener;

    .line 116
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 117
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "Pushing screens after the DESTROYED state is a no-op"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/OnScreenResultListener;

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->setOnScreenResultListener(Landroidx/car/app/OnScreenResultListener;)V

    .line 125
    invoke-direct {p0, p1}, Landroidx/car/app/ScreenManager;->pushInternal(Landroidx/car/app/Screen;)V

    .line 126
    return-void
.end method

.method public remove(Landroidx/car/app/Screen;)V
    .locals 2
    .param p1, "screen"    # Landroidx/car/app/Screen;

    .line 231
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 232
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mAppLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "Popping screens after the DESTROYED state is a no-op"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 242
    return-void

    .line 245
    :cond_2
    invoke-virtual {p0}, Landroidx/car/app/ScreenManager;->getTop()Landroidx/car/app/Screen;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 249
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/app/ScreenManager;->popInternal(Ljava/util/List;)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Landroidx/car/app/ScreenManager;->mScreenStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 256
    :cond_4
    :goto_0
    return-void
.end method
