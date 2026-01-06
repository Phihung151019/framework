.class public abstract Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.super Ljava/lang/Object;
.source "CameraManagerCompat_V3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CharacteristicBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addSupportedAEMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedAFMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedAWBMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedCaptureSize(Landroid/util/Size;)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedControlMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedEffectMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedSceneMode(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract addSupportedStreamingSize(Landroid/util/Size;)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract build()Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setAELockAvailable(Z)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract setAWBLockAvailable(Z)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract setActiveArraySize(Landroid/util/Size;)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract setFlashAvailable(Z)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract setLensFacing(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method

.method public abstract setSensorOrientation(I)Lcom/samsung/android/camera/CameraManagerCompat_V3$CharacteristicBuilder;
.end method
