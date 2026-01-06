.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

.field final synthetic val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;
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

    .line 2075
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput p3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2077
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->-$$Nest$fgetmSDKCameraStateCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;->val$error:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 2078
    return-void
.end method
