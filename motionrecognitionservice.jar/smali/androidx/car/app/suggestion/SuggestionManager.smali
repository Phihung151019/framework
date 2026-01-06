.class public Landroidx/car/app/suggestion/SuggestionManager;
.super Ljava/lang/Object;
.source "SuggestionManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation


# instance fields
.field private final mHostDispatcher:Landroidx/car/app/HostDispatcher;


# direct methods
.method protected constructor <init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "carContext"    # Landroidx/car/app/CarContext;
    .param p2, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p3, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/HostDispatcher;

    iput-object v0, p0, Landroidx/car/app/suggestion/SuggestionManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    .line 104
    new-instance v0, Landroidx/car/app/suggestion/SuggestionManager$1;

    invoke-direct {v0, p0, p3}, Landroidx/car/app/suggestion/SuggestionManager$1;-><init>(Landroidx/car/app/suggestion/SuggestionManager;Landroidx/lifecycle/Lifecycle;)V

    .line 110
    .local v0, "observer":Landroidx/lifecycle/LifecycleObserver;
    invoke-virtual {p3, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 111
    return-void
.end method

.method public static create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/suggestion/SuggestionManager;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 91
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Landroidx/car/app/suggestion/SuggestionManager;

    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/suggestion/SuggestionManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method static synthetic lambda$updateSuggestions$0(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/suggestion/ISuggestionHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "bundle"    # Landroidx/car/app/serialization/Bundleable;
    .param p1, "service"    # Landroidx/car/app/suggestion/ISuggestionHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-interface {p1, p0}, Landroidx/car/app/suggestion/ISuggestionHost;->updateSuggestions(Landroidx/car/app/serialization/Bundleable;)V

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public updateSuggestions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/suggestion/model/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/suggestion/model/Suggestion;>;"
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 69
    :try_start_0
    invoke-static {p1}, Landroidx/car/app/serialization/Bundleable;->create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v0
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v0, "bundle":Landroidx/car/app/serialization/Bundleable;
    nop

    .line 74
    iget-object v1, p0, Landroidx/car/app/suggestion/SuggestionManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v2, Landroidx/car/app/suggestion/SuggestionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/car/app/suggestion/SuggestionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/serialization/Bundleable;)V

    const-string v3, "suggestion"

    const-string v4, "updateSuggestions"

    invoke-virtual {v1, v3, v4, v2}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 81
    return-void

    .line 70
    .end local v0    # "bundle":Landroidx/car/app/serialization/Bundleable;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroidx/car/app/serialization/BundlerException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Serialization failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
