.class public Lcom/samsung/android/knox/lockscreen/LSOConstants;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ACTION_LSO_CONFIG_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

.field public static final greylist ADMIN_LOCKSCREEN_WALLPAPER_DIR:Ljava/lang/String; = "/data/system/enterprise/lso"

.field public static final greylist ADMIN_LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final greylist ADMIN_LOCKSCREEN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final greylist CUSTOM_LAYER:I = 0x2

.field public static final greylist DEFAULT_ALPHA_LEVEL:F = 1.0f

.field public static final greylist DEFAULT_LAYER:I = 0x1

.field public static final greylist EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final greylist ENTERPRISE_PRIVATE_DIR:Ljava/lang/String; = "/data/system/enterprise"

.field public static final greylist ERROR_BAD_STATE:I = -0x6

.field public static final greylist ERROR_FAILED:I = -0x4

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NOT_ALLOWED:I = -0x1

.field public static final greylist ERROR_NOT_READY:I = -0x5

.field public static final greylist ERROR_NOT_SUPPORTED:I = -0x3

.field public static final greylist ERROR_PERMISSION_DENIED:I = -0x2

.field public static final greylist ERROR_UNKNOWN:I = -0x7d0

.field public static final greylist EXTRA_KNOX_WALLPAPER_ENABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

.field public static final greylist FEATURE_ALL:I = -0x1

.field public static final greylist FEATURE_ANY:I = 0x0

.field public static final greylist FEATURE_INVISIBLE_OVERLAY:I = 0x1

.field public static final greylist FEATURE_WALLPAPER:I = 0x2

.field public static final greylist LOCKSCREEN_WALLPAPER_DIR:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d"

.field public static final greylist LSO_FEATURE_ALL:Ljava/lang/String; = "LOCKSCREEN_ALL_FEATURE"

.field public static final greylist LSO_FEATURE_ANY:Ljava/lang/String; = "LOCKSCREEN_ANY_FEATURE"

.field public static final greylist LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field public static final greylist LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field public static final greylist LSO_PRIVATE_DIR:Ljava/lang/String; = "/data/system/enterprise/lso"

.field public static final greylist MAX_SUPPORTED_LAYER:I = 0x3

.field public static final greylist RESET_ALL_LAYER:I = 0x0

.field public static final greylist SETTINGS_MDM_WALLPAPER_ENABLE_INTERNAL:Ljava/lang/String; = "mdm_wallpaper_enabled"

.field public static final greylist TAG:Ljava/lang/String; = "LSO"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getLSOFeatureName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LOCKSCREEN_WALLPAPER"

    return-object p0

    :cond_1
    const-string p0, "LOCKSCREEN_OVERLAY"

    return-object p0

    :cond_2
    const-string p0, "LOCKSCREEN_ANY_FEATURE"

    return-object p0

    :cond_3
    const-string p0, "LOCKSCREEN_ALL_FEATURE"

    return-object p0
.end method

.method public static greylist getLayerName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LAYER"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EMERGENCY_PHONE_LAYER"

    return-object p0

    :cond_1
    const-string p0, "CUSTOM_LAYER"

    return-object p0

    :cond_2
    const-string p0, "DEFAULT_LAYER"

    return-object p0

    :cond_3
    const-string p0, "RESET_ALL_LAYER"

    return-object p0
.end method
