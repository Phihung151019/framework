.class public abstract Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;,
        Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CaptureParameterClazz:",
        "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
        "CaptureCallbackClazz:",
        "Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;",
        "DynamicShotInfoClazz:",
        "Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;",
        "ProcessorParameterClazz:",
        "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CAMERA_CONFIG_AUTO_FRAMING_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_CONFIG_EXPOSURE_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_CONFIG_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_CONFIG_SELFIE_TONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_CONFIG_SUPER_NIGHT_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;",
            ">;"
        }
    .end annotation
.end field

.field protected static final CAPTURE_MODE_CAPTURE_BURST:I = 0xf03

.field protected static final CAPTURE_MODE_CAPTURE_BURST_RAW:I = 0xf04

.field protected static final CAPTURE_MODE_CAPTURE_SINGLE:I = 0xf02

.field public static final PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemCameraEffectProcessor"


# instance fields
.field isPendingDeInit:Z

.field protected isThreadRespawnNeeded:Z

.field protected mActiveEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field protected mBackgroundHandler:Landroid/os/Handler;

.field protected mCameraConfigCbManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;",
            "Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field protected mCameraID:Ljava/lang/String;

.field protected mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field protected final mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

.field protected mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mClientId:Ljava/lang/Integer;

.field protected mContext:Landroid/content/Context;

.field protected mDynamicShotExtraInfo:I

.field protected mDynamicShotProcessingMode:I

.field protected mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

.field protected mIsTest:Z

.field protected mIsUDCCamera:Z

.field protected mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

.field protected mOnImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<",
            "TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.ImageAvailable",
            "Listener;"
        }
    .end annotation
.end field

.field protected mOnJPEGImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<",
            "TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.JPEGImageAvailable",
            "Listener;"
        }
    .end annotation
.end field

.field protected mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field protected mPictureImageWriter:Landroid/media/ImageWriter;

.field protected mPictureSize:Landroid/util/Size;

.field protected mPreviewCallback:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

.field protected mPreviewImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<",
            "TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.PreviewImageAvailable",
            "Listener;"
        }
    .end annotation
.end field

.field protected mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

.field protected mPreviewImageWriter:Landroid/media/ImageWriter;

.field private final mPreviewLock:Ljava/lang/Object;

.field protected mPreviewSize:Landroid/util/Size;

.field protected mProcessHandler:Landroid/os/Handler;

.field protected final mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

.field protected mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

.field protected mProcessorEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

.field protected final mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

.field protected mRawOutputStreamConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSDKEngineCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

.field protected mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

.field protected mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

.field protected mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

.field private mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

.field protected final mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mServicePreviewLock:Ljava/lang/Object;

.field protected mSessionStateCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<",
            "TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
        }
    .end annotation
.end field

.field protected mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

.field protected mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

.field protected semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;


