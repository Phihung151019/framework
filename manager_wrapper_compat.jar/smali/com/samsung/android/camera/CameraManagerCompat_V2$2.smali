.class Lcom/samsung/android/camera/CameraManagerCompat_V2$2;
.super Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
.source "CameraManagerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V2;->createDevice(Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;)Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->clearRequest()V

    .line 233
    return-void
.end method

.method public close()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->close()V

    .line 244
    return-void
.end method

.method public createDefaultRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->createDefaultRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public createStream(Landroid/view/Surface;Landroid/util/Size;)I
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "size"    # Landroid/util/Size;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->createStream(Landroid/view/Surface;Landroid/util/Size;)I

    move-result v0

    return v0
.end method

.method public deleteStream(I)V
    .locals 1
    .param p1, "streamId"    # I

    .line 215
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->deleteStream(I)V

    .line 216
    return-void
.end method

.method public getCameraCharacteristic(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 204
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    .line 205
    invoke-static {p1}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->-$$Nest$smcreateCharacteristicBuilder(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->getCameraCharacteristic(Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "targetLensFacing"    # I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->open(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    .line 238
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->-$$Nest$smcreateDeviceCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->setCallback(Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;)V

    .line 239
    return-void
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;[IZ)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streamIds"    # [I
    .param p3, "streaming"    # Z

    .line 227
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;->val$remoteDevice:Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;[IZ)V

    .line 228
    return-void
.end method
