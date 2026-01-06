.class final Landroidx/car/app/CarAppBinder;
.super Landroidx/car/app/ICarApp$Stub;
.source "CarAppBinder.java"


# instance fields
.field private mCurrentSession:Landroidx/car/app/Session;

.field private final mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

.field private mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

.field private mHostValidator:Landroidx/car/app/validation/HostValidator;

.field private mService:Landroidx/car/app/CarAppService;


# direct methods
.method constructor <init>(Landroidx/car/app/CarAppService;Landroidx/car/app/SessionInfo;)V
    .locals 0
    .param p1, "service"    # Landroidx/car/app/CarAppService;
    .param p2, "sessionInfo"    # Landroidx/car/app/SessionInfo;

    .line 63
    invoke-direct {p0}, Landroidx/car/app/ICarApp$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 65
    iput-object p2, p0, Landroidx/car/app/CarAppBinder;->mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

    .line 66
    return-void
.end method

.method private getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 312
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-virtual {v0}, Landroidx/car/app/Session;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getHostValidator()Landroidx/car/app/validation/HostValidator;
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Landroidx/car/app/validation/HostValidator;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/CarAppService;

    invoke-virtual {v0}, Landroidx/car/app/CarAppService;->createHostValidator()Landroidx/car/app/validation/HostValidator;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Landroidx/car/app/validation/HostValidator;

    .line 319
    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Landroidx/car/app/validation/HostValidator;

    return-object v0
.end method

