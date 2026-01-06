.class public Landroidx/car/app/CarContext;
.super Landroid/content/ContextWrapper;
.source "CarContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/CarContext$CarServiceType;
    }
.end annotation


# static fields
.field public static final ACTION_NAVIGATE:Ljava/lang/String; = "androidx.car.app.action.NAVIGATE"

.field public static final APP_SERVICE:Ljava/lang/String; = "app"

.field public static final CAR_SERVICE:Ljava/lang/String; = "car"

.field public static final CONSTRAINT_SERVICE:Ljava/lang/String; = "constraints"
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation
.end field

.field static final EXTRA_ON_REQUEST_PERMISSIONS_RESULT_LISTENER_KEY:Ljava/lang/String; = "androidx.car.app.action.EXTRA_ON_REQUEST_PERMISSIONS_RESULT_LISTENER_KEY"

.field static final EXTRA_PERMISSIONS_KEY:Ljava/lang/String; = "androidx.car.app.action.EXTRA_PERMISSIONS_KEY"

.field public static final EXTRA_START_CAR_APP_BINDER_KEY:Ljava/lang/String; = "androidx.car.app.extra.START_CAR_APP_BINDER_KEY"

.field public static final HARDWARE_SERVICE:Ljava/lang/String; = "hardware"
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x3
    .end annotation
.end field

.field public static final NAVIGATION_SERVICE:Ljava/lang/String; = "navigation"

.field static final REQUEST_PERMISSIONS_ACTION:Ljava/lang/String; = "androidx.car.app.action.REQUEST_PERMISSIONS"

.field public static final SCREEN_SERVICE:Ljava/lang/String; = "screen"

.field public static final SUGGESTION_SERVICE:Ljava/lang/String; = "suggestion"


# instance fields
.field private mCarAppApiLevel:I

.field private final mHostDispatcher:Landroidx/car/app/HostDispatcher;

.field private mHostInfo:Landroidx/car/app/HostInfo;

.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mManagers:Landroidx/car/app/managers/ManagerCache;

.field private final mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method protected constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/HostDispatcher;)V
    .locals 5
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;

    .line 715
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v1, Landroidx/car/app/managers/ManagerCache;

    invoke-direct {v1}, Landroidx/car/app/managers/ManagerCache;-><init>()V

    iput-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Landroidx/car/app/CarContext;->mCarAppApiLevel:I

    .line 178
    iput-object v0, p0, Landroidx/car/app/CarContext;->mHostInfo:Landroidx/car/app/HostInfo;

    .line 717
    iput-object p2, p0, Landroidx/car/app/CarContext;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    .line 718
    iget-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v2, Landroidx/car/app/AppManager;

    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, p1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V

    const-string v4, "app"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 720
    iget-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v2, Landroidx/car/app/navigation/NavigationManager;

    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p2, p1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda2;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V

    const-string v4, "navigation"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 722
    iget-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v2, Landroidx/car/app/ScreenManager;

    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;)V

    const-string v4, "screen"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 724
    iget-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v2, Landroidx/car/app/constraints/ConstraintManager;

    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda4;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)V

    const-string v4, "constraints"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 726
    iget-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v2, Landroidx/car/app/hardware/CarHardwareManager;

    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda5;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)V

    const-string v4, "hardware"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 728
    iget-object v1, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v2, Landroidx/car/app/managers/ResultManager;

    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda6;-><init>(Landroidx/car/app/CarContext;)V

    invoke-virtual {v1, v2, v0, v3}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 730
    iget-object v0, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    const-class v1, Landroidx/car/app/suggestion/SuggestionManager;

    new-instance v2, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p2, p1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V

    const-string v3, "suggestion"

    invoke-virtual {v0, v1, v3, v2}, Landroidx/car/app/managers/ManagerCache;->addFactory(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/managers/ManagerFactory;)V

    .line 733
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/car/app/CarContext$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda8;-><init>(Landroidx/car/app/CarContext;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/car/app/CarContext;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 735
    iput-object p1, p0, Landroidx/car/app/CarContext;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 737
    new-instance v0, Landroidx/car/app/CarContext$2;

    invoke-direct {v0, p0, p2}, Landroidx/car/app/CarContext$2;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)V

    .line 745
    .local v0, "observer":Landroidx/lifecycle/LifecycleObserver;
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 746
    return-void
.end method

.method public static create(Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/CarContext;
    .locals 2
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 184
    new-instance v0, Landroidx/car/app/CarContext;

    new-instance v1, Landroidx/car/app/HostDispatcher;

    invoke-direct {v1}, Landroidx/car/app/HostDispatcher;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/car/app/CarContext;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/HostDispatcher;)V

    return-object v0
.end method

