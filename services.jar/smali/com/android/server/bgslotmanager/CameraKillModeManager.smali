.class public final Lcom/android/server/bgslotmanager/CameraKillModeManager;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static CAMERA_DHA_VER:I


# instance fields
.field public dha_camera_map:Ljava/util/LinkedHashMap;

.field public dha_cameraclientexcept_map:Ljava/util/HashMap;

.field public isOriginBG:Z

.field public mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mCamKillStartTime:I

.field public mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mMinFreeMax:F

.field public mSzDHAThresholdRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "cam_dha_ver"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
.locals 0

    return-void
.end method
