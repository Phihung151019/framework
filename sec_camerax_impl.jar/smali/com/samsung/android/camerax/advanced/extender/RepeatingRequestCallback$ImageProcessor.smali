.class public interface abstract Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;
.super Ljava/lang/Object;
.source "RepeatingRequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageProcessor"
.end annotation


# virtual methods
.method public abstract process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Pair;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;",
            "Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;",
            ")V"
        }
    .end annotation
.end method
