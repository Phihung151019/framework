.class Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;
.super Ljava/lang/Object;
.source "RuntimeFeature.java"


# static fields
.field static final CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

.field static final IQ_CUSTOM_MODE:Z

.field static final SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

.field static final SHOOTING_MODE_FOOD:Ljava/util/Map;

.field static final SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

.field static final SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

.field static final SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

.field static final SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

.field static final SHOOTING_MODE_MORE:Ljava/util/Map;

.field static final SHOOTING_MODE_NIGHT:Ljava/util/Map;

.field static final SHOOTING_MODE_PANORAMA:Ljava/util/Map;

.field static final SHOOTING_MODE_PHOTO:Ljava/util/Map;

.field static final SHOOTING_MODE_PRO:Ljava/util/Map;

.field static final SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

.field static final SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

.field static final SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

.field static final SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

.field static final SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

.field static final SHOOTING_MODE_SPORTS:Ljava/util/Map;

.field static final SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

.field static final SHOOTING_MODE_VIDEO:Ljava/util/Map;

.field static final SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

.field static final SUPPORT_SMART_BEAUTY:Z

.field private static mCountryCode:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "SHOOTING_MODE_PHOTO"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    .line 38
    const-string v0, "SHOOTING_MODE_VIDEO"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    .line 39
    const-string v0, "SHOOTING_MODE_PANORAMA"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    .line 40
    const-string v0, "SHOOTING_MODE_NIGHT"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    .line 41
    const-string v0, "SHOOTING_MODE_SPORTS"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    .line 42
    const-string v0, "SHOOTING_MODE_SELECTIVE_FOCUS"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    .line 43
    const-string v0, "SHOOTING_MODE_PRO"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    .line 44
    const-string v0, "SHOOTING_MODE_SLOW_MOTION"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    .line 45
    const-string v0, "SHOOTING_MODE_HYPER_LAPSE"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    .line 46
    const-string v0, "SHOOTING_MODE_FOOD"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    .line 47
    const-string v0, "SHOOTING_MODE_LIVE_FOCUS"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    .line 48
    const-string v0, "SHOOTING_MODE_SUPER_SLOW_MOTION"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    .line 49
    const-string v0, "SHOOTING_MODE_INSTAGRAM"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    .line 50
    const-string v0, "SHOOTING_MODE_LIVE_FOCUS_VIDEO"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    .line 51
    const-string v0, "SHOOTING_MODE_MORE"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_MORE:Ljava/util/Map;

    .line 52
    const-string v0, "SHOOTING_MODE_SELFIE_FOCUS"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    .line 53
    const-string v0, "SHOOTING_MODE_WIDE_SELFIE"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    .line 54
    const-string v0, "SHOOTING_MODE_DIRECTORS_VIEW"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    .line 55
    const-string v0, "SHOOTING_MODE_SINGLE_TAKE_PHOTO"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    .line 56
    const-string v0, "SHOOTING_MODE_PRO_VIDEO"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    .line 61
    const-string v0, "SUPPORT_SMART_BEAUTY"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/FeatureLoader;->getCameraFeature(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->SUPPORT_SMART_BEAUTY:Z

    .line 66
    const-string v0, "IQ_CUSTOM_MODE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/FeatureLoader;->getCameraFeature(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->IQ_CUSTOM_MODE:Z

    .line 68
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->isStrongBeautySupportedCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static getCountryCode()Ljava/lang/String;
    .locals 2

    .line 231
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->mCountryCode:Ljava/lang/String;

    .line 234
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method private static getSalesCode()Ljava/lang/String;
    .locals 2

    .line 243
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->mSalesCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->mSalesCode:Ljava/lang/String;

    .line 246
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/FeatureLoader;->getDefaultShootingModeFeature()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/camerax/advanced/util/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 86
    .local v0, "modeFeature":Ljava/util/Map;
    return-object v0
.end method

.method static isChina()Z
    .locals 2

    .line 95
    const-string v0, "CHINA"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isJapan()Z
    .locals 2

    .line 104
    const-string v0, "JAPAN"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "JP"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isKorea()Z
    .locals 2

    .line 113
    const-string v0, "KOREA"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isLGT()Z
    .locals 2

    .line 122
    const-string v0, "LGT"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LUC"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LUO"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isLearnMoreLinkNotSupportedCountry()Z
    .locals 4

    .line 131
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GREECE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "HUNGARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "THAILAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "CROATIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "CZECH REPUBLIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "VIETNAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "UKRAINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "EGYPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "CZECH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "IRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "ALBANIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "SLOVAKIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "BULGARIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_d
    const-string v1, "TURKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_e
    const-string v1, "TAIWAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_f
    const-string v1, "SERBIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_10
    const-string v1, "POLAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_11
    const-string v1, "NORWAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_12
    const-string v1, "INDONESIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_13
    const-string v1, "LATVIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_14
    const-string v1, "ISRAEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 155
    return v2

    .line 153
    :pswitch_0
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7eb658c0 -> :sswitch_14
        -0x7a943df1 -> :sswitch_13
        -0x797e4edc -> :sswitch_12
        -0x76662982 -> :sswitch_11
        -0x72ff8396 -> :sswitch_10
        -0x6e6b2766 -> :sswitch_f
        -0x6cf27638 -> :sswitch_e
        -0x6bd4b552 -> :sswitch_d
        -0x21c924e9 -> :sswitch_c
        -0x11fb6f3e -> :sswitch_b
        -0xc19dc04 -> :sswitch_a
        0x226b16 -> :sswitch_9
        0x3da1b93 -> :sswitch_8
        0x3edf43b -> :sswitch_7
        0x150f525b -> :sswitch_6
        0x45dd5f18 -> :sswitch_5
        0x548d1849 -> :sswitch_4
        0x68a6f64b -> :sswitch_3
        0x69b6a187 -> :sswitch_2
        0x76390502 -> :sswitch_1
        0x7dcc046d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isSmartBeautySupportedCountry()Z
    .locals 4

    .line 165
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "BANGLADESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "THAILAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "HONG KONG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "SINGAPORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const-string v1, "VIETNAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_5
    const-string v1, "MALAYSIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v1, "NEPAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "INDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_9
    const-string v1, "PHILIPPINES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v1, "SRI LANKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v1, "TAIWAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_c
    const-string v1, "INDONESIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 181
    return v2

    .line 179
    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x797e4edc -> :sswitch_c
        -0x6cf27638 -> :sswitch_b
        -0x571ff547 -> :sswitch_a
        -0x2cf0d5f -> :sswitch_9
        0x3d1fd37 -> :sswitch_8
        0x4293117 -> :sswitch_7
        0x46bbb64 -> :sswitch_6
        0x329d873b -> :sswitch_5
        0x45dd5f18 -> :sswitch_4
        0x4c6d7304 -> :sswitch_3
        0x5af06d3d -> :sswitch_2
        0x69b6a187 -> :sswitch_1
        0x7829b1c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isSouthWesternAsia()Z
    .locals 2

    .line 191
    const-string v0, "INDIA"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NEPAL"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BANGLADESH"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SRI LANKA"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isStrongBeautySupportedCountry()Z
    .locals 4

    .line 200
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "BANGLADESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "HONG KONG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "NEPAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "KOREA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "JAPAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "INDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v1, "SRI LANKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 212
    return v2

    .line 210
    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x571ff547 -> :sswitch_8
        0x946 -> :sswitch_7
        0x3d1fd37 -> :sswitch_6
        0x4293117 -> :sswitch_5
        0x4318be6 -> :sswitch_4
        0x446088a -> :sswitch_3
        0x46bbb64 -> :sswitch_2
        0x5af06d3d -> :sswitch_1
        0x7829b1c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isVZW()Z
    .locals 2

    .line 222
    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/RuntimeFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
