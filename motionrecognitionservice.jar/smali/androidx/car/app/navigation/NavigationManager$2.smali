.class Landroidx/car/app/navigation/NavigationManager$2;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/navigation/NavigationManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/navigation/NavigationManager;

.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Landroidx/car/app/navigation/NavigationManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/navigation/NavigationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Landroidx/car/app/navigation/NavigationManager$2;->this$0:Landroidx/car/app/navigation/NavigationManager;

    iput-object p2, p0, Landroidx/car/app/navigation/NavigationManager$2;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 350
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager$2;->this$0:Landroidx/car/app/navigation/NavigationManager;

    invoke-virtual {v0}, Landroidx/car/app/navigation/NavigationManager;->onStopNavigation()V

    .line 351
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager$2;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 352
    return-void
.end method
