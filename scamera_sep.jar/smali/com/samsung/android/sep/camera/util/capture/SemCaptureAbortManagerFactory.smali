.class public Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManagerFactory;
.super Ljava/lang/Object;
.source "SemCaptureAbortManagerFactory.java"


# static fields
.field public static final CAPTURE_TYPE_MULTI_NIGHT:I = 0x2

.field public static final CAPTURE_TYPE_MULTI_NORMAL:I = 0x1

.field public static final CAPTURE_TYPE_SINGLE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureManager(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .locals 2
    .param p0, "clientId"    # I
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "dsMode"    # I

    .line 28
    invoke-static {p3}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManagerFactory;->getCaptureType(I)I

    move-result v0

    .line 29
    .local v0, "captureType":I
    packed-switch v0, :pswitch_data_0

    .line 36
    const/4 v1, 0x0

    return-object v1

    .line 31
    :pswitch_0
    new-instance v1, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;-><init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    return-object v1

    .line 34
    :pswitch_1
    new-instance v1, Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;-><init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCaptureType(I)I
    .locals 2
    .param p0, "dsMode"    # I

    .line 48
    ushr-int/lit8 v0, p0, 0x10

    .line 51
    .local v0, "dynamicShotMode":I
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isSuperNightDS(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x2

    return v1

    .line 53
    :cond_0
    if-nez v0, :cond_1

    .line 54
    const/4 v1, 0x0

    return v1

    .line 56
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
