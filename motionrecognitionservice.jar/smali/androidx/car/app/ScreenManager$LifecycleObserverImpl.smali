.class Landroidx/car/app/ScreenManager$LifecycleObserverImpl;
.super Ljava/lang/Object;
.source "ScreenManager.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/ScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleObserverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/ScreenManager;


# direct methods
.method constructor <init>(Landroidx/car/app/ScreenManager;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/ScreenManager;

    .line 438
    iput-object p1, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->this$0:Landroidx/car/app/ScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 441
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 485
    iget-object v0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->this$0:Landroidx/car/app/ScreenManager;

    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->destroyAndClearScreenStack()V

    .line 486
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 487
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 465
    iget-object v0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->this$0:Landroidx/car/app/ScreenManager;

    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->getScreenStackInternal()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    .line 466
    .local v0, "top":Landroidx/car/app/Screen;
    if-nez v0, :cond_0

    .line 467
    const-string v1, "CarApp"

    const-string v2, "Screen stack was empty during lifecycle onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 470
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 471
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 455
    iget-object v0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->this$0:Landroidx/car/app/ScreenManager;

    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->getScreenStackInternal()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    .line 456
    .local v0, "top":Landroidx/car/app/Screen;
    if-nez v0, :cond_0

    .line 457
    const-string v1, "CarApp"

    const-string v2, "Screen stack was empty during lifecycle onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 460
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 461
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 445
    iget-object v0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->this$0:Landroidx/car/app/ScreenManager;

    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->getScreenStackInternal()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    .line 446
    .local v0, "top":Landroidx/car/app/Screen;
    if-nez v0, :cond_0

    .line 447
    const-string v1, "CarApp"

    const-string v2, "Screen stack was empty during lifecycle onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 450
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 451
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 475
    iget-object v0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->this$0:Landroidx/car/app/ScreenManager;

    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->getScreenStackInternal()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Screen;

    .line 476
    .local v0, "top":Landroidx/car/app/Screen;
    if-nez v0, :cond_0

    .line 477
    const-string v1, "CarApp"

    const-string v2, "Screen stack was empty during lifecycle onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 480
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Screen;->dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 481
    return-void
.end method
