.class Landroidx/car/app/CarContext$2;
.super Ljava/lang/Object;
.source "CarContext.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/CarContext;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/HostDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/CarContext;

.field final synthetic val$hostDispatcher:Landroidx/car/app/HostDispatcher;


# direct methods
.method constructor <init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/CarContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 737
    iput-object p1, p0, Landroidx/car/app/CarContext$2;->this$0:Landroidx/car/app/CarContext;

    iput-object p2, p0, Landroidx/car/app/CarContext$2;->val$hostDispatcher:Landroidx/car/app/HostDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 740
    iget-object v0, p0, Landroidx/car/app/CarContext$2;->val$hostDispatcher:Landroidx/car/app/HostDispatcher;

    invoke-virtual {v0}, Landroidx/car/app/HostDispatcher;->resetHosts()V

    .line 741
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 742
    return-void
.end method
