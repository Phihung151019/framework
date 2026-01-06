.class Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;
.super Landroidx/car/app/ISurfaceCallback$Stub;
.source "RemoteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/utils/RemoteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceCallbackStub"
.end annotation


# instance fields
.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mSurfaceCallback:Landroidx/car/app/SurfaceCallback;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/SurfaceCallback;)V
    .locals 0
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "surfaceCallback"    # Landroidx/car/app/SurfaceCallback;

    .line 271
    invoke-direct {p0}, Landroidx/car/app/ISurfaceCallback$Stub;-><init>()V

    .line 272
    iput-object p1, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 273
    iput-object p2, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    .line 274
    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$7$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(FF)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    invoke-interface {v0, p1, p2}, Landroidx/car/app/SurfaceCallback;->onClick(FF)V

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onFling$5$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(FF)Ljava/lang/Object;
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    invoke-interface {v0, p1, p2}, Landroidx/car/app/SurfaceCallback;->onFling(FF)V

    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onScale$6$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(FFF)Ljava/lang/Object;
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scaleFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/car/app/SurfaceCallback;->onScale(FFF)V

    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onScroll$4$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(FF)Ljava/lang/Object;
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    invoke-interface {v0, p1, p2}, Landroidx/car/app/SurfaceCallback;->onScroll(FF)V

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onStableAreaChanged$2$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .param p1, "stableArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/SurfaceCallback;->onStableAreaChanged(Landroid/graphics/Rect;)V

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onSurfaceAvailable$0$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(Landroidx/car/app/serialization/Bundleable;)Ljava/lang/Object;
    .locals 2
    .param p1, "surfaceContainer"    # Landroidx/car/app/serialization/Bundleable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    .line 284
    invoke-virtual {p1}, Landroidx/car/app/serialization/Bundleable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/SurfaceContainer;

    .line 283
    invoke-interface {v0, v1}, Landroidx/car/app/SurfaceCallback;->onSurfaceAvailable(Landroidx/car/app/SurfaceContainer;)V

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onSurfaceDestroyed$3$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(Landroidx/car/app/serialization/Bundleable;)Ljava/lang/Object;
    .locals 2
    .param p1, "surfaceContainer"    # Landroidx/car/app/serialization/Bundleable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    .line 319
    invoke-virtual {p1}, Landroidx/car/app/serialization/Bundleable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/SurfaceContainer;

    .line 318
    invoke-interface {v0, v1}, Landroidx/car/app/SurfaceCallback;->onSurfaceDestroyed(Landroidx/car/app/SurfaceContainer;)V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onVisibleAreaChanged$1$androidx-car-app-utils-RemoteUtils$SurfaceCallbackStub(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .param p1, "visibleArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Landroidx/car/app/SurfaceCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/SurfaceCallback;->onVisibleAreaChanged(Landroid/graphics/Rect;)V

    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)V

    const-string v2, "onClick"

    invoke-static {v0, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 354
    return-void
.end method

.method public onFling(FF)V
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 334
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda5;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)V

    const-string v2, "onFling"

    invoke-static {v0, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 338
    return-void
.end method

.method public onScale(FFF)V
    .locals 3
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scaleFactor"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 342
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda6;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFF)V

    const-string v2, "onScale"

    invoke-static {v0, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 346
    return-void
.end method

.method public onScroll(FF)V
    .locals 3
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 326
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda4;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)V

    const-string v2, "onScroll"

    invoke-static {v0, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 330
    return-void
.end method

.method public onStableAreaChanged(Landroid/graphics/Rect;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "stableArea"    # Landroid/graphics/Rect;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 303
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda7;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroid/graphics/Rect;)V

    const-string v2, "onStableAreaChanged"

    invoke-static {v0, p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 309
    return-void
.end method

.method public onSurfaceAvailable(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "surfaceContainer"    # Landroidx/car/app/serialization/Bundleable;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 278
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroidx/car/app/serialization/Bundleable;)V

    const-string v2, "onSurfaceAvailable"

    invoke-static {v0, p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 287
    return-void
.end method

.method public onSurfaceDestroyed(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "surfaceContainer"    # Landroidx/car/app/serialization/Bundleable;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 313
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroidx/car/app/serialization/Bundleable;)V

    const-string v2, "onSurfaceDestroyed"

    invoke-static {v0, p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 322
    return-void
.end method

.method public onVisibleAreaChanged(Landroid/graphics/Rect;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "visibleArea"    # Landroid/graphics/Rect;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 291
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda2;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroid/graphics/Rect;)V

    const-string v2, "onVisibleAreaChanged"

    invoke-static {v0, p2, v2, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 299
    return-void
.end method
