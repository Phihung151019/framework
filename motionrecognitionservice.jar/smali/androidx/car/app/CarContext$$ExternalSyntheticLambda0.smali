.class public final synthetic Landroidx/car/app/CarContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/HostCall;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final dispatch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/CarContext$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    check-cast p1, Landroidx/car/app/ICarHost;

    invoke-static {v0, p1}, Landroidx/car/app/CarContext;->lambda$startCarApp$0(Landroid/content/Intent;Landroidx/car/app/ICarHost;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
