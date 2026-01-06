.class Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;
.super Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
.source "BeautyAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautySessionProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->this$0:Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;

    .line 132
    iget-object v0, p1, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    iget-object p1, p1, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 134
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

    .line 146
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 147
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 148
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->this$0:Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 150
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 152
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 154
    .local v0, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 155
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method protected applyRepeatingRequestParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->this$0:Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;

    iget-object v0, v0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BeautyAdvancedExtender$BeautySessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 140
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 141
    return-void
.end method
