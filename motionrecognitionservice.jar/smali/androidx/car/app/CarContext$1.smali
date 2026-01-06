.class Landroidx/car/app/CarContext$1;
.super Landroidx/car/app/IOnRequestPermissionsListener$Stub;
.source "CarContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/CarContext;->requestPermissions(Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/car/app/OnRequestPermissionsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/CarContext;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic val$listener:Landroidx/car/app/OnRequestPermissionsListener;


# direct methods
.method constructor <init>(Landroidx/car/app/CarContext;Landroidx/lifecycle/Lifecycle;Ljava/util/concurrent/Executor;Landroidx/car/app/OnRequestPermissionsListener;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/CarContext;

    .line 593
    iput-object p1, p0, Landroidx/car/app/CarContext$1;->this$0:Landroidx/car/app/CarContext;

    iput-object p2, p0, Landroidx/car/app/CarContext$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Landroidx/car/app/CarContext$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/car/app/CarContext$1;->val$listener:Landroidx/car/app/OnRequestPermissionsListener;

    invoke-direct {p0}, Landroidx/car/app/IOnRequestPermissionsListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$0(Landroidx/car/app/OnRequestPermissionsListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "listener"    # Landroidx/car/app/OnRequestPermissionsListener;
    .param p1, "approved"    # Ljava/util/List;
    .param p2, "rejected"    # Ljava/util/List;

    .line 600
    invoke-interface {p0, p1, p2}, Landroidx/car/app/OnRequestPermissionsListener;->onRequestPermissionsResult(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "approvedPermissions"    # [Ljava/lang/String;
    .param p2, "rejectedPermissions"    # [Ljava/lang/String;

    .line 597
    iget-object v0, p0, Landroidx/car/app/CarContext$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, "approved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 600
    .local v1, "rejected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/car/app/CarContext$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/car/app/CarContext$1;->val$listener:Landroidx/car/app/OnRequestPermissionsListener;

    new-instance v4, Landroidx/car/app/CarContext$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v0, v1}, Landroidx/car/app/CarContext$1$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/OnRequestPermissionsListener;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 603
    .end local v0    # "approved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "rejected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
