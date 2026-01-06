.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

.field final synthetic val$cameraDevice:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;
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

    .line 2020
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2022
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->-$$Nest$fgetmSDKCameraStateCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    .line 2023
    return-void
.end method
