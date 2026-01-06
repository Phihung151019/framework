.class public interface abstract Landroidx/car/app/SurfaceCallback;
.super Ljava/lang/Object;
.source "SurfaceCallback.java"


# virtual methods
.method public onClick(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 146
    return-void
.end method

.method public onFling(FF)V
    .locals 0
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 111
    return-void
.end method

.method public onScale(FFF)V
    .locals 0
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scaleFactor"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 131
    return-void
.end method

.method public onScroll(FF)V
    .locals 0
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 96
    return-void
.end method

.method public onStableAreaChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "stableArea"    # Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public onSurfaceAvailable(Landroidx/car/app/SurfaceContainer;)V
    .locals 0
    .param p1, "surfaceContainer"    # Landroidx/car/app/SurfaceContainer;

    .line 41
    return-void
.end method

.method public onSurfaceDestroyed(Landroidx/car/app/SurfaceContainer;)V
    .locals 0
    .param p1, "surfaceContainer"    # Landroidx/car/app/SurfaceContainer;

    .line 81
    return-void
.end method

.method public onVisibleAreaChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "visibleArea"    # Landroid/graphics/Rect;

    .line 56
    return-void
.end method
