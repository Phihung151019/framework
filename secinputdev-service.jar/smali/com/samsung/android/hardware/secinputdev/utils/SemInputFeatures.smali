.class public Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;
.super Ljava/lang/Object;
.source "SemInputFeatures.java"


# static fields
.field public static final IS_FACTORY_BUILD:Z = false

.field public static final IS_IN_HOUSE_PROJECT:Z

.field public static final IS_JDM_PROJECT:Z

.field public static final IS_PREMIUM_WATCH:Z

.field public static final IS_SHIP_BUILD:Z = true

.field public static final IS_WEAROS:Z

.field public static final LCD_CONFIG_HFR_MODE:Ljava/lang/String; = "3"

.field public static final SUPPORT_AIVF:Z

.field public static final SUPPORT_AMOLED_DISPLAY:Z

.field public static final SUPPORT_APD:Z

.field public static final SUPPORT_AWD:Z

.field public static final SUPPORT_DEX:Z = false

.field public static final SUPPORT_PALMMUTE:Z

.field public static final SUPPORT_PALMSWIPE:Z

.field public static final SUPPORT_RAWDATA:Z

.field public static final SUPPORT_TFLITE:Z

.field public static final SUPPORT_TFLITE_GPU:Z

.field public static final USE_CMDTHREAD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 10
    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AMOLED_DISPLAY:Z

    .line 11
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 12
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PROVIDE_TSP_RAWDATA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_RAWDATA:Z

    .line 13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 14
    const-string v1, "SEC_FLOATING_FEATURE_CLOCK_SUPPORT_PREMIUM_WATCH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_PREMIUM_WATCH:Z

    .line 20
    nop

    .line 21
    const-string v0, "in_house"

    const-string v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_JDM_PROJECT:Z

    .line 22
    nop

    .line 23
    invoke-virtual {v0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_IN_HOUSE_PROJECT:Z

    .line 24
    nop

    .line 25
    const-string v0, "phone"

    const-string v1, "watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    .line 27
    nop

    .line 28
    const-string v0, "default"

    const-string v1, "tflite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_TFLITE:Z

    .line 29
    nop

    .line 30
    const-string v1, "tflite-gpu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_TFLITE_GPU:Z

    .line 31
    nop

    .line 32
    const-string v1, "palmMute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_PALMMUTE:Z

    .line 33
    nop

    .line 34
    const-string v1, "palmSwipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_PALMSWIPE:Z

    .line 35
    nop

    .line 36
    const-string v1, "aivf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AIVF:Z

    .line 37
    nop

    .line 38
    const-string v1, "pocketDetect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_APD:Z

    .line 39
    nop

    .line 40
    const-string v1, "awd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AWD:Z

    .line 42
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AMOLED_DISPLAY:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->USE_CMDTHREAD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
