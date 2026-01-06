.class public final synthetic Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/HostCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/AppManager;

.field public final synthetic f$1:Landroidx/car/app/SurfaceCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/AppManager;Landroidx/car/app/SurfaceCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;->f$0:Landroidx/car/app/AppManager;

    iput-object p2, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;->f$1:Landroidx/car/app/SurfaceCallback;

    return-void
.end method


# virtual methods
.method public final dispatch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;->f$0:Landroidx/car/app/AppManager;

    iget-object v1, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;->f$1:Landroidx/car/app/SurfaceCallback;

    check-cast p1, Landroidx/car/app/IAppHost;

    invoke-virtual {v0, v1, p1}, Landroidx/car/app/AppManager;->lambda$setSurfaceCallback$0$androidx-car-app-AppManager(Landroidx/car/app/SurfaceCallback;Landroidx/car/app/IAppHost;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
