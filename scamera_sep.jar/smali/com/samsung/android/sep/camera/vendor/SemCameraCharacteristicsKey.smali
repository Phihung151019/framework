.class public final Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;
.super Ljava/lang/Object;
.source "SemCameraCharacteristicsKey.java"


# static fields
.field public static final CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_LL_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final CONTROL_MF_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final CONTROL_SDK_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_SPECIAL_FUNCTIONS_AVAILABLE_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_MAX_DIGITAL_ZOOM_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_MIN_DIGITAL_ZOOM_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_PICTURE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_SUPER_NIGHT_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_SUPER_RESOLUTION_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final UNIHAL_VIDEO_AVAILABLE_AUTO_FRAMING_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final UNIHAL_VIDEO_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.availableFeatures"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 26
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.llHdrEvCompensationList"

    const-class v3, [F

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_LL_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 31
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.mfHdrEvCompensationList"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_MF_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 43
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.specialFunctionsAvailableFpsRanges"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_SPECIAL_FUNCTIONS_AVAILABLE_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 54
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.unihal.videoAvailableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->UNIHAL_VIDEO_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 64
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.afAvailableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 75
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.sdkAvailableFeatures"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_SDK_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 88
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.unihal.videoAvailableAutoFramingStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->UNIHAL_VIDEO_AVAILABLE_AUTO_FRAMING_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 98
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableMinDigitalZoomList"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_MIN_DIGITAL_ZOOM_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 107
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableMaxDigitalZoomList"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 117
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availablePictureStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_PICTURE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 128
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableSuperNightRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_NIGHT_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 139
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableSuperResolutionRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_RESOLUTION_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
