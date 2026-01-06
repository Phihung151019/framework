.class public final synthetic Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/HostCall;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/car/app/navigation/INavigationHost;

    invoke-static {p1}, Landroidx/car/app/navigation/NavigationManager;->lambda$navigationStarted$1(Landroidx/car/app/navigation/INavigationHost;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
