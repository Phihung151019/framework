.class public Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;
.super Ljava/lang/Object;
.source "CameraAppFeature.java"


# static fields
.field public static final DEFAULT_BOKEH_EFFECT_LEVEL:I = 0x5

.field public static final DEFAULT_BOKEH_EFFECT_MAX_LEVEL:I = 0x7

.field public static final DEFAULT_LIVE_BEAUTY_LEVEL:I

.field public static final SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

.field public static final SHOOTING_MODE_FOOD:Ljava/util/Map;

.field public static final SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

.field public static final SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

.field public static final SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

.field public static final SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

.field public static final SHOOTING_MODE_MORE:Ljava/util/Map;

.field public static final SHOOTING_MODE_NIGHT:Ljava/util/Map;

.field public static final SHOOTING_MODE_PANORAMA:Ljava/util/Map;

.field public static final SHOOTING_MODE_PHOTO:Ljava/util/Map;

.field public static final SHOOTING_MODE_PRO:Ljava/util/Map;

.field public static final SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

.field public static final SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

.field public static final SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

.field public static final SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

.field public static final SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

.field public static final SHOOTING_MODE_SPORTS:Ljava/util/Map;

.field public static final SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

.field public static final SHOOTING_MODE_VIDEO:Ljava/util/Map;

.field public static final SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

.field public static final SUPPORT_SMART_BEAUTY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    .line 31
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    .line 35
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_MORE:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_MORE:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    .line 52
    sget-boolean v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SUPPORT_SMART_BEAUTY:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->isSmartBeautySupportedCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SUPPORT_SMART_BEAUTY:Z

    .line 56
    sget-boolean v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->IQ_CUSTOM_MODE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 57
    :cond_1
    sget v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

    :goto_1
    sput v0, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->DEFAULT_LIVE_BEAUTY_LEVEL:I

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static isSupported(Ljava/util/Map;Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 6
    .param p0, "shootingModeFeature"    # Ljava/util/Map;
    .param p1, "cameraChar"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 72
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, "lensFacing":I
    const/4 v1, 0x1

    const-string v2, "enable"

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 74
    if-eqz p0, :cond_0

    .line 75
    const-string v5, "front"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 74
    :goto_0
    return v1

    .line 78
    :cond_1
    if-eqz p0, :cond_2

    .line 79
    const-string v5, "back"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 78
    :goto_1
    return v1
.end method
