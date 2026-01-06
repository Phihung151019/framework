.class Lcom/samsung/android/camera/CameraManagerCompat_V3$4;
.super Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDeviceCallback;
.source "CameraManagerCompat_V3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V3;->createDeviceCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$4;->val$callback:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    invoke-direct {p0}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$4;->val$callback:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;->onCaptureResult(Ljava/util/Map;)V

    .line 363
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$4;->val$callback:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;->onError(I)V

    .line 368
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$4;->val$callback:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;->onOrientationChanged(I)V

    .line 374
    return-void
.end method
