.class public final synthetic Landroidx/car/app/AppManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/location/LocationListenerCompat;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/AppManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/AppManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda5;->f$0:Landroidx/car/app/AppManager;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda5;->f$0:Landroidx/car/app/AppManager;

    invoke-virtual {v0, p1}, Landroidx/car/app/AppManager;->lambda$new$7$androidx-car-app-AppManager(Landroid/location/Location;)V

    return-void
.end method
