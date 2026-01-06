.class public Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;
.super Ljava/lang/Object;
.source "VendorLibFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;
    }
.end annotation


# static fields
.field public static final AEB_HDR_LIB_FEATURE_NAME:Ljava/lang/String; = "aebhdr"

.field public static final BEAUTY_LIB_FEATURE_NAME:Ljava/lang/String; = "beauty"

.field public static final DUAL_BOKEH_LIB_FEATURE_NAME:Ljava/lang/String; = "dual_bokeh"

.field public static final HIFI_LLS_LIB_FEATURE_NAME:Ljava/lang/String; = "hifills"

.field public static final HIGH_RES_LIB_FEATURE_NAME:Ljava/lang/String; = "high_res"

.field public static final LL_HDR_LIB_FEATURE_NAME:Ljava/lang/String; = "llhdr"

.field public static final MF_HDR_LIB_FEATURE_NAME:Ljava/lang/String; = "mfhdr"

.field public static final SCENE_DETECTION_LIB_FEATURE_NAME:Ljava/lang/String; = "scene_detection"

.field public static final SINGLE_BOKEH_LIB_FEATURE_NAME:Ljava/lang/String; = "single_bokeh"

.field public static final SOCIAL_IMAGE_ENHANCE_LIB_FEATURE_NAME:Ljava/lang/String; = "image_enhance"

.field public static final SUPER_NIGHT_LIB_FEATURE_NAME:Ljava/lang/String; = "super_night"

.field private static final TAG:Ljava/lang/String;

.field private static final VENDOR_LIB_FLOAING_FEATURE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

.field private static sInstance:Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;


# instance fields
.field private mFeatureInfoList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->sInstance:Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 16

    .line 67
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "libInfoArray":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    .line 71
    .local v7, "libInfo":Ljava/lang/String;
    const-string v0, "\\."

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "libInfoAttributeArray":[Ljava/lang/String;
    array-length v0, v8

    const/4 v9, 0x3

    if-lt v0, v9, :cond_1

    .line 75
    :try_start_0
    aget-object v0, v8, v5

    .line 76
    .local v0, "name":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v10, v8, v9

    .line 77
    .local v10, "vendor":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v12, v8, v11

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "versionArray":[Ljava/lang/String;
    aget-object v13, v12, v5

    const-string v14, "v"

    invoke-virtual {v13, v14, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "lite"

    invoke-virtual {v13, v14, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 79
    .local v13, "major":I
    array-length v14, v12

    if-lt v14, v11, :cond_0

    aget-object v9, v12, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_0
    move v9, v5

    .line 81
    .local v9, "minor":I
    :goto_1
    iget-object v11, v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    new-instance v14, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;

    invoke-direct {v14, v0, v10, v13, v9}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v11, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->TAG:Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v15, "FeatureInfo name = %s, vendor = %s, major = %d, minor = %d"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v10, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v15, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .end local v0    # "name":Ljava/lang/String;
    .end local v9    # "minor":I
    .end local v10    # "vendor":Ljava/lang/String;
    .end local v12    # "versionArray":[Ljava/lang/String;
    .end local v13    # "major":I
    goto :goto_2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v9, "Parsing vendor lib feature(%s) is failed - %s"

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 88
    :cond_1
    sget-object v0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid feature "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v7    # "libInfo":Ljava/lang/String;
    .end local v8    # "libInfoAttributeArray":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 91
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;
    .locals 2

    const-class v0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->sInstance:Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    invoke-direct {v1}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;-><init>()V

    sput-object v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->sInstance:Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    .line 97
    :cond_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->sInstance:Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 93
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFeatureInfo(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;

    return-object v0
.end method

.method public isAvailableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
