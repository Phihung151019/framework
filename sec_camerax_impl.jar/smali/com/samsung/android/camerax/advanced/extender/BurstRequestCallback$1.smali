.class Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$1;
.super Ljava/lang/Object;
.source "BurstRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "outputConfigId"    # I
    .param p2, "timestamp"    # J
    .param p4, "imageReference"    # Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .param p5, "physicalCameraId"    # Ljava/lang/String;

    .line 162
    return-void
.end method

.method public onImageDropped(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 167
    return-void
.end method
