.class public final synthetic Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/utils/RemoteUtils$HostCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

.field public final synthetic f$1:Landroidx/car/app/serialization/Bundleable;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroidx/car/app/serialization/Bundleable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    iput-object p2, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroidx/car/app/serialization/Bundleable;

    return-void
.end method


# virtual methods
.method public final dispatch()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    iget-object v1, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroidx/car/app/serialization/Bundleable;

    invoke-virtual {v0, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onSurfaceDestroyed$3$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(Landroidx/car/app/serialization/Bundleable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
