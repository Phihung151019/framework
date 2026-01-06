.class public final Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;
.super Ljava/lang/Object;
.source "SemCameraCaptureResultKey.java"


# static fields
.field public static final CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotCondition"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 25
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotExtraInfo"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 33
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotHint"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    .line 41
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotDeviceInfo"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 49
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.runningPhysicalId"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    .line 62
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.liveHdrMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 74
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.unihal.videoVdisMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
