.class public final Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;
.super Ljava/lang/Object;
.source "SemCameraCaptureRequestKey.java"


# static fields
.field public static final CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_EXPOSURE_TABLE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SELFIE_TONE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.dynamicShotExtraInfo"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.dynamicShotHint"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 40
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.lightConditionEnableMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 54
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.liveHdrMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 58
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.cameraClient"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 69
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.shootingMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 77
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.dynamicShotDeviceInfo"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 86
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.unihal.videoMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 95
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.unihal.videoAutoFramingMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 107
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.unihal.videoVdisMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 115
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.transientAction"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 123
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.zoomJumpTargetRatio"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 127
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.scaler.zoomRatio"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 136
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.superNightShotMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 144
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.capturePhysicalId"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 154
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.exposureTable"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_EXPOSURE_TABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 164
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.personalPresetIndex"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SELFIE_TONE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
