.class public final synthetic Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/utils/RemoteUtils$HostCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/CarAppBinder;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/CarAppBinder;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;->f$0:Landroidx/car/app/CarAppBinder;

    iput-object p2, p0, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final dispatch()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;->f$0:Landroidx/car/app/CarAppBinder;

    iget-object v1, p0, Landroidx/car/app/CarAppBinder$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/car/app/CarAppBinder;->lambda$onNewIntent$5$androidx-car-app-CarAppBinder(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
