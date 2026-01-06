.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->updateEngineParameters(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

.field final synthetic val$engineBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1246
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;->val$engineBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1249
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;"
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 1250
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;->val$engineBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->updateEngineParameters(ILandroid/os/Bundle;)V

    .line 1251
    return-void
.end method
