.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;
.super Ljava/util/HashMap;
.source "SemCameraEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;)V
    .locals 2
    .param p1, "this$1"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1731
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1733
    nop

    .line 1735
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCamera;->getInstance()Lcom/samsung/android/sep/camera/SemCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCamera;->getSEPClientVersion()Ljava/lang/String;

    move-result-object v0

    .line 1733
    const-string v1, "extra"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 1738
    invoke-virtual {v0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 1736
    const-string v1, "sdkv"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    return-void
.end method
