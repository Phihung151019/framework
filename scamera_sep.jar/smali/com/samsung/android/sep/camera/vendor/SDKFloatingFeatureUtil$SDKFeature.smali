.class public final enum Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
.super Ljava/lang/Enum;
.source "SDKFloatingFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum AUTO_FRAMING_VDIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum EXPOSURE_TABLE_CONTROL:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum HIGH_RES_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum LOGICAL_REAR_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum PHYSICAL_CAMERA_TELE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum PHYSICAL_CAMERA_TELE_2:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum PREVIEW_DIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum SELFIE_TONE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum SMOOTH_ZOOM:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum SUPER_NIGHT:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum SUPER_NIGHT_EXPOSURE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum UNKNOWN:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

.field public static final enum VIDEO_HDR:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;


# instance fields
.field private final hasCameraIdForV1:Z

.field private final legacyName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .locals 14

    .line 25
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->AUTO_FRAMING_VDIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->EXPOSURE_TABLE_CONTROL:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->HIGH_RES_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LOGICAL_REAR_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v5, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PHYSICAL_CAMERA_TELE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v6, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PHYSICAL_CAMERA_TELE_2:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v7, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PREVIEW_DIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v8, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SELFIE_TONE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v9, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SMOOTH_ZOOM:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v10, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SUPER_NIGHT:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v11, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SUPER_NIGHT_EXPOSURE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v12, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->VIDEO_HDR:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    sget-object v13, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->UNKNOWN:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    filled-new-array/range {v0 .. v13}, [Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgethasCameraIdForV1(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->hasCameraIdForV1:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 27
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/4 v1, 0x0

    const-string v2, "auto_framing_vdis"

    const-string v3, "AUTO_FRAMING_VDIS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->AUTO_FRAMING_VDIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 28
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/4 v1, 0x1

    const-string v2, "exposure_table_control"

    const-string v3, "EXPOSURE_TABLE_CONTROL"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->EXPOSURE_TABLE_CONTROL:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 29
    new-instance v4, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const-string v8, "high_res_camera_id"

    const/4 v9, 0x1

    const-string v5, "HIGH_RES_CAMERA"

    const/4 v6, 0x2

    const-string v7, "high_res_camera"

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->HIGH_RES_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 30
    new-instance v5, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const-string v9, "limit_level_udc_camera_id"

    const/4 v10, 0x1

    const-string v6, "LIMIT_LEVEL_UDC_CAMERA"

    const/4 v7, 0x3

    const-string v8, "limit_level_udc_camera"

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v5, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 31
    new-instance v6, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const-string v10, "logical_rear_camera_id"

    const/4 v11, 0x1

    const-string v7, "LOGICAL_REAR_CAMERA"

    const/4 v8, 0x4

    const-string v9, "logical_rear_camera"

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LOGICAL_REAR_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 32
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/4 v1, 0x5

    const-string v2, "physical_camera_tele"

    const-string v3, "PHYSICAL_CAMERA_TELE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PHYSICAL_CAMERA_TELE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 33
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/4 v1, 0x6

    const-string v2, "physical_camera_tele2"

    const-string v3, "PHYSICAL_CAMERA_TELE_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PHYSICAL_CAMERA_TELE_2:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 34
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/4 v1, 0x7

    const-string v2, "preview_dis"

    const-string v3, "PREVIEW_DIS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PREVIEW_DIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 35
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/16 v1, 0x8

    const-string v2, "selfie_tone"

    const-string v3, "SELFIE_TONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SELFIE_TONE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 36
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/16 v1, 0x9

    const-string v2, "smooth_zoom"

    const-string v3, "SMOOTH_ZOOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SMOOTH_ZOOM:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 37
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/16 v1, 0xa

    const-string v2, "super_night"

    const-string v3, "SUPER_NIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SUPER_NIGHT:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 38
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/16 v1, 0xb

    const-string v2, "super_night_exposure"

    const-string v3, "SUPER_NIGHT_EXPOSURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SUPER_NIGHT_EXPOSURE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 39
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/16 v1, 0xc

    const-string v2, "video_hdr"

    const-string v3, "VIDEO_HDR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->VIDEO_HDR:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 40
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    const/16 v1, 0xd

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->UNKNOWN:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 25
    invoke-static {}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->$values()[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->$VALUES:[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->name:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->legacyName:Ljava/lang/String;

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->hasCameraIdForV1:Z

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "legacyName"    # Ljava/lang/String;
    .param p5, "hasCameraIdForV1"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->name:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->legacyName:Ljava/lang/String;

    .line 67
    iput-boolean p5, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->hasCameraIdForV1:Z

    .line 68
    return-void
.end method

.method public static getSDKFeature(Ljava/lang/String;)Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .locals 5
    .param p0, "featureName"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->values()[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 78
    .local v3, "entry":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    iget-object v4, v3, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->name:Ljava/lang/String;

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->legacyName:Ljava/lang/String;

    .line 79
    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 77
    .end local v3    # "entry":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .restart local v3    # "entry":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    :cond_1
    :goto_1
    return-object v3

    .line 83
    .end local v3    # "entry":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    :cond_2
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->UNKNOWN:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->$VALUES:[Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    return-object v0
.end method