.method private onConfigurationChangedInternal(Landroidx/car/app/Session;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "session"    # Landroidx/car/app/Session;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 336
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 337
    const/4 v0, 0x3

    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarConfigurationChanged configuration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/car/app/Session;->onCarConfigurationChangedInternal(Landroid/content/res/Configuration;)V

    .line 342
    return-void
.end method

.method private onNewIntentInternal(Landroidx/car/app/Session;Landroid/content/Intent;)V
    .locals 0
    .param p1, "session"    # Landroidx/car/app/Session;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 326
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 327
    invoke-virtual {p1, p2}, Landroidx/car/app/Session;->onNewIntent(Landroid/content/Intent;)V

    .line 328
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroidx/car/app/CarAppBinder;->onDestroyLifecycle()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    .line 81
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Landroidx/car/app/validation/HostValidator;

    .line 82
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 83
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 84
    return-void
.end method

.method public getAppInfo(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 253
    const-string v0, "getAppInfo"

    :try_start_0
    iget-object v1, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/CarAppService;

    .line 254
    .local v1, "service":Landroidx/car/app/CarAppService;
    nop

    .line 255
    invoke-virtual {v1}, Landroidx/car/app/CarAppService;->getAppInfo()Landroidx/car/app/AppInfo;

    move-result-object v2

    .line 254
    invoke-static {p1, v0, v2}, Landroidx/car/app/utils/RemoteUtils;->sendSuccessResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "service":Landroidx/car/app/CarAppService;
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p1, v0, v1}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method getCurrentSession()Landroidx/car/app/Session;
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    return-object v0
.end method

.method getCurrentSessionInfo()Landroidx/car/app/SessionInfo;
    .locals 1

    .line 379
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

    return-object v0
.end method

.method getHandshakeInfo()Landroidx/car/app/HandshakeInfo;
    .locals 1

    .line 369
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    return-object v0
.end method

.method public getManager(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 224
    new-instance v0, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda5;-><init>(Landroidx/car/app/CarAppBinder;Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V

    invoke-static {v0}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method synthetic lambda$getManager$7$androidx-car-app-CarAppBinder(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 225
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    .line 226
    .local v0, "session":Landroidx/car/app/Session;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "navigation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "getManager"

    packed-switch v1, :pswitch_data_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%s is not a valid manager"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CarApp"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid manager type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    return-void

    .line 235
    :pswitch_0
    nop

    .line 238
    invoke-virtual {v0}, Landroidx/car/app/Session;->getCarContext()Landroidx/car/app/CarContext;

    move-result-object v1

    const-class v3, Landroidx/car/app/navigation/NavigationManager;

    invoke-virtual {v1, v3}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/NavigationManager;

    .line 239
    invoke-virtual {v1}, Landroidx/car/app/navigation/NavigationManager;->getIInterface()Landroidx/car/app/navigation/INavigationManager$Stub;

    move-result-object v1

    .line 235
    invoke-static {p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->sendSuccessResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void

    .line 228
    :pswitch_1
    nop

    .line 231
    invoke-virtual {v0}, Landroidx/car/app/Session;->getCarContext()Landroidx/car/app/CarContext;

    move-result-object v1

    const-class v3, Landroidx/car/app/AppManager;

    invoke-virtual {v1, v3}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/AppManager;

    .line 232
    invoke-virtual {v1}, Landroidx/car/app/AppManager;->getIInterface()Landroidx/car/app/IAppManager$Stub;

    move-result-object v1

    .line 228
    invoke-static {p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->sendSuccessResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void

    :sswitch_data_0
    .sparse-switch
        0x17a21 -> :sswitch_1
        0x6f060a14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$onAppCreate$0$androidx-car-app-CarAppBinder(Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 8
    .param p1, "carHost"    # Landroidx/car/app/ICarHost;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/car/app/CarAppService;

    .line 112
    .local v2, "service":Landroidx/car/app/CarAppService;
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    .line 113
    .local v0, "session":Landroidx/car/app/Session;
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Landroidx/car/app/Session;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/car/app/CarAppBinder;->mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/SessionInfo;

    invoke-virtual {v2, v1}, Landroidx/car/app/CarAppService;->onCreateSession(Landroidx/car/app/SessionInfo;)Landroidx/car/app/Session;

    move-result-object v0

    .line 116
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    move-object v1, v0

    .line 119
    .end local v0    # "session":Landroidx/car/app/Session;
    .local v1, "session":Landroidx/car/app/Session;
    :goto_1
    nop

    .line 120
    invoke-virtual {p0}, Landroidx/car/app/CarAppBinder;->getHandshakeInfo()Landroidx/car/app/HandshakeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/car/app/HandshakeInfo;

    .line 121
    invoke-virtual {v2}, Landroidx/car/app/CarAppService;->getHostInfo()Landroidx/car/app/HostInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/car/app/HostInfo;

    .line 119
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "carHost":Landroidx/car/app/ICarHost;
    .end local p2    # "configuration":Landroid/content/res/Configuration;
    .local v5, "carHost":Landroidx/car/app/ICarHost;
    .local v6, "configuration":Landroid/content/res/Configuration;
    invoke-virtual/range {v1 .. v6}, Landroidx/car/app/Session;->configure(Landroid/content/Context;Landroidx/car/app/HandshakeInfo;Landroidx/car/app/HostInfo;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;)V

    .line 127
    invoke-virtual {v1}, Landroidx/car/app/Session;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleRegistry;

    .line 128
    .local p1, "registry":Landroidx/lifecycle/LifecycleRegistry;
    invoke-virtual {p1}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    .line 129
    .local p2, "state":Landroidx/lifecycle/Lifecycle$State;
    invoke-virtual {v1}, Landroidx/car/app/Session;->getCarContext()Landroidx/car/app/CarContext;

    move-result-object v0

    const-class v3, Landroidx/car/app/ScreenManager;

    invoke-virtual {v0, v3}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ScreenManager;

    .line 130
    invoke-virtual {v0}, Landroidx/car/app/ScreenManager;->getScreenStackInternal()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    .line 131
    .local v0, "screenStackSize":I
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v7, "CarApp"

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    goto :goto_2

    .line 142
    :cond_2
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    const-string v3, "onAppCreate the app was already created"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    invoke-direct {p0, v1, p3}, Landroidx/car/app/CarAppBinder;->onNewIntentInternal(Landroidx/car/app/Session;Landroid/content/Intent;)V

    goto :goto_3

    .line 132
    :cond_4
    :goto_2
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppCreate the app was not yet created or the screen stack was empty state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    invoke-virtual {p1}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stack size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v3}, Landroidx/car/app/Session;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 139
    invoke-virtual {v1}, Landroidx/car/app/Session;->getCarContext()Landroidx/car/app/CarContext;

    move-result-object v3

    const-class v4, Landroidx/car/app/ScreenManager;

    invoke-virtual {v3, v4}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/app/ScreenManager;

    .line 140
    invoke-virtual {v1, p3}, Landroidx/car/app/Session;->onCreateScreen(Landroid/content/Intent;)Landroidx/car/app/Screen;

    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Landroidx/car/app/ScreenManager;->push(Landroidx/car/app/Screen;)V

    .line 147
    :goto_3
    const/4 v3, 0x0

    return-object v3
.end method

.method synthetic lambda$onAppPause$3$androidx-car-app-CarAppBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Session;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onAppResume$2$androidx-car-app-CarAppBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Session;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onAppStart$1$androidx-car-app-CarAppBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Session;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onAppStop$4$androidx-car-app-CarAppBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Session;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onConfigurationChanged$6$androidx-car-app-CarAppBinder(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    invoke-direct {p0, v0, p1}, Landroidx/car/app/CarAppBinder;->onConfigurationChangedInternal(Landroidx/car/app/Session;Landroid/content/res/Configuration;)V

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onNewIntent$5$androidx-car-app-CarAppBinder(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/Session;

    invoke-direct {p0, v0, p1}, Landroidx/car/app/CarAppBinder;->onNewIntentInternal(Landroidx/car/app/Session;Landroid/content/Intent;)V

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppCreate(Landroidx/car/app/ICarHost;Landroid/content/Intent;Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V
    .locals 4
    .param p1, "carHost"    # Landroidx/car/app/ICarHost;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 106
    const-string v0, "CarApp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppCreate intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    new-instance v2, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p3, p2}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda4;-><init>(Landroidx/car/app/CarAppBinder;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)V

    const-string v3, "onAppCreate"

    invoke-static {p4, v3, v2}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string v1, "onAppCreate completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    return-void
.end method

.method public onAppPause(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 177
    nop

    .line 178
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/CarAppBinder;)V

    .line 177
    const-string v2, "onAppPause"

    invoke-static {v0, p1, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 183
    return-void
.end method

.method public onAppResume(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 167
    nop

    .line 168
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda7;-><init>(Landroidx/car/app/CarAppBinder;)V

    .line 167
    const-string v2, "onAppResume"

    invoke-static {v0, p1, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 173
    return-void
.end method

.method public onAppStart(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 157
    nop

    .line 158
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda2;-><init>(Landroidx/car/app/CarAppBinder;)V

    .line 157
    const-string v2, "onAppStart"

    invoke-static {v0, p1, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 163
    return-void
.end method

.method public onAppStop(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 187
    nop

    .line 188
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/CarAppBinder;)V

    .line 187
    const-string v2, "onAppStop"

    invoke-static {v0, p1, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 193
    return-void
.end method

.method onAutoDriveEnabled()V
    .locals 3

    .line 345
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    .line 346
    .local v0, "session":Landroidx/car/app/Session;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroidx/car/app/Session;->getCarContext()Landroidx/car/app/CarContext;

    move-result-object v1

    const-class v2, Landroidx/car/app/navigation/NavigationManager;

    invoke-virtual {v1, v2}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/NavigationManager;

    .line 348
    invoke-virtual {v1}, Landroidx/car/app/navigation/NavigationManager;->onAutoDriveEnabled()V

    .line 350
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 210
    nop

    .line 211
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/CarAppBinder;Landroid/content/res/Configuration;)V

    .line 210
    const-string v2, "onConfigurationChanged"

    invoke-static {v0, p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 219
    return-void
.end method

.method onDestroyLifecycle()V
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    .line 88
    .local v0, "session":Landroidx/car/app/Session;
    if-eqz v0, :cond_0

    .line 89
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/car/app/Session;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 91
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/Session;

    .line 92
    return-void
.end method

.method public onHandshakeCompleted(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IOnDoneCallback;)V
    .locals 16
    .param p1, "handshakeInfo"    # Landroidx/car/app/serialization/Bundleable;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 265
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "onHandshakeCompleted"

    iget-object v0, v1, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/car/app/CarAppService;

    .line 267
    .local v4, "service":Landroidx/car/app/CarAppService;
    nop

    .line 268
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/car/app/serialization/Bundleable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/HandshakeInfo;

    .line 269
    .local v0, "deserializedHandshakeInfo":Landroidx/car/app/HandshakeInfo;
    invoke-virtual {v0}, Landroidx/car/app/HandshakeInfo;->getHostPackageName()Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 271
    .local v7, "uid":I
    new-instance v8, Landroidx/car/app/HostInfo;

    invoke-direct {v8, v6, v7}, Landroidx/car/app/HostInfo;-><init>(Ljava/lang/String;I)V

    .line 272
    .local v8, "hostInfo":Landroidx/car/app/HostInfo;
    invoke-direct {v1}, Landroidx/car/app/CarAppBinder;->getHostValidator()Landroidx/car/app/validation/HostValidator;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/car/app/validation/HostValidator;->isValidHost(Landroidx/car/app/HostInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 273
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown host \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v9}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return-void

    .line 279
    :cond_0
    invoke-virtual {v4}, Landroidx/car/app/CarAppService;->getAppInfo()Landroidx/car/app/AppInfo;

    move-result-object v9

    .line 280
    .local v9, "appInfo":Landroidx/car/app/AppInfo;
    invoke-virtual {v9}, Landroidx/car/app/AppInfo;->getMinCarAppApiLevel()I

    move-result v10

    .line 281
    .local v10, "appMinApiLevel":I
    invoke-virtual {v9}, Landroidx/car/app/AppInfo;->getLatestCarAppApiLevel()I

    move-result v11

    .line 282
    .local v11, "appMaxApiLevel":I
    invoke-virtual {v0}, Landroidx/car/app/HandshakeInfo;->getHostCarAppApiLevel()I

    move-result v12
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .local v12, "hostApiLevel":I
    const-string v13, ")"

    const-string v14, "Host API level ("

    if-le v10, v12, :cond_1

    .line 284
    :try_start_1
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ") is less than the app\'s min API level ("

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v15}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    return-void

    .line 291
    :cond_1
    if-ge v11, v12, :cond_2

    .line 292
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") is greater than the app\'s max API level ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v5}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    return-void

    .line 300
    :cond_2
    invoke-virtual {v4, v8}, Landroidx/car/app/CarAppService;->setHostInfo(Landroidx/car/app/HostInfo;)V

    .line 301
    iput-object v0, v1, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 302
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroidx/car/app/utils/RemoteUtils;->sendSuccessResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    .end local v0    # "deserializedHandshakeInfo":Landroidx/car/app/HandshakeInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "hostInfo":Landroidx/car/app/HostInfo;
    .end local v9    # "appInfo":Landroidx/car/app/AppInfo;
    .end local v10    # "appMinApiLevel":I
    .end local v11    # "appMaxApiLevel":I
    .end local v12    # "hostApiLevel":I
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/car/app/CarAppService;->setHostInfo(Landroidx/car/app/HostInfo;)V

    .line 306
    invoke-static {v2, v3, v0}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 197
    nop

    .line 198
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;-><init>(Landroidx/car/app/CarAppBinder;Landroid/content/Intent;)V

    .line 197
    const-string v2, "onNewIntent"

    invoke-static {v0, p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 205
    return-void
.end method

.method setHandshakeInfo(Landroidx/car/app/HandshakeInfo;)V
    .locals 4
    .param p1, "handshakeInfo"    # Landroidx/car/app/HandshakeInfo;

    .line 358
    invoke-virtual {p1}, Landroidx/car/app/HandshakeInfo;->getHostCarAppApiLevel()I

    move-result v0

    .line 359
    .local v0, "apiLevel":I
    invoke-static {v0}, Landroidx/car/app/versioning/CarAppApiLevels;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iput-object p1, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 364
    return-void

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Car App API level received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
