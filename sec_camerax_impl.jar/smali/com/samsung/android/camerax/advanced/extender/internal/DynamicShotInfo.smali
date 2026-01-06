.class public Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
.super Ljava/lang/Object;
.source "DynamicShotInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private final mDynamicShotCondition:I

.field private final mDynamicShotDeviceInfo:J

.field private final mDynamicShotExtraInfo:I

.field private final mDynamicShotMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 46
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 46
    if-nez p1, :cond_0

    .line 47
    iput v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotMode:I

    .line 48
    iput v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotCondition:I

    .line 49
    iput v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 50
    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 52
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 56
    :cond_0
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 57
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotCondition:I

    .line 59
    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotCondition:I

    ushr-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotMode:I

    .line 62
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 63
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 65
    const/16 v2, 0x1b

    invoke-static {p2, v2}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 68
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 67
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotDeviceInfo:J

    goto :goto_0

    .line 71
    :cond_1
    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 74
    :goto_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method public getDynamicShotCondition()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotCondition:I

    return v0
.end method

.method public getDynamicShotCount()I
    .locals 2

    .line 94
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotCondition:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getDynamicShotDeviceInfo()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotDeviceInfo:J

    return-wide v0
.end method

.method public getDynamicShotExtraInfo()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotExtraInfo:I

    return v0
.end method

.method public getDynamicShotMode()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 100
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotMode:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotMode:I

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotCondition:I

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 108
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 100
    const-string v2, "processingMode: 0x%X(%d), dsCondition: 0x%X, dsExtraInfo: 0x%X, dsDeviceInfo: 0x%X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
