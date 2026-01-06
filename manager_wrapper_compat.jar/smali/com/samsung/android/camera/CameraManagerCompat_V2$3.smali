.class Lcom/samsung/android/camera/CameraManagerCompat_V2$3;
.super Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
.source "CameraManagerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V2;->createCharacteristicBuilder(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-direct {p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addSupportedAEMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "aeMode"    # I

    .line 306
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedAEMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 307
    return-object p0
.end method

.method public addSupportedAFMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "afMode"    # I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedAFMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 319
    return-object p0
.end method

.method public addSupportedAWBMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "awbMode"    # I

    .line 312
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedAWBMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 313
    return-object p0
.end method

.method public addSupportedCaptureSize(Landroid/util/Size;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "size"    # Landroid/util/Size;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedCaptureSize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 295
    return-object p0
.end method

.method public addSupportedControlMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "controlMode"    # I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedControlMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 337
    return-object p0
.end method

.method public addSupportedEffectMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "effectMode"    # I

    .line 324
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedEffectMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 325
    return-object p0
.end method

.method public addSupportedSceneMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "sceneMode"    # I

    .line 330
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedSceneMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 331
    return-object p0
.end method

.method public addSupportedStreamingSize(Landroid/util/Size;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "size"    # Landroid/util/Size;

    .line 288
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedStreamingSize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 289
    return-object p0
.end method

.method public build()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->build()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public setAELockAvailable(Z)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "available"    # Z

    .line 276
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setAELockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 277
    return-object p0
.end method

.method public setAWBLockAvailable(Z)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "available"    # Z

    .line 282
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setAWBLockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 283
    return-object p0
.end method

.method public setActiveArraySize(Landroid/util/Size;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "size"    # Landroid/util/Size;

    .line 258
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setActiveArraySize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 259
    return-object p0
.end method

.method public setFlashAvailable(Z)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "available"    # Z

    .line 300
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setFlashAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 301
    return-object p0
.end method

.method public setLensFacing(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "facing"    # I

    .line 270
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setLensFacing(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 271
    return-object p0
.end method

.method public setSensorOrientation(I)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 1
    .param p1, "orientation"    # I

    .line 264
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;->val$builder:Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setSensorOrientation(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 265
    return-object p0
.end method
