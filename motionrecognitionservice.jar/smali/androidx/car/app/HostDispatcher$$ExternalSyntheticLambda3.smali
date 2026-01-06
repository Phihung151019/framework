.class public final synthetic Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/utils/RemoteUtils$RemoteCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/HostDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/HostDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda3;->f$0:Landroidx/car/app/HostDispatcher;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda3;->f$0:Landroidx/car/app/HostDispatcher;

    invoke-virtual {v0}, Landroidx/car/app/HostDispatcher;->lambda$getHost$3$androidx-car-app-HostDispatcher()Landroidx/car/app/constraints/IConstraintHost;

    move-result-object v0

    return-object v0
.end method
