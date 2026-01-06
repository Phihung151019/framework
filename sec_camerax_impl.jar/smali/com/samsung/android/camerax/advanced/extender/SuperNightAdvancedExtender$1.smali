.class Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$1;
.super Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
.source "SuperNightAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->init(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;

    invoke-direct {p0, p2}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method


# virtual methods
.method public getAvailableCaptureRequestKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-super {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->-$$Nest$smisVideoStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public getAvailableCaptureResultKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-super {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->-$$Nest$smisVideoStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-object v0
.end method
