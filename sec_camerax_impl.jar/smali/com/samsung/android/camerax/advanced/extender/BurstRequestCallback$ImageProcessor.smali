.class public interface abstract Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;
.super Ljava/lang/Object;
.source "BurstRequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageProcessor"
.end annotation


# virtual methods
.method public abstract process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;JLjava/util/Map;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;",
            ")V"
        }
    .end annotation
.end method
