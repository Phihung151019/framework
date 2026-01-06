.class Lcom/samsung/android/camera/CameraManagerCompat_V3$2;
.super Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
.source "CameraManagerCompat_V3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V3;->createDevice(Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;)Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->clearRequest()V

    .line 236
    return-void
.end method

.method public close()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->close()V

    .line 247
    return-void
.end method

.method public createDefaultRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->createDefaultRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public createStream(Landroid/view/Surface;Landroid/util/Size;)I
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "size"    # Landroid/util/Size;

    .line 213
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->createStream(Landroid/view/Surface;Landroid/util/Size;)I

    move-result v0

    return v0
.end method

.method public deleteStream(I)V
    .locals 1
    .param p1, "streamId"    # I

    .line 218
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->deleteStream(I)V

    .line 219
    return-void
.end method

.method public getCameraCharacteristic(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    .line 208
    invoke-static {p1}, Lcom/samsung/android/camera/CameraManagerCompat_V3;->-$$Nest$smcreateCharacteristicBuilder(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->getCameraCharacteristic(Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "targetLensFacing"    # I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->open(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraManagerCompat_V3;->-$$Nest$smcreateDeviceCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDeviceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->setCallback(Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDeviceCallback;)V

    .line 242
    return-void
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;[IZ)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streamIds"    # [I
    .param p3, "streaming"    # Z

    .line 230
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V3$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/CameraManagerCompat_V3$RemoteDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;[IZ)V

    .line 231
    return-void
.end method
