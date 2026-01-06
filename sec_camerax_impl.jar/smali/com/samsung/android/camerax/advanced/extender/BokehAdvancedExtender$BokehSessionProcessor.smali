.class Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;
.super Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
.source "BokehAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BokehSessionProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->this$0:Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;

    .line 135
    iget-object v0, p1, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    iget-object p1, p1, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected addCaptureRequestsLocked(Landroid/hardware/camera2/TotalCaptureResult;Ljava/util/List;Z)V
    .locals 3
    .param p1, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "postviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;Z)V"
        }
    .end annotation

    .line 149
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 150
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 151
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->this$0:Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 153
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 155
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 157
    .local v0, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method protected applyRepeatingRequestParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->this$0:Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;

    iget-object v0, v0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 143
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 144
    return-void
.end method
