.class public Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;
.super Ljava/lang/Object;
.source "VendorLibFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/vendor/VendorLibFeature$FeatureInfo;
    }
.end annotation


# static fields
.field public static final AEB_HDR_LIB_FEATURE_NAME:Ljava/lang/String; = "aebhdr"

.field public static final HIFI_LLS_LIB_FEATURE_NAME:Ljava/lang/String; = "hifills"

.field public static final HIGH_RES_LIB_FEATURE_NAME:Ljava/lang/String; = "high_res"

.field public static final IMAGE_ENHANCEMENT_LIB_FEATURE_NAME:Ljava/lang/String; = "image_enhance"

.field public static final LL_HDR_LIB_FEATURE_NAME:Ljava/lang/String; = "llhdr"

.field public static final MF_HDR_LIB_FEATURE_NAME:Ljava/lang/String; = "mfhdr"

.field public static final SUPER_NIGHT_LIB_FEATURE_NAME:Ljava/lang/String; = "super_night"

.field public static final SUPER_RESOLUTION_AI_FEATURE_NAME:Ljava/lang/String; = "ai_clear_zoom"

.field public static final SUPER_RESOLUTION_LIB_FEATURE_NAME:Ljava/lang/String; = "super_resolution"

.field public static final SUPER_RESOLUTION_RAW_LIB_FEATURE_NAME:Ljava/lang/String; = "super_resolution_raw"

.field public static final SUPER_RESOLUTION_TETRA:Ljava/lang/String; = "super_resolution_tetra"

.field private static final TAG:Ljava/lang/String; = "VendorLibFeature"

.field private static final VENDOR_LIB_FLOATING_FEATURE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

.field private static sInstance:Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;


# instance fields
.field private mFeatureInfoList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sep/camera/vendor/VendorLibFeature$FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->sInstance:Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 15

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    .line 72
    nop

    .line 73
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/vendor/SemFloatingFeatureWrapper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "libInfoArray":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 76
    .local v5, "libInfo":Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "libInfoAttributeArray":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    const-string v9, "VendorLibFeature"

    if-lt v7, v8, :cond_1

    .line 80
    :try_start_0
    aget-object v7, v6, v3

    .line 81
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v10, v6, v8

    .line 82
    .local v10, "vendor":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v12, v6, v11

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "versionArray":[Ljava/lang/String;
    aget-object v13, v12, v3

    const-string v14, "v"

    .line 84
    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "lite"

    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 85
    .local v13, "major":I
    array-length v14, v12

    if-lt v14, v11, :cond_0

    aget-object v8, v12, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v3

    .line 87
    .local v8, "minor":I
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    new-instance v14, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature$FeatureInfo;

    invoke-direct {v14, v7, v10, v13, v8}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature$FeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v7, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "minor":I
    .end local v10    # "vendor":Ljava/lang/String;
    .end local v12    # "versionArray":[Ljava/lang/String;
    .end local v13    # "major":I
    goto :goto_2

    .line 89
    :catch_0
    move-exception v7

    .line 90
    .local v7, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/util/Locale;->UK:Ljava/util/Locale;

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v10

    .line 92
    const-string v11, "Parsing vendor lib feature(%s) is failed - %s"

    invoke-static {v8, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 99
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid feature "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v5    # "libInfo":Ljava/lang/String;
    .end local v6    # "libInfoAttributeArray":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_2
    return-void
.end method

.method private static declared-synchronized clearInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    monitor-enter v0

    .line 124
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->sInstance:Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    .line 123
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->sInstance:Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;-><init>()V

    sput-object v1, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->sInstance:Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;

    .line 113
    :cond_0
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->sInstance:Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized isAvailableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;
    .end local p1    # "featureName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->clearInstance()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 120
    .end local p0    # "this":Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/vendor/VendorLibFeature;->mFeatureInfoList:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
