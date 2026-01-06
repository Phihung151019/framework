.class public abstract Landroidx/car/app/Screen;
.super Ljava/lang/Object;
.source "Screen.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mCarContext:Landroidx/car/app/CarContext;

.field private final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mMarker:Ljava/lang/String;

.field private mOnScreenResultListener:Landroidx/car/app/OnScreenResultListener;

.field private mResult:Ljava/lang/Object;

.field private mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

.field private mUseLastTemplateId:Z


# direct methods
.method protected constructor <init>(Landroidx/car/app/CarContext;)V
    .locals 1
    .param p1, "carContext"    # Landroidx/car/app/CarContext;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/car/app/Screen;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 62
    new-instance v0, Landroidx/car/app/Screen$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/car/app/Screen$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroidx/car/app/Screen;->mOnScreenResultListener:Landroidx/car/app/OnScreenResultListener;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/CarContext;

    iput-object v0, p0, Landroidx/car/app/Screen;->mCarContext:Landroidx/car/app/CarContext;

    .line 87
    return-void
.end method

.method private static getLastTemplateInfo(Landroidx/car/app/model/TemplateWrapper;)Landroidx/car/app/model/TemplateInfo;
    .locals 3
    .param p0, "lastTemplateWrapper"    # Landroidx/car/app/model/TemplateWrapper;

    .line 399
    new-instance v0, Landroidx/car/app/model/TemplateInfo;

    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getTemplate()Landroidx/car/app/model/Template;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 400
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/car/app/model/TemplateInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 399
    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public dispatchLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 328
    new-instance v0, Landroidx/car/app/Screen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/Screen$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/Screen;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-static {v0}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public final finish()V
    .locals 2

    .line 119
    iget-object v0, p0, Landroidx/car/app/Screen;->mCarContext:Landroidx/car/app/CarContext;

    const-class v1, Landroidx/car/app/ScreenManager;

    invoke-virtual {v0, v1}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ScreenManager;

    invoke-virtual {v0, p0}, Landroidx/car/app/ScreenManager;->remove(Landroidx/car/app/Screen;)V

    .line 120
    return-void
.end method

.method public final getCarContext()Landroidx/car/app/CarContext;
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/car/app/Screen;->mCarContext:Landroidx/car/app/CarContext;

    return-object v0
.end method

.method getLastTemplateInfo()Landroidx/car/app/model/TemplateInfo;
    .locals 3

    .line 390
    iget-object v0, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Landroidx/car/app/Screen;->onGetTemplate()Landroidx/car/app/model/Template;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/model/TemplateWrapper;->wrap(Landroidx/car/app/model/Template;)Landroidx/car/app/model/TemplateWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    .line 393
    :cond_0
    new-instance v0, Landroidx/car/app/model/TemplateInfo;

    iget-object v1, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    invoke-virtual {v1}, Landroidx/car/app/model/TemplateWrapper;->getTemplate()Landroidx/car/app/model/Template;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    .line 394
    invoke-virtual {v2}, Landroidx/car/app/model/TemplateWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/car/app/model/TemplateInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 393
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/car/app/Screen;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/car/app/Screen;->mMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getResultInternal()Ljava/lang/Object;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/car/app/Screen;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public final getScreenManager()Landroidx/car/app/ScreenManager;
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/car/app/Screen;->mCarContext:Landroidx/car/app/CarContext;

    const-class v1, Landroidx/car/app/ScreenManager;

    invoke-virtual {v0, v1}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ScreenManager;

    return-object v0
.end method

.method getTemplateWrapper()Landroidx/car/app/model/TemplateWrapper;
    .locals 5

    .line 359
    invoke-virtual {p0}, Landroidx/car/app/Screen;->onGetTemplate()Landroidx/car/app/model/Template;

    move-result-object v0

    .line 362
    .local v0, "template":Landroidx/car/app/model/Template;
    iget-boolean v1, p0, Landroidx/car/app/Screen;->mUseLastTemplateId:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    .line 365
    invoke-static {v1}, Landroidx/car/app/Screen;->getLastTemplateInfo(Landroidx/car/app/model/TemplateWrapper;)Landroidx/car/app/model/TemplateInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/car/app/model/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->wrap(Landroidx/car/app/model/Template;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;

    move-result-object v1

    .local v1, "wrapper":Landroidx/car/app/model/TemplateWrapper;
    goto :goto_0

    .line 367
    .end local v1    # "wrapper":Landroidx/car/app/model/TemplateWrapper;
    :cond_0
    invoke-static {v0}, Landroidx/car/app/model/TemplateWrapper;->wrap(Landroidx/car/app/model/Template;)Landroidx/car/app/model/TemplateWrapper;

    move-result-object v1

    .line 369
    .restart local v1    # "wrapper":Landroidx/car/app/model/TemplateWrapper;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/car/app/Screen;->mUseLastTemplateId:Z

    .line 371
    iput-object v1, p0, Landroidx/car/app/Screen;->mTemplateWrapper:Landroidx/car/app/model/TemplateWrapper;

    .line 373
    const/4 v2, 0x3

    const-string v3, "CarApp"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from screen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    return-object v1
.end method

.method public final invalidate()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroidx/car/app/Screen;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/car/app/Screen;->mCarContext:Landroidx/car/app/CarContext;

    const-class v1, Landroidx/car/app/AppManager;

    invoke-virtual {v0, v1}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->invalidate()V

    .line 108
    :cond_0
    return-void
.end method

.method synthetic lambda$dispatchLifecycleEvent$1$androidx-car-app-Screen(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 330
    iget-object v0, p0, Landroidx/car/app/Screen;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 332
    .local v0, "currentState":Landroidx/lifecycle/Lifecycle$State;
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p1, v1, :cond_1

    .line 337
    iget-object v1, p0, Landroidx/car/app/Screen;->mOnScreenResultListener:Landroidx/car/app/OnScreenResultListener;

    iget-object v2, p0, Landroidx/car/app/Screen;->mResult:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/car/app/OnScreenResultListener;->onScreenResult(Ljava/lang/Object;)V

    .line 340
    :cond_1
    iget-object v1, p0, Landroidx/car/app/Screen;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 341
    return-void
.end method

.method public abstract onGetTemplate()Landroidx/car/app/model/Template;
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Landroidx/car/app/Screen;->mMarker:Ljava/lang/String;

    .line 158
    return-void
.end method

.method setOnScreenResultListener(Landroidx/car/app/OnScreenResultListener;)V
    .locals 0
    .param p1, "onScreenResultListener"    # Landroidx/car/app/OnScreenResultListener;

    .line 318
    iput-object p1, p0, Landroidx/car/app/Screen;->mOnScreenResultListener:Landroidx/car/app/OnScreenResultListener;

    .line 319
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Landroidx/car/app/Screen;->mResult:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method setUseLastTemplateId(Z)V
    .locals 0
    .param p1, "useLastTemplateId"    # Z

    .line 412
    iput-boolean p1, p0, Landroidx/car/app/Screen;->mUseLastTemplateId:Z

    .line 413
    return-void
.end method
