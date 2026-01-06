.class Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$1;
.super Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
.source "BeautyAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;->init(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;
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

    .line 59
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

    .line 62
    invoke-super {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
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

    .line 69
    invoke-super {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method
