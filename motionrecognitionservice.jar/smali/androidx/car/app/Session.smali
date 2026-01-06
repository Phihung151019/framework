.class public abstract Landroidx/car/app/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/Session$LifecycleObserverImpl;
    }
.end annotation


# instance fields
.field private mCarContext:Landroidx/car/app/CarContext;

.field private final mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field private mRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field final mRegistryPublic:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroidx/car/app/Session$LifecycleObserverImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/Session$LifecycleObserverImpl;-><init>(Landroidx/car/app/Session;)V

    iput-object v0, p0, Landroidx/car/app/Session;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    .line 56
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 57
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/car/app/Session;->mRegistryPublic:Landroidx/lifecycle/LifecycleRegistry;

    .line 63
    iget-object v0, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/car/app/Session;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    iget-object v0, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v0}, Landroidx/car/app/CarContext;->create(Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/CarContext;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    .line 65
    return-void
.end method


# virtual methods
.method configure(Landroid/content/Context;Landroidx/car/app/HandshakeInfo;Landroidx/car/app/HostInfo;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "handshakeInfo"    # Landroidx/car/app/HandshakeInfo;
    .param p3, "hostInfo"    # Landroidx/car/app/HostInfo;
    .param p4, "carHost"    # Landroidx/car/app/ICarHost;
    .param p5, "configuration"    # Landroid/content/res/Configuration;

    .line 231
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0, p2}, Landroidx/car/app/CarContext;->updateHandshakeInfo(Landroidx/car/app/HandshakeInfo;)V

    .line 232
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0, p3}, Landroidx/car/app/CarContext;->updateHostInfo(Landroidx/car/app/HostInfo;)V

    .line 233
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0, p1, p5}, Landroidx/car/app/CarContext;->attachBaseContext(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 234
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0, p4}, Landroidx/car/app/CarContext;->setCarHost(Landroidx/car/app/ICarHost;)V

    .line 235
    return-void
.end method

.method public final getCarContext()Landroidx/car/app/CarContext;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/CarContext;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/car/app/Session;->mRegistryPublic:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method getLifecycleInternal()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 187
    iget-object v0, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 188
    return-void
.end method

.method public onCarConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 116
    return-void
.end method

.method onCarConfigurationChangedInternal(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 242
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0, p1}, Landroidx/car/app/CarContext;->onCarConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-object v0, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0}, Landroidx/car/app/CarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/app/Session;->onCarConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    return-void
.end method

.method public abstract onCreateScreen(Landroid/content/Intent;)Landroidx/car/app/Screen;
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 103
    return-void
.end method

.method public setCarContextInternal(Landroidx/car/app/CarContext;)V
    .locals 0
    .param p1, "carContext"    # Landroidx/car/app/CarContext;

    .line 217
    iput-object p1, p0, Landroidx/car/app/Session;->mCarContext:Landroidx/car/app/CarContext;

    .line 218
    return-void
.end method

.method public setLifecycleRegistryInternal(Landroidx/lifecycle/LifecycleRegistry;)V
    .locals 2
    .param p1, "registry"    # Landroidx/lifecycle/LifecycleRegistry;

    .line 194
    iput-object p1, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 195
    iget-object v0, p0, Landroidx/car/app/Session;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/car/app/Session;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 196
    return-void
.end method
