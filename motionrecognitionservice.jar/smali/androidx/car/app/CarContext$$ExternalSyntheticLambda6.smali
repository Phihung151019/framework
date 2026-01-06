.class public final synthetic Landroidx/car/app/CarContext$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/managers/ManagerFactory;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/CarContext;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/CarContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda6;->f$0:Landroidx/car/app/CarContext;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/car/app/managers/Manager;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda6;->f$0:Landroidx/car/app/CarContext;

    invoke-virtual {v0}, Landroidx/car/app/CarContext;->lambda$new$8$androidx-car-app-CarContext()Landroidx/car/app/managers/ResultManager;

    move-result-object v0

    return-object v0
.end method
