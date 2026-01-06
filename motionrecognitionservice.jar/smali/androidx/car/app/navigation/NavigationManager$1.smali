.class Landroidx/car/app/navigation/NavigationManager$1;
.super Landroidx/car/app/navigation/INavigationManager$Stub;
.source "NavigationManager.java"


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

    .line 335
    iput-object p1, p0, Landroidx/car/app/navigation/NavigationManager$1;->this$0:Landroidx/car/app/navigation/NavigationManager;

    iput-object p2, p0, Landroidx/car/app/navigation/NavigationManager$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Landroidx/car/app/navigation/INavigationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onStopNavigation$0$androidx-car-app-navigation-NavigationManager$1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager$1;->this$0:Landroidx/car/app/navigation/NavigationManager;

    invoke-virtual {v0}, Landroidx/car/app/navigation/NavigationManager;->onStopNavigation()V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStopNavigation(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 338
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/navigation/NavigationManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/car/app/navigation/NavigationManager$1$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/navigation/NavigationManager$1;)V

    const-string v2, "onStopNavigation"

    invoke-static {v0, p1, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 345
    return-void
.end method
