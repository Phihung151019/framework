.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;
.super Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicShotInfo"
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "processingMode"    # I
    .param p2, "dynamicShotCondition"    # I
    .param p3, "dynamicShotExtraInfo"    # I

    .line 1322
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;-><init>(III)V

    .line 1323
    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0
    .param p1, "processingMode"    # I
    .param p2, "dynamicShotCondition"    # I
    .param p3, "dynamicShotExtraInfo"    # I
    .param p4, "dynamicShotDeviceInfo"    # J

    .line 1306
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;-><init>(IIIJ)V

    .line 1311
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 1290
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 1291
    return-void
.end method
