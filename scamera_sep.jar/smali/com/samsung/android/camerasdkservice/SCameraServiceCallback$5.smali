.class Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;
.super Ljava/lang/Object;
.source "SCameraServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->onEngineResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

.field final synthetic val$resultBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p2, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;->val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object p3, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;->val$resultBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroid/os/Bundle;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 1
    .param p0, "resultBundle"    # Landroid/os/Bundle;
    .param p1, "proc"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onEngineResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;->val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;->val$resultBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 172
    return-void
.end method
