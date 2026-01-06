.class public interface abstract Landroidx/camera/extensions/impl/ProcessResultImpl;
.super Ljava/lang/Object;
.source "ProcessResultImpl.java"


# virtual methods
.method public abstract onCaptureCompleted(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 60
    return-void
.end method
