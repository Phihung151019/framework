.class public final synthetic Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/managers/ManagerFactory;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/CarContext;

.field public final synthetic f$1:Landroidx/car/app/HostDispatcher;

.field public final synthetic f$2:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;->f$0:Landroidx/car/app/CarContext;

    iput-object p2, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;->f$1:Landroidx/car/app/HostDispatcher;

    iput-object p3, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;->f$2:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/car/app/managers/Manager;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;->f$0:Landroidx/car/app/CarContext;

    iget-object v1, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;->f$1:Landroidx/car/app/HostDispatcher;

    iget-object v2, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda7;->f$2:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Landroidx/car/app/CarContext;->lambda$new$9$androidx-car-app-CarContext(Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/suggestion/SuggestionManager;

    move-result-object v0

    return-object v0
.end method
