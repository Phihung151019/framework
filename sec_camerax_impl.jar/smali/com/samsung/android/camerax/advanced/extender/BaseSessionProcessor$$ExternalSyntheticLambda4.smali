.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    return-void
.end method


# virtual methods
.method public final process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;JLjava/util/Map;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->processCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;JLjava/util/Map;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V

    return-void
.end method