# direct methods
.method public static synthetic $r8$lambda$EFOgmF1eWBnzbQWpIUYOFF9nWQ8(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->lambda$sendErrorCallback$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zxucDWSnGsTIOdxvcnXYl6pEwUU(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->lambda$sendOnPictureAvailable$5(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewLock(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSDKEngineCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKEngineCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServicePreviewLock(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServicePreviewLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceCb(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeinit(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleDeinit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->resetProcessorParameter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 196
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "night_enable"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 204
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "hdr_enable"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 212
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "image_format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 220
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "photo_hdr"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 228
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "beauty_parameter"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 232
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "single_capture"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 240
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "client_mode"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 249
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "sdk_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 257
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "live_hdr_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 266
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "super_night_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_SUPER_NIGHT_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 275
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "preview_vdis_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 279
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "auto_framing_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_AUTO_FRAMING_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 288
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "exposure_table_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_EXPOSURE_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 297
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const-string v1, "selfie_tone_control"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_SELFIE_TONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 304
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mDynamicShotExtraInfo:I

    .line 89
    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mDynamicShotProcessingMode:I

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 95
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewSize:Landroid/util/Size;

    .line 98
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 120
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 122
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    .line 135
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureImageWriter:Landroid/media/ImageWriter;

    .line 137
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 140
    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mActiveEngineList:Ljava/util/List;

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsUDCCamera:Z

    .line 175
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServicePreviewLock:Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewLock:Ljava/lang/Object;

    .line 178
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsTest:Z

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 306
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-direct {v0}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 307
    new-instance v0, Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-direct {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setClientId(I)V

    .line 309
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;-><init>(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 311
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->startBackgroundThread()V

    .line 312
    return-void
.end method

.method private checkStateForInitialize()V
    .locals 3

    .line 461
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    aput-object v2, v0, v1

    .line 462
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v2, "initialize"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private checkVendorFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 1407
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-static {}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->getInstance()Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "vendorLibFeature"    # Ljava/lang/String;
    .param p2, "lightModeParameter"    # Z

    .line 1418
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dispatchOnPictureAvailable(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "imageByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "shotCondition"    # I

    .line 1356
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1357
    return-void

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 1361
    invoke-virtual {v0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 1360
    const-string v1, "2.1.0"

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;I)V

    .line 1367
    :goto_0
    return-void
.end method

.method private getPreviewImage()Landroid/media/Image;
    .locals 2

    .line 1082
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    const/4 v0, 0x0

    .line 1084
    .local v0, "previewImage":Landroid/media/Image;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1087
    goto :goto_0

    .line 1085
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1088
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v0
.end method

.method private declared-synchronized handleDeinit()V
    .locals 2

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$2;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 705
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->resetProcessorParameter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initParams(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "pictureSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mContext:Landroid/content/Context;

    .line 367
    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 369
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 370
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 371
    new-instance v1, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-direct {v1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 372
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setContext(Landroid/content/Context;)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-virtual {v1, p2}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setCameraId(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-virtual {v1, p3}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setPictureSize(Landroid/util/Size;)V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setProcessorId(I)V

    .line 376
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    const-string v3, "2.0.2"

    invoke-virtual {v1, v3}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setSDKVersion(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setIsSALoggingDisabled(Z)V

    .line 378
    return-void
.end method

.method private initParams(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 467
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 468
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mContext:Landroid/content/Context;

    .line 469
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 471
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewSize:Landroid/util/Size;

    .line 472
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getEngineCallback()Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKEngineCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    .line 473
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKServiceEventCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 474
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 475
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->isThreadRespawnNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isThreadRespawnNeeded:Z

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraConfigCbManagers:Ljava/util/HashMap;

    .line 477
    return-void
.end method

.method private isBurstDynamicShotMode()Z
    .locals 6

    .line 1453
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1454
    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1458
    invoke-virtual {v0, v3}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1462
    .local v0, "nightModeParameter":Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1463
    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1467
    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    nop

    .line 1471
    .local v1, "hdrModeParameter":Z
    :goto_3
    iget v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mDynamicShotProcessingMode:I

    const-string v4, "image_enhance"

    const-string v5, "high_res"

    sparse-switch v3, :sswitch_data_0

    .line 1566
    return v2

    .line 1564
    :sswitch_0
    const-string v2, "super_resolution_tetra"

    invoke-direct {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeature(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1559
    :sswitch_1
    const-string v2, "ai_clear_zoom"

    invoke-direct {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeature(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1523
    :sswitch_2
    const-string v2, "aebhdr"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1548
    :sswitch_3
    const-string v2, "super_resolution_raw"

    invoke-direct {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeature(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1519
    :sswitch_4
    invoke-direct {p0, v4, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1515
    :sswitch_5
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1512
    :sswitch_6
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1509
    :sswitch_7
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1544
    :sswitch_8
    const-string v2, "super_night"

    invoke-direct {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeature(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1528
    :sswitch_9
    const-string v2, "super_resolution"

    invoke-direct {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeature(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1501
    :sswitch_a
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "exynos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "llhdr"

    if-eqz v2, :cond_4

    .line 1502
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1506
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1489
    :sswitch_b
    const-string v2, "mfhdr"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1478
    :sswitch_c
    const-string v2, "hifills"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkVendorFeatureAndLightModeParameter(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0xb -> :sswitch_c
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0xe -> :sswitch_c
        0xf -> :sswitch_c
        0x14 -> :sswitch_b
        0x15 -> :sswitch_b
        0x16 -> :sswitch_b
        0x17 -> :sswitch_b
        0x18 -> :sswitch_b
        0x19 -> :sswitch_b
        0x1a -> :sswitch_b
        0x1c -> :sswitch_b
        0x1d -> :sswitch_b
        0x1e -> :sswitch_a
        0x1f -> :sswitch_a
        0x20 -> :sswitch_a
        0x21 -> :sswitch_a
        0x22 -> :sswitch_a
        0x23 -> :sswitch_a
        0x25 -> :sswitch_a
        0x26 -> :sswitch_a
        0x27 -> :sswitch_a
        0x3c -> :sswitch_a
        0x46 -> :sswitch_9
        0x47 -> :sswitch_9
        0x4b -> :sswitch_9
        0x50 -> :sswitch_8
        0x51 -> :sswitch_8
        0x52 -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x55 -> :sswitch_8
        0x56 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_6
        0x78 -> :sswitch_5
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0xa0 -> :sswitch_3
        0xa1 -> :sswitch_3
        0xa2 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0x104 -> :sswitch_8
        0x105 -> :sswitch_8
        0x106 -> :sswitch_8
        0x110 -> :sswitch_1
        0x111 -> :sswitch_1
        0x112 -> :sswitch_1
        0x113 -> :sswitch_1
        0x114 -> :sswitch_1
        0x115 -> :sswitch_1
        0x116 -> :sswitch_1
        0x117 -> :sswitch_1
        0x122 -> :sswitch_0
        0x123 -> :sswitch_0
        0x124 -> :sswitch_0
        0x125 -> :sswitch_0
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x140 -> :sswitch_8
        0x141 -> :sswitch_8
    .end sparse-switch
.end method

.method static synthetic lambda$buildCaptureRequest$4(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V
    .locals 1
    .param p0, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p1, "imageReader"    # Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 891
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic lambda$createSessionConfiguration$2(Ljava/util/List;Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;)V
    .locals 1
    .param p0, "outputConfigs"    # Ljava/util/List;
    .param p1, "semOutputConfiguration"    # Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;

    .line 780
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;->getConfig()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$createSessionConfiguration$3(Ljava/util/List;Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V
    .locals 5
    .param p0, "outputConfigs"    # Ljava/util/List;
    .param p1, "imageReader"    # Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 801
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "setting preview surface, Engine  set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 805
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 802
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method static synthetic lambda$deinitialize$1(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p0, "ssecb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 685
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onDeinitialized()V

    return-void
.end method

.method static synthetic lambda$initialize$0(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 2
    .param p0, "ssecb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 444
    const/4 v0, 0x1

    const-string v1, "Not able to set SDK mode"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendErrorCallback$6(I)V
    .locals 1
    .param p1, "error"    # I

    .line 1939
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 1942
    :cond_0
    return-void
.end method

.method private synthetic lambda$sendOnPictureAvailable$5(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "imageByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "shotCondition"    # I

    .line 1380
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->dispatchOnPictureAvailable(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private declared-synchronized resetProcessorParameter()V
    .locals 2

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 712
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 713
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    .line 714
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 715
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 716
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mOnJPEGImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;

    .line 717
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mOnImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;

    .line 718
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 719
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCameraDevice(Landroid/hardware/camera2/CameraDevice;)V

    .line 720
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCameraId(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 722
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 723
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setSdkCaptureCallback(Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;)V

    .line 724
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setAppCaptureHandler(Landroid/os/Handler;)V

    .line 725
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 711
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendPreviewImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 1145
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    goto :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPreviewImage - queueInputImage is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCameraEffectProcessor"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setCaptureData(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 503
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCameraId(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->isSALoggingDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setSALoggingDisabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setSDKVersion(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 507
    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    .line 510
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor-IA;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mOnJPEGImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;

    .line 511
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mOnImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;

    .line 512
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor-IA;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;

    .line 513
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 514
    return-void
.end method

.method private setupPreviewCallbackImageReader()V
    .locals 5

    .line 491
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    new-instance v0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewSize:Landroid/util/Size;

    .line 494
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewSize:Landroid/util/Size;

    .line 495
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 493
    const/16 v3, 0x23

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 498
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 500
    return-void
.end method

.method private updateCharacteristicForUDCCamera(Landroid/hardware/camera2/CameraManager;)V
    .locals 3
    .param p1, "manager"    # Landroid/hardware/camera2/CameraManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 481
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 482
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 485
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsUDCCamera:Z

    .line 487
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UDC cameraId(%s) has selected."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method


# virtual methods
.method public abstract abortCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public declared-synchronized buildCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLightingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 882
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isVideoHDRSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLiveHDRMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 884
    const-string v0, "VHDR"

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 887
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLiveHDRMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 884
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 890
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 891
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 892
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 894
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 895
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 880
    .end local p1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized capture(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "TDynamicShotInfoClazz;TCaptureCallbackClazz;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "TCaptureParameterClazz;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    .local p2, "dynamicShotInfo":Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;, "TDynamicShotInfoClazz;"
    .local p3, "captureCallback":Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;, "TCaptureCallbackClazz;"
    .local p5, "parameters":Ljava/util/List;, "Ljava/util/List<TCaptureParameterClazz;>;"
    monitor-enter p0

    .line 539
    :try_start_0
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "Capture E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCameraConfig(Lcom/samsung/android/sep/camera/SemCameraConfig;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setDynamicShotInfo(Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 543
    if-eqz p5, :cond_0

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 545
    .local v0, "semCaptureParameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureParameters(Ljava/util/List;)V

    .line 547
    .end local v0    # "semCaptureParameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sep/camera/util/SemUtil;->assertCaptureParams(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;Landroid/os/Handler;Ljava/util/List;)V

    .line 551
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 552
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 553
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v3, "Capture"

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v3, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 556
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->setJpegByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 557
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sep/camera/data/CaptureData;->setSdkCaptureCallback(Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;)V

    .line 558
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, p4}, Lcom/samsung/android/sep/camera/data/CaptureData;->setAppCaptureHandler(Landroid/os/Handler;)V

    .line 559
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getDynamicShotCondition()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->setDynamicShotCondition(I)V

    .line 560
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->clearPictureDataMappingTable()V

    .line 561
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCurrentRawPicType(I)V

    .line 562
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-virtual {v3}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->setPackageName(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 564
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setYuvSingleCapture(Z)V

    .line 565
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setPictureCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 566
    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mDynamicShotExtraInfo:I

    .line 567
    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getProcessingMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mDynamicShotProcessingMode:I

    .line 568
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 570
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 573
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v3

    .line 569
    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManagerFactory;->getCaptureManager(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 538
    .end local v0    # "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "dynamicShotInfo":Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;, "TDynamicShotInfoClazz;"
    .end local p3    # "captureCallback":Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;, "TCaptureCallbackClazz;"
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "parameters":Ljava/util/List;, "Ljava/util/List<TCaptureParameterClazz;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 5
    .param p1, "appCallback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 631
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 632
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 634
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v2, "createCaptureCallback"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 636
    const-string v1, "capturecallback"

    invoke-static {p1, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    const-string v1, "SemCameraEffectProcessor"

    const-string v2, "createCaptureCallback: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 639
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, p2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setAppCaptureHandler(Landroid/os/Handler;)V

    .line 640
    new-instance v1, Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraConfigCbManagers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;-><init>(Landroid/os/Handler;Ljava/util/HashMap;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lcom/samsung/android/sep/camera/data/CaptureData;)V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewCallback:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    .line 643
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewCallback:Lcom/samsung/android/sep/camera/callback/PreviewCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 630
    .end local v0    # "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    .end local p1    # "appCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createSessionConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
    .locals 7
    .param p2, "stateCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/hardware/camera2/params/SessionConfiguration;"
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;>;"
    monitor-enter p0

    .line 769
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 770
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 772
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v4, "createSessionConfiguration"

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 774
    const-string v1, "List of outputConfiguration "

    invoke-static {p1, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    const-string v1, "StateCallback not null"

    invoke-static {p2, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    const-string v1, "Request Builder"

    invoke-static {p3, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 782
    iget-boolean v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsTest:Z

    if-nez v4, :cond_1

    .line 783
    iget-boolean v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsUDCCamera:Z

    const/4 v5, -0x1

    if-nez v4, :cond_0

    .line 784
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 787
    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 784
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 794
    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 791
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 799
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 812
    :cond_1
    if-nez p4, :cond_2

    .line 813
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 815
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_2
    new-instance v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;

    invoke-direct {v3, p0, p4}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Handler;)V

    .line 824
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_0
    new-instance v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iput-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSessionStateCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;

    .line 826
    new-instance v4, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSessionStateCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;

    invoke-direct {v4, v2, v1, v3, v5}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 833
    .local v4, "temp":Landroid/hardware/camera2/params/SessionConfiguration;
    invoke-virtual {p0, p3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 835
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 837
    const-string v2, "SemCameraEffectProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  createSessionConfiguration. received outputConfigurations "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  return outputConfigs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    monitor-exit p0

    return-object v4

    .line 768
    .end local v0    # "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    .end local v1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "temp":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p1    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;>;"
    .end local p2    # "stateCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p3    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local p4    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 4
    .param p1, "stateCallback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 594
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 595
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 597
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v2, "createStateCallback"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 599
    const-string v1, "stateCallback"

    invoke-static {p1, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 602
    const-string v1, "SemCameraEffectProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  createStateCallback. received stateCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return steteCallback + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 593
    .end local v0    # "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    .end local p1    # "stateCallback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized deinitialize()V
    .locals 3

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 649
    monitor-exit p0

    return-void

    .line 651
    :cond_0
    :try_start_1
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deinitialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-ne v0, v1, :cond_2

    .line 653
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "pending deinitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isPendingDeInit:Z

    .line 658
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 679
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-ne v0, v1, :cond_3

    .line 680
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already deinitializing.. :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 683
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 684
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda6;-><init>()V

    .line 685
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 687
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleDeinit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    monitor-exit p0

    return-void

    .line 647
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized disableEngine(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "engineBundle"    # Landroid/os/Bundle;

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 1220
    :try_start_0
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "disable engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v0, "engineId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1222
    .local v0, "id":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mActiveEngineList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$5;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 1219
    .end local v0    # "id":Ljava/lang/Integer;
    .end local p1    # "engineBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method dumpOutputConfiguration(ILcom/samsung/android/sep/camera/util/BlockingImageReader;II)V
    .locals 3
    .param p1, "surfaceGroupId"    # I
    .param p2, "blockingImageReader"    # Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    .param p3, "rotation"    # I
    .param p4, "option"    # I

    .line 857
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpOutputConfiguration - Surface group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpOutputConfiguration - BlockingImageReader: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 860
    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpOutputConfiguration - Rotation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpOutputConfiguration - Stream option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void
.end method

.method public declared-synchronized enableEngine(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "engineBundle"    # Landroid/os/Bundle;

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 1189
    :try_start_0
    const-string v0, "engineId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1191
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1192
    const-string v1, "SemCameraEffectProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mActiveEngineList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$4;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1204
    const-string v1, "ENGN"

    .line 1207
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1204
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1210
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    const-string v1, "SemCameraEffectProcessor"

    const-string v2, "enableEngine: engine ID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    :goto_0
    monitor-exit p0

    return-void

    .line 1188
    .end local v0    # "id":Ljava/lang/Integer;
    .end local p1    # "engineBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2183
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2184
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->stopBackgroundThread()V

    .line 2185
    invoke-static {}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->getInstance()Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->release()V

    .line 2186
    return-void
.end method

.method public declared-synchronized getAvailableCameraConfigParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;",
            ">;"
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 964
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;>;"
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    monitor-exit p0

    return-object v0

    .line 963
    .end local v0    # "config":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAvailableEngine()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 734
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "mEngineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 739
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 740
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 742
    invoke-virtual {v1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->isPreviewReaderRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 733
    .end local v0    # "mEngineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public abstract getAvailableParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TProcessorParameterClazz;>;"
        }
    .end annotation
.end method

.method public getCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;
    .locals 1

    .line 1027
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    return-object v0
.end method

.method protected getImage(I)Landroid/media/Image;
    .locals 1
    .param p1, "format"    # I

    .line 1046
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1056
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getPreviewImage()Landroid/media/Image;

    move-result-object v0

    return-object v0

    .line 1048
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getJpegImage()Landroid/media/Image;

    move-result-object v0

    return-object v0

    .line 1050
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getYuvImage()Landroid/media/Image;

    move-result-object v0

    return-object v0

    .line 1054
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getRawImage()Landroid/media/Image;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x23 -> :sswitch_1
        0x25 -> :sswitch_2
        0x26 -> :sswitch_2
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getJpegImage()Landroid/media/Image;
.end method

.method public abstract getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TProcessorParameterClazz;)TT;"
        }
    .end annotation
.end method

.method protected abstract getRawImage()Landroid/media/Image;
.end method

.method public getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .locals 1

    .line 1036
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    return-object v0
.end method

.method protected abstract getYuvImage()Landroid/media/Image;
.end method

.method public getZoomController()Lcom/samsung/android/sep/camera/ZoomController;
    .locals 1

    .line 1322
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    return-object v0
.end method

.method protected abstract handleBurstImages(Landroid/media/ImageReader;)V
.end method

.method protected handleError(I)V
    .locals 4
    .param p1, "errorId"    # I

    .line 1393
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendErrorCallback(I)V

    .line 1394
    nop

    .line 1397
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1394
    const-string v2, "ERRO"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 1399
    return-void
.end method

.method protected abstract handleSingleYuvImage()V
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "pictureSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 334
    :try_start_0
    const-string v0, "SemCameraEffectProcessor"

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "initialize E - cameraId(%s),  pictureSize(%s)"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v3

    .line 336
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkStateForInitialize()V

    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->initParams(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setCaptureData(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setupCallbacks()V

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraConfigCbManagers:Ljava/util/HashMap;

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setupProcessorConfig()V

    .line 348
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsTest:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->assertInitParams(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 352
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mBackgroundHandler:Landroid/os/Handler;

    .line 353
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;-><init>(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->setListener(Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 359
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 360
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;-><init>(Lcom/samsung/android/sep/camera/data/CaptureData;ILcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    .line 361
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "initialize X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 333
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cameraId":Ljava/lang/String;
    .end local p3    # "pictureSize":Landroid/util/Size;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V
    .locals 9
    .param p1, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 388
    :try_start_0
    const-string v0, "SemCameraEffectProcessor"

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "initialize E - cameraId(%s), pictureSize(%s), SDKVersion(%s), SEPVersion(%s), clientId(%d), package(%s)"

    .line 393
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    .line 395
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCamera;->getInstance()Lcom/samsung/android/sep/camera/SemCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/SemCamera;->getSEPClientVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 398
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v3

    .line 390
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->checkStateForInitialize()V

    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mIsTest:Z

    if-nez v0, :cond_0

    .line 401
    invoke-static {p1}, Lcom/samsung/android/sep/camera/util/SemUtil;->assertInitParams(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 404
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->initParams(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setupCallbacks()V

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setupProcessorConfig()V

    .line 408
    nop

    .line 409
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    move-object v1, v0

    .line 410
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 411
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setCaptureData(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCameraDevice(Landroid/hardware/camera2/CameraDevice;)V

    .line 414
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 415
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;-><init>(Lcom/samsung/android/sep/camera/data/CaptureData;ILcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    .line 417
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isUDCCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->updateCharacteristicForUDCCamera(Landroid/hardware/camera2/CameraManager;)V

    .line 421
    :cond_1
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mBackgroundHandler:Landroid/os/Handler;

    .line 422
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    .line 423
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isThreadRespawnNeeded:Z

    if-eqz v0, :cond_3

    .line 424
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->forceStartBackgroundThread()V

    .line 425
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mBackgroundHandler:Landroid/os/Handler;

    .line 426
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    .line 428
    :cond_3
    new-instance v0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;-><init>(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    .line 429
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->setListener(Landroid/os/Handler;)V

    .line 431
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->isPreviewReaderRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setupPreviewCallbackImageReader()V

    .line 435
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 437
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "samsungsdk=true;"

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SemCameraEffectProcessor"

    const-string v3, "onOpened: Exception Occured !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda5;-><init>()V

    .line 442
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    const-string v0, "SemCameraEffectProcessor"

    const-string v2, "Camera Device is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    const-string v0, "SemCameraEffectProcessor"

    const-string v2, "initialize X"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 387
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "config":Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public abstract isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method protected declared-synchronized isBurstYuvCapture()Z
    .locals 3

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 1427
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->isServiceInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1428
    monitor-exit p0

    return v1

    .line 1432
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v2, 0x2d0

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 1433
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v2, 0x1e0

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraID:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getHighResolutionCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1440
    monitor-exit p0

    return v1

    .line 1443
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isBurstDynamicShotMode()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 1435
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 1426
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public abstract isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method protected abstract isProcessingRequired()Z
.end method

.method public abstract isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isVideoHDRSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isZoomControllerAvailable(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method protected logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1962
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    .local p4, "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1963
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1964
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->isSALoggingDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "feature":Ljava/lang/String;
    .local v4, "value":I
    .local v5, "extra":Ljava/lang/String;
    .local v6, "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1964
    .end local v3    # "feature":Ljava/lang/String;
    .end local v4    # "value":I
    .end local v5    # "extra":Ljava/lang/String;
    .end local v6    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "feature":Ljava/lang/String;
    .restart local p2    # "value":I
    .restart local p3    # "extra":Ljava/lang/String;
    .restart local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "feature":Ljava/lang/String;
    .restart local v4    # "value":I
    .restart local v5    # "extra":Ljava/lang/String;
    .restart local v6    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1963
    .end local v3    # "feature":Ljava/lang/String;
    .end local v4    # "value":I
    .end local v5    # "extra":Ljava/lang/String;
    .end local v6    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "feature":Ljava/lang/String;
    .restart local p2    # "value":I
    .restart local p3    # "extra":Ljava/lang/String;
    .restart local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "feature":Ljava/lang/String;
    .restart local v4    # "value":I
    .restart local v5    # "extra":Ljava/lang/String;
    .restart local v6    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1962
    .end local v3    # "feature":Ljava/lang/String;
    .end local v4    # "value":I
    .end local v5    # "extra":Ljava/lang/String;
    .end local v6    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "feature":Ljava/lang/String;
    .restart local p2    # "value":I
    .restart local p3    # "extra":Ljava/lang/String;
    .restart local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1975
    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "feature":Ljava/lang/String;
    .restart local v4    # "value":I
    .restart local v5    # "extra":Ljava/lang/String;
    .restart local v6    # "customDimenstion":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method protected moveToInitializedState()V
    .locals 2

    .line 1600
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->clearPictureDataMappingTable()V

    .line 1601
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1602
    return-void
.end method

.method protected abstract sendBurstImage(Landroid/media/Image;)V
.end method

.method protected sendErrorCallback(I)V
    .locals 2
    .param p1, "error"    # I

    .line 1934
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1936
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;I)V

    .line 1937
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1945
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 1948
    :cond_1
    :goto_0
    return-void
.end method

.method protected sendImage(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;Landroid/media/Image;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;
    .param p2, "image"    # Landroid/media/Image;

    .line 1098
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1109
    invoke-direct {p0, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendPreviewImage(Landroid/media/Image;)V

    .line 1111
    return-void

    .line 1106
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendJpegImage(Landroid/media/Image;)V

    .line 1107
    return-void

    .line 1103
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendSingleYuvImage(Landroid/media/Image;)V

    .line 1104
    return-void

    .line 1100
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendBurstImage(Landroid/media/Image;)V

    .line 1101
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract sendJpegImage(Landroid/media/Image;)V
.end method

.method protected sendOnPictureAvailable(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "imageByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "shotCondition"    # I

    .line 1377
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1379
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Ljava/nio/ByteBuffer;I)V

    .line 1380
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1382
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->dispatchOnPictureAvailable(Ljava/nio/ByteBuffer;I)V

    .line 1384
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->clearPictureDataMappingTable()V

    .line 1385
    return-void
.end method

.method protected abstract sendSingleYuvImage(Landroid/media/Image;)V
.end method

.method public declared-synchronized setCameraConfigParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "TT;>;TT;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    .local p2, "parameter":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;, "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 918
    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 922
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraConfigCbManagers:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    new-instance v2, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-direct {v2, v3}, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;-><init>(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    if-ne p3, v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraConfigCbManagers:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->activate(Z)V

    goto :goto_0

    .line 929
    :cond_1
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    if-ne p3, v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraConfigCbManagers:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->activate(Z)V

    .line 933
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 937
    :cond_3
    monitor-exit p0

    return-object p1

    .line 917
    .end local p1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local p2    # "parameter":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;, "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<TT;>;"
    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 947
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getIsVIPClient()Z

    move-result v0

    const-string v1, "SemCameraEffectProcessor"

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "setClientIdToBuilder: VIP client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 951
    :cond_0
    const-string v0, "setClientIdToBuilder: SDK client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 954
    :goto_0
    return-void
.end method

.method protected setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2164
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 2165
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v0, :cond_0

    .line 2166
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 2167
    .local v1, "supportedMode":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2169
    .end local v1    # "supportedMode":I
    :cond_0
    return-void
.end method

.method public abstract setProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TProcessorParameterClazz;TT;)V"
        }
    .end annotation
.end method

.method protected setupProcessorConfig()V
    .locals 2

    .line 1018
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setMaxPictureCount(I)V

    .line 1019
    return-void
.end method

.method public declared-synchronized updateEngineParameters(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "engineBundle"    # Landroid/os/Bundle;

    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    monitor-enter p0

    .line 1243
    :try_start_0
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "updateEngineParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$6;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 1242
    .end local p1    # "engineBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