.method static synthetic lambda$finishCarApp$2(Landroidx/car/app/ICarHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "host"    # Landroidx/car/app/ICarHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-interface {p0}, Landroidx/car/app/ICarHost;->finish()V

    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$startCarApp$0(Landroid/content/Intent;Landroidx/car/app/ICarHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "host"    # Landroidx/car/app/ICarHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-interface {p1, p0}, Landroidx/car/app/ICarHost;->startCarApp(Landroid/content/Intent;)V

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$startCarApp$1(Landroidx/car/app/IStartCarApp;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p0, "startCarAppInterface"    # Landroidx/car/app/IStartCarApp;
    .param p1, "appIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-interface {p0, p1}, Landroidx/car/app/IStartCarApp;->startCarApp(Landroid/content/Intent;)V

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public static startCarApp(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 5
    .param p0, "notificationIntent"    # Landroid/content/Intent;
    .param p1, "appIntent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 342
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 343
    const-string v2, "androidx.car.app.extra.START_CAR_APP_BINDER_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 345
    :cond_0
    if-eqz v0, :cond_1

    .line 349
    invoke-static {v0}, Landroidx/car/app/IStartCarApp$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IStartCarApp;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/IStartCarApp;

    .line 351
    .local v2, "startCarAppInterface":Landroidx/car/app/IStartCarApp;
    new-instance v3, Landroidx/car/app/CarContext$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2, p1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda9;-><init>(Landroidx/car/app/IStartCarApp;Landroid/content/Intent;)V

    const-string v4, "startCarApp from notification"

    invoke-static {v4, v3}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHost(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)V

    .line 357
    return-void

    .line 346
    .end local v2    # "startCarAppInterface":Landroidx/car/app/IStartCarApp;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Notification intent missing expected extra"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method attachBaseContext(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 677
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 681
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 683
    nop

    .line 685
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 684
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget v3, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 686
    const-string v2, "CarAppService"

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    .line 694
    .local v0, "display":Landroid/hardware/display/VirtualDisplay;
    nop

    .line 696
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 697
    invoke-virtual {v1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 694
    invoke-virtual {p0, v1}, Landroidx/car/app/CarContext;->attachBaseContext(Landroid/content/Context;)V

    .line 700
    .end local v0    # "display":Landroid/hardware/display/VirtualDisplay;
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/car/app/CarContext;->onCarConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 701
    return-void
.end method

.method public finishCarApp()V
    .locals 4

    .line 371
    iget-object v0, p0, Landroidx/car/app/CarContext;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/CarContext$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "car"

    const-string v3, "finish"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 378
    return-void
.end method

.method public getCallingComponent()Landroid/content/ComponentName;
    .locals 2
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 414
    :try_start_0
    const-class v0, Landroidx/car/app/managers/ResultManager;

    invoke-virtual {p0, v0}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/managers/ResultManager;

    invoke-interface {v0}, Landroidx/car/app/managers/ResultManager;->getCallingComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCarAppApiLevel()I
    .locals 2

    .line 490
    iget v0, p0, Landroidx/car/app/CarContext;->mCarAppApiLevel:I

    if-eqz v0, :cond_0

    .line 493
    iget v0, p0, Landroidx/car/app/CarContext;->mCarAppApiLevel:I

    return v0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Car App API level hasn\'t been established yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCarService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 245
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    invoke-virtual {v0, p1}, Landroidx/car/app/managers/ManagerCache;->getOrCreate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCarService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    invoke-virtual {v0, p1}, Landroidx/car/app/managers/ManagerCache;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCarServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 265
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    invoke-virtual {v0, p1}, Landroidx/car/app/managers/ManagerCache;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostInfo()Landroidx/car/app/HostInfo;
    .locals 1

    .line 507
    iget-object v0, p0, Landroidx/car/app/CarContext;->mHostInfo:Landroidx/car/app/HostInfo;

    return-object v0
.end method

.method getManagers()Landroidx/car/app/managers/ManagerCache;
    .locals 1

    .line 706
    iget-object v0, p0, Landroidx/car/app/CarContext;->mManagers:Landroidx/car/app/managers/ManagerCache;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 457
    iget-object v0, p0, Landroidx/car/app/CarContext;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public isDarkMode()Z
    .locals 2

    .line 434
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$10$androidx-car-app-CarContext()V
    .locals 1

    .line 734
    const-class v0, Landroidx/car/app/ScreenManager;

    invoke-virtual {p0, v0}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ScreenManager;

    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->pop()V

    return-void
.end method

.method synthetic lambda$new$3$androidx-car-app-CarContext(Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/AppManager;
    .locals 1
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 719
    invoke-static {p0, p1, p2}, Landroidx/car/app/AppManager;->create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/AppManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$4$androidx-car-app-CarContext(Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/navigation/NavigationManager;
    .locals 1
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 721
    invoke-static {p0, p1, p2}, Landroidx/car/app/navigation/NavigationManager;->create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/navigation/NavigationManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$5$androidx-car-app-CarContext(Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/ScreenManager;
    .locals 1
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 723
    invoke-static {p0, p1}, Landroidx/car/app/ScreenManager;->create(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/ScreenManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$6$androidx-car-app-CarContext(Landroidx/car/app/HostDispatcher;)Landroidx/car/app/constraints/ConstraintManager;
    .locals 1
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;

    .line 725
    invoke-static {p0, p1}, Landroidx/car/app/constraints/ConstraintManager;->create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)Landroidx/car/app/constraints/ConstraintManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$7$androidx-car-app-CarContext(Landroidx/car/app/HostDispatcher;)Landroidx/car/app/hardware/CarHardwareManager;
    .locals 1
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;

    .line 727
    invoke-static {p0, p1}, Landroidx/car/app/hardware/CarHardwareManager;->create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)Landroidx/car/app/hardware/CarHardwareManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$8$androidx-car-app-CarContext()Landroidx/car/app/managers/ResultManager;
    .locals 1

    .line 729
    invoke-static {p0}, Landroidx/car/app/managers/ResultManager;->create(Landroidx/car/app/CarContext;)Landroidx/car/app/managers/ResultManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$9$androidx-car-app-CarContext(Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/suggestion/SuggestionManager;
    .locals 1
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 731
    invoke-static {p0, p1, p2}, Landroidx/car/app/suggestion/SuggestionManager;->create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/suggestion/SuggestionManager;

    move-result-object v0

    return-object v0
.end method

.method onCarConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 629
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 631
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car configuration changed, configuration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", displayMetrics: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 639
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 640
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 639
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 641
    return-void
.end method

.method public requestPermissions(Ljava/util/List;Landroidx/car/app/OnRequestPermissionsListener;)V
    .locals 1
    .param p2, "listener"    # Landroidx/car/app/OnRequestPermissionsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/car/app/OnRequestPermissionsListener;",
            ")V"
        }
    .end annotation

    .line 543
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/car/app/CarContext;->requestPermissions(Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/car/app/OnRequestPermissionsListener;)V

    .line 544
    return-void
.end method

.method public requestPermissions(Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/car/app/OnRequestPermissionsListener;)V
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroidx/car/app/OnRequestPermissionsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/OnRequestPermissionsListener;",
            ")V"
        }
    .end annotation

    .line 583
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroidx/car/app/CarAppPermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, "appActivityComponent":Landroid/content/ComponentName;
    iget-object v1, p0, Landroidx/car/app/CarContext;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 591
    .local v1, "lifecycle":Landroidx/lifecycle/Lifecycle;
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 592
    .local v2, "extras":Landroid/os/Bundle;
    new-instance v3, Landroidx/car/app/CarContext$1;

    invoke-direct {v3, p0, v1, p2, p3}, Landroidx/car/app/CarContext$1;-><init>(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;Ljava/util/concurrent/Executor;Landroidx/car/app/OnRequestPermissionsListener;)V

    .line 604
    invoke-virtual {v3}, Landroidx/car/app/CarContext$1;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 592
    const-string v4, "androidx.car.app.action.EXTRA_ON_REQUEST_PERMISSIONS_RESULT_LISTENER_KEY"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 605
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v4, "androidx.car.app.action.EXTRA_PERMISSIONS_KEY"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 606
    new-instance v3, Landroid/content/Intent;

    const-string v4, "androidx.car.app.action.REQUEST_PERMISSIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 608
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 609
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 610
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroidx/car/app/CarContext;->startActivity(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method public setCarAppResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 395
    const-class v0, Landroidx/car/app/managers/ResultManager;

    invoke-virtual {p0, v0}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/managers/ResultManager;

    invoke-interface {v0, p1, p2}, Landroidx/car/app/managers/ResultManager;->setCarAppResult(ILandroid/content/Intent;)V

    .line 396
    return-void
.end method

.method public setCarHost(Landroidx/car/app/ICarHost;)V
    .locals 2
    .param p1, "carHost"    # Landroidx/car/app/ICarHost;

    .line 616
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 617
    iget-object v0, p0, Landroidx/car/app/CarContext;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/ICarHost;

    invoke-virtual {v0, v1}, Landroidx/car/app/HostDispatcher;->setCarHost(Landroidx/car/app/ICarHost;)V

    .line 618
    return-void
.end method

.method public startCarApp(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 306
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Landroidx/car/app/CarContext;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/CarContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/car/app/CarContext$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    const-string v2, "car"

    const-string v3, "startCarApp"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 315
    return-void
.end method

.method public updateHandshakeInfo(Landroidx/car/app/HandshakeInfo;)V
    .locals 1
    .param p1, "handshakeInfo"    # Landroidx/car/app/HandshakeInfo;

    .line 650
    invoke-virtual {p1}, Landroidx/car/app/HandshakeInfo;->getHostCarAppApiLevel()I

    move-result v0

    iput v0, p0, Landroidx/car/app/CarContext;->mCarAppApiLevel:I

    .line 651
    return-void
.end method

.method updateHostInfo(Landroidx/car/app/HostInfo;)V
    .locals 0
    .param p1, "hostInfo"    # Landroidx/car/app/HostInfo;

    .line 660
    iput-object p1, p0, Landroidx/car/app/CarContext;->mHostInfo:Landroidx/car/app/HostInfo;

    .line 661
    return-void
.end method
