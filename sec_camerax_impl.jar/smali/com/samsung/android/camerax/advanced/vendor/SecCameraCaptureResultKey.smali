.class public final Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;
.super Ljava/lang/Object;
.source "SecCameraCaptureResultKey.java"


# static fields
.field public static final CONTROL_DYNAMIC_SHOT_CAPTURE_DURATION:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;
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

.field public static final SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureResult$Key;
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

    .line 25
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotCondition"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 28
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotExtraInfo"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 31
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotHint"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    .line 34
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotDeviceInfo"

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 37
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.dynamicShotCaptureDuration"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_CAPTURE_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 40
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.control.runningPhysicalId"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    .line 43
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "samsung.android.sensor.streamType"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method
