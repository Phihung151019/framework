.class public final Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;
.super Ljava/lang/Object;
.source "SDKFloatingFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;,
        Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    }
.end annotation


# static fields
.field private static final SDK_FEATURE_INFO:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

.field static final SDK_LIB_FLOATING_FEATURE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CAMERA_CONFIG_SDK_FEATURE_INFO"

.field private static final TAG:Ljava/lang/String; = "SDKFloatingFeatureUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;-><init>(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil-IA;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->SDK_FEATURE_INFO:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 104
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->SDK_FEATURE_INFO:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->-$$Nest$mgetCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedSizes(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/util/Set;
    .locals 1
    .param p0, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;",
            ")",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->SDK_FEATURE_INFO:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->-$$Nest$mgetSupportedSizes(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z
    .locals 1
    .param p0, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 94
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->SDK_FEATURE_INFO:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->-$$Nest$misAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    return v0
.end method

.method static resetSDKFeatureInfo()V
    .locals 1

    .line 119
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->SDK_FEATURE_INFO:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->-$$Nest$mparseFeaturesFromFloatingFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;)V

    .line 120
    return-void
.end method
