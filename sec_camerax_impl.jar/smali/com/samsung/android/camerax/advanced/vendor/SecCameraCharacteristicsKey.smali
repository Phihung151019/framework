.class public final Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;
.super Ljava/lang/Object;
.source "SecCameraCharacteristicsKey.java"


# static fields
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

.field public static final CONTROL_SPECIAL_FUNCTIONS_AVAILABLE_FPS_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_EXPERT_RAW_HIGHRES_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_FUSION_HIGHRES_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_HIGHRES_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_PRO_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
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

.field public static final SCALER_AVAILABLE_UDC_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
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

    .line 25
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.availableFeatures"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 27
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.llHdrEvCompensationList"

    const-class v3, [F

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_LL_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 29
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.mfHdrEvCompensationList"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_MF_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 31
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.specialFunctionsAvailableFpsRanges"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_SPECIAL_FUNCTIONS_AVAILABLE_FPS_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 34
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.control.sdkAvailableFeatures"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_SDK_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 41
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableExpertRawHighresRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_EXPERT_RAW_HIGHRES_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 49
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableHighresRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_HIGHRES_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 57
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableProRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_PRO_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 64
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableSuperNightRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_NIGHT_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 72
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableSuperResolutionRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_RESOLUTION_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 81
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableUdcRawStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_UDC_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 88
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "samsung.android.scaler.availableFusionHighresStreamConfigurations"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_FUSION_HIGHRES_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method
