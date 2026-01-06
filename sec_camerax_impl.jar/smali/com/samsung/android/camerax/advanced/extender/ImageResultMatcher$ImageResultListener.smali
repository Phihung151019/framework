.class public interface abstract Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
.super Ljava/lang/Object;
.source "ImageResultMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageResultListener"
.end annotation


# virtual methods
.method public abstract onImageResultMatched(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;I)V
.end method

.method public abstract onMatchFailed()V
.end method
