.class public Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;
.super Ljava/lang/Object;
.source "FloatingFeatureUtils.java"


# static fields
.field public static final FEATURE_AI_HIGH_RES_MAX_CAPTURE_COUNT:I

.field public static final FEATURE_AI_HIGH_RES_SUPPORT_DRAFT_DOWNSCALE:Z

.field public static final FEATURE_CAMERA_SUPPORT_MACRO_RAW_SR_DRAFT_RAW:Z

.field public static final FEATURE_CAMERA_SUPPORT_SUPER_NIGHT_DRAFT_RAW:Z

.field public static final FEATURE_HIGH_RES_SUPPORT_SW_BINNING:Z

.field public static final FEATURE_SUPPORT_SUPER_HDR:Z

.field private static final FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 31
    nop

    .line 32
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_AI_HIGH_RESOLUTION_MAX_CAPTURE"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_AI_HIGH_RES_MAX_CAPTURE_COUNT:I

    .line 38
    nop

    .line 39
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_HIGH_RESOLUTION_SWBINNING"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_HIGH_RES_SUPPORT_SW_BINNING:Z

    .line 45
    nop

    .line 46
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_SUPER_NIGHT_DRAFT_RAW"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_CAMERA_SUPPORT_SUPER_NIGHT_DRAFT_RAW:Z

    .line 52
    const-string v0, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_SUPPORT_SUPER_HDR:Z

    .line 58
    nop

    .line 59
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_AI_HIGH_RESOLUTION_DRAFT_DOWNSCALE"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_AI_HIGH_RES_SUPPORT_DRAFT_DOWNSCALE:Z

    .line 65
    nop

    .line 66
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_MACRO_RAW_SR_DRAFT_RAW"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_CAMERA_SUPPORT_MACRO_RAW_SR_DRAFT_RAW:Z

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getFeatureInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFeatureString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
