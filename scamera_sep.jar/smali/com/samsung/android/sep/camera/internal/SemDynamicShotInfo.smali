.class public Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;
.super Ljava/lang/Object;
.source "SemDynamicShotInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDynamicShotInfo"


# instance fields
.field protected mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field protected final mDynamicShotCondition:I

.field protected final mDynamicShotDeviceInfo:J

.field protected final mDynamicShotExtraInfo:I

.field protected final mProcessingMode:I


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .param p1, "processingMode"    # I
    .param p2, "dynamicShotCondition"    # I
    .param p3, "dynamicShotExtraInfo"    # I

    .line 143
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "processingMode":I
    .end local p2    # "dynamicShotCondition":I
    .end local p3    # "dynamicShotExtraInfo":I
    .local v1, "processingMode":I
    .local v2, "dynamicShotCondition":I
    .local v3, "dynamicShotExtraInfo":I
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;-><init>(IIIJ)V

    .line 144
    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 2
    .param p1, "processingMode"    # I
    .param p2, "dynamicShotCondition"    # I
    .param p3, "dynamicShotExtraInfo"    # I
    .param p4, "dynamicShotDeviceInfo"    # J

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mProcessingMode:I

    .line 128
    iput p2, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotCondition:I

    .line 129
    iput p3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 130
    iput-wide p4, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 131
    const-string v0, "SemDynamicShotInfo"

    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "captureResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 90
    const-string v0, "SemDynamicShotInfo"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 90
    if-nez p1, :cond_0

    .line 91
    iput v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mProcessingMode:I

    .line 92
    iput v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotCondition:I

    .line 93
    iput v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 94
    iput-wide v1, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_0
    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 100
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotCondition:I

    .line 101
    iget v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotCondition:I

    ushr-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mProcessingMode:I

    .line 104
    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 105
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 106
    nop

    .line 107
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 108
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 110
    :cond_1
    nop

    :goto_0
    iput-wide v1, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method


# virtual methods
.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getDynamicShotCondition()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotCondition:I

    return v0
.end method

.method public getDynamicShotDeviceInfo()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotDeviceInfo:J

    return-wide v0
.end method

.method public getDynamicShotExtraInfo()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotExtraInfo:I

    return v0
.end method

.method public getProcessingMode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mProcessingMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 149
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget v1, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mProcessingMode:I

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mProcessingMode:I

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotCondition:I

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotExtraInfo:I

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->mDynamicShotDeviceInfo:J

    .line 156
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 149
    const-string v2, "processingMode: 0x%X(%d), dsCondition: 0x%X, dsExtraInfo: 0x%X, dsDeviceInfo: 0x%X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
