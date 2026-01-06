.class public Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;,
        Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;
    }
.end annotation


# static fields
.field private static final FEATURE_STATE_DISABLED:I = 0x0

.field private static final FEATURE_STATE_ENABLED:I = 0x1

.field public static final FEATURE_TYPE_DYNAMIC_BW:I = 0x3

.field public static final FEATURE_TYPE_DYNAMIC_TX:I = 0x2

.field public static final FEATURE_TYPE_ICC:I = 0x9

.field public static final FEATURE_TYPE_ILA:I = 0x8

.field public static final FEATURE_TYPE_IWH_HETEROGENEOUS:I = 0x7

.field public static final FEATURE_TYPE_IWH_HOMOGENEOUS:I = 0x6

.field public static final FEATURE_TYPE_MLO:I = 0x1

.field public static final FEATURE_TYPE_MLO_CTRL:I = 0x4

.field public static final FEATURE_TYPE_SUPPORTED_CC:I = 0x5

.field public static final FEATURE_TYPE_UNKNOWN:I = -0x1

.field public static final FEATURE_TYPE_WIFI7:I = 0x0

.field private static final HIGHEST_VERSION:Ljava/lang/String; = "999999"

.field private static final LOWEST_VERSION:Ljava/lang/String; = "000000"

.field private static final SCPM_CONFIGURATION:Ljava/lang/String; = "wifi-enhanced-feature"

.field private static final TAG:Ljava/lang/String; = "SemWifiEnhancedFeatureController"

.field private static final UPDATE_SCPM_POLICY:I = 0x0

.field private static final WIFI_ENHANCED_FEATURE_CONTROLLER_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mChipsetVendorName:Ljava/lang/String;

.field private final mFeatureState:[I

.field private final mFeatureStateHandler:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

.field private mLatestSCPMVersion:Ljava/lang/String;

.field private final mProductModelName:Ljava/lang/String;

.field private mScpmDriverVersion:Ljava/lang/String;

.field private mScpmFirmwareVersion:Ljava/lang/String;

.field private mScpmSupportedCountryCode:Ljava/lang/String;

.field private mScpmWifiEnhancedFeatureControllerVersion:Ljava/lang/String;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeatureState(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureState:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeatureStateHandler(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureStateHandler:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmSupportedCountryCode(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmSupportedCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmScpmSupportedCountryCode(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmSupportedCountryCode:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$mparseScpmData(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->parseScpmData(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mCallbacks:Ljava/util/Set;

    .line 10
    .line 11
    const/16 p1, 0xa

    .line 12
    .line 13
    new-array p1, p1, [I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureState:[I

    .line 16
    .line 17
    const-string p1, "000000"

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmWifiEnhancedFeatureControllerVersion:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmDriverVersion:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmSupportedCountryCode:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mLatestSCPMVersion:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->getProductModelName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mProductModelName:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 40
    .line 41
    const-string p1, "FeatureStateHandlerThread"

    .line 42
    .line 43
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;Landroid/os/Looper;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureStateHandler:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureState:[I

    .line 60
    .line 61
    array-length p3, p2

    .line 62
    if-ge p1, p3, :cond_0

    .line 63
    .line 64
    const/4 p3, 0x1

    .line 65
    aput p3, p2, p1

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 76
    .line 77
    return-void
.end method

.method private checkFeaturePolicy()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->getWifiDriverVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->getWifiFirmwareVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "checkFeaturePolicy - device versions ["

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "/"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "/1.0]"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "SemWifiEnhancedFeatureController"

    .line 37
    .line 38
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmDriverVersion:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "1.0"

    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmWifiEnhancedFeatureControllerVersion:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method private driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mChipsetVendorName:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v2, "QUALCOMM"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    const-string p0, "-"

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    array-length p2, p1

    .line 42
    if-ge p2, v0, :cond_2

    .line 43
    .line 44
    array-length p2, p0

    .line 45
    if-ge p2, v0, :cond_2

    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    array-length p2, p1

    .line 49
    sub-int/2addr p2, v0

    .line 50
    aget-object p1, p1, p2

    .line 51
    .line 52
    const-string p2, "[^0-9]"

    .line 53
    .line 54
    const-string v1, ""

    .line 55
    .line 56
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    array-length v2, p0

    .line 61
    sub-int/2addr v2, v0

    .line 62
    aget-object p0, p0, v2

    .line 63
    .line 64
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    const-wide/16 v1, 0x0

    .line 73
    .line 74
    if-lez p2, :cond_3

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-wide p1, v1

    .line 84
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-lez v3, :cond_4

    .line 89
    .line 90
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_4
    cmp-long p0, v1, p1

    .line 95
    .line 96
    if-lez p0, :cond_5

    .line 97
    .line 98
    return v0

    .line 99
    :cond_5
    const/4 p0, 0x0

    .line 100
    return p0

    .line 101
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p2, "ver. violation check failure: "

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string p1, "SemWifiEnhancedFeatureController"

    .line 120
    .line 121
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_2
    return v0
.end method

.method private getFeatureType(Ljava/lang/String;)I
    .locals 11

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x6

    .line 7
    const/4 v3, 0x5

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v9, -0x1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    sparse-switch v10, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    :goto_0
    move p1, v9

    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :sswitch_0
    const-string v10, "Wifi7"

    .line 28
    .line 29
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, p0

    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_1
    const-string v10, "IwhHo"

    .line 40
    .line 41
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move p1, v0

    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :sswitch_2
    const-string v10, "IwhHe"

    .line 52
    .line 53
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move p1, v1

    .line 61
    goto :goto_1

    .line 62
    :sswitch_3
    const-string v10, "Mlo"

    .line 63
    .line 64
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move p1, v2

    .line 72
    goto :goto_1

    .line 73
    :sswitch_4
    const-string v10, "Ila"

    .line 74
    .line 75
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    move p1, v3

    .line 83
    goto :goto_1

    .line 84
    :sswitch_5
    const-string v10, "Icc"

    .line 85
    .line 86
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move p1, v4

    .line 94
    goto :goto_1

    .line 95
    :sswitch_6
    const-string v10, "SupportedCC"

    .line 96
    .line 97
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    move p1, v5

    .line 105
    goto :goto_1

    .line 106
    :sswitch_7
    const-string v10, "DynamicTx"

    .line 107
    .line 108
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    move p1, v6

    .line 116
    goto :goto_1

    .line 117
    :sswitch_8
    const-string v10, "DynamicBw"

    .line 118
    .line 119
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    move p1, v7

    .line 127
    goto :goto_1

    .line 128
    :sswitch_9
    const-string v10, "MloCtrl"

    .line 129
    .line 130
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_9

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    move p1, v8

    .line 138
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 139
    .line 140
    .line 141
    return v9

    .line 142
    :pswitch_0
    return v8

    .line 143
    :pswitch_1
    return v2

    .line 144
    :pswitch_2
    return v1

    .line 145
    :pswitch_3
    return v7

    .line 146
    :pswitch_4
    return v0

    .line 147
    :pswitch_5
    return p0

    .line 148
    :pswitch_6
    return v3

    .line 149
    :pswitch_7
    return v6

    .line 150
    :pswitch_8
    return v5

    .line 151
    :pswitch_9
    return v4

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x583862e5 -> :sswitch_9
        -0x1dbf8b2c -> :sswitch_8
        -0x1dbf88fd -> :sswitch_7
        -0xae6ee92 -> :sswitch_6
        0x11e69 -> :sswitch_5
        0x11f7e -> :sswitch_4
        0x12e90 -> :sswitch_3
        0x43c5b77 -> :sswitch_2
        0x43c5b81 -> :sswitch_1
        0x4fb43a2 -> :sswitch_0
    .end sparse-switch

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getProductModelName()Ljava/lang/String;
    .locals 3

    .line 1
    const-string p0, "ro.product.model"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "null"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "SC"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string v0, "SM-W"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x3

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    if-lt v0, v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    const-string v0, "SM-"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x7

    .line 56
    if-lt v0, v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    const-string p0, "unknown"

    .line 64
    .line 65
    return-object p0
.end method

.method private getWifiDriverVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object p0

    .line 32
    :cond_2
    :goto_0
    const-string p0, "000000"

    .line 33
    .line 34
    return-object p0
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object p0

    .line 33
    :cond_2
    :goto_0
    const-string p0, "000000"

    .line 34
    .line 35
    return-object p0
.end method

.method private isParsableSupportedCcPolicy([Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const-string v2, " "

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mProductModelName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    array-length v1, p1

    .line 23
    const/4 v2, 0x2

    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    aget-object p1, p1, v2

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmSupportedCountryCode:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "isParsableSupportedCcPolicy - ["

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmSupportedCountryCode:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "]"

    .line 44
    .line 45
    invoke-static {p1, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "SemWifiEnhancedFeatureController"

    .line 50
    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmSupportedCountryCode:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_0

    .line 61
    .line 62
    return v0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method private parsePolicy([Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const-string v2, " "

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mProductModelName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v2, "all"

    .line 23
    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    :cond_0
    array-length v1, p1

    .line 31
    const/4 v2, 0x5

    .line 32
    if-lt v1, v2, :cond_4

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    aget-object v1, p1, v1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmDriverVersion:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "000000"

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmDriverVersion:Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    const/4 v1, 0x3

    .line 54
    aget-object v1, p1, v1

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 69
    .line 70
    :cond_2
    const/4 v1, 0x4

    .line 71
    aget-object p1, p1, v1

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmWifiEnhancedFeatureControllerVersion:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    const-string p1, "1.0"

    .line 86
    .line 87
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmWifiEnhancedFeatureControllerVersion:Ljava/lang/String;

    .line 88
    .line 89
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "parsePolicy - allowed versions ["

    .line 92
    .line 93
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmDriverVersion:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, "/"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmFirmwareVersion:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mScpmWifiEnhancedFeatureControllerVersion:Ljava/lang/String;

    .line 115
    .line 116
    const-string v1, "]"

    .line 117
    .line 118
    invoke-static {p1, p0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string p1, "SemWifiEnhancedFeatureController"

    .line 123
    .line 124
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    return v0

    .line 128
    :cond_4
    const/4 p0, 0x0

    .line 129
    return p0
.end method

.method private parseScpmData(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    const-string v2, "parseScpmData: FileInputStream close failure"

    .line 6
    .line 7
    const-string v3, "parseScpmData: DataInputStream close failure"

    .line 8
    .line 9
    const-string v4, "parseScpmData: BufferedReader close failure"

    .line 10
    .line 11
    const-string v5, "parseScpmData: ParcelFileDescriptor close failure"

    .line 12
    .line 13
    const-string v6, "SemWifiEnhancedFeatureController"

    .line 14
    .line 15
    const-string v7, "parseScpmData: new policy "

    .line 16
    .line 17
    const-string v8, "parseScpmData: null file descriptor "

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, -0x1

    .line 21
    :try_start_0
    const-string v11, "wifi-enhanced-feature"

    .line 22
    .line 23
    move-object/from16 v12, p1

    .line 24
    .line 25
    invoke-interface {v12, v11}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1a

    .line 29
    if-nez v11, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-interface {v12}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, " "

    .line 46
    .line 47
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    if-eqz v11, :cond_0

    .line 65
    .line 66
    :try_start_2
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    return v10

    .line 70
    :catchall_0
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_0
    return v10

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    move-object v8, v9

    .line 76
    move-object v12, v8

    .line 77
    move-object v13, v12

    .line 78
    :goto_0
    move-object v9, v11

    .line 79
    goto/16 :goto_17

    .line 80
    .line 81
    :cond_1
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    .line 82
    .line 83
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_19

    .line 88
    .line 89
    .line 90
    :try_start_4
    new-instance v12, Ljava/io/DataInputStream;

    .line 91
    .line 92
    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_18

    .line 93
    .line 94
    .line 95
    :try_start_5
    new-instance v13, Ljava/io/BufferedReader;

    .line 96
    .line 97
    new-instance v14, Ljava/io/InputStreamReader;

    .line 98
    .line 99
    invoke-direct {v14, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_17

    .line 103
    .line 104
    .line 105
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_16

    .line 109
    if-nez v9, :cond_2

    .line 110
    .line 111
    :try_start_7
    const-string v0, "parseScpmData: empty data"

    .line 112
    .line 113
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 114
    .line 115
    .line 116
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_2
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :goto_1
    :try_start_9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_3
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :goto_2
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catchall_4
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :goto_3
    :try_start_b
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :catchall_5
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :goto_4
    return v10

    .line 145
    :catchall_6
    move-exception v0

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    :try_start_c
    const-string v14, ""

    .line 148
    .line 149
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_16

    .line 157
    const/4 v15, 0x2

    .line 158
    if-eqz v9, :cond_3

    .line 159
    .line 160
    move/from16 v16, v10

    .line 161
    .line 162
    :try_start_d
    array-length v10, v9

    .line 163
    if-ne v10, v15, :cond_4

    .line 164
    .line 165
    const/4 v10, 0x1

    .line 166
    aget-object v9, v9, v10

    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 172
    goto :goto_5

    .line 173
    :catchall_7
    move-exception v0

    .line 174
    move-object v9, v11

    .line 175
    move/from16 v10, v16

    .line 176
    .line 177
    goto/16 :goto_17

    .line 178
    .line 179
    :cond_3
    move/from16 v16, v10

    .line 180
    .line 181
    :cond_4
    :goto_5
    :try_start_e
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_16

    .line 185
    if-eqz v9, :cond_5

    .line 186
    .line 187
    :try_start_f
    const-string v0, "parseScpmData: wrong policy version"

    .line 188
    .line 189
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 190
    .line 191
    .line 192
    :try_start_10
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :catchall_8
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    :goto_6
    :try_start_11
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :catchall_9
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :goto_7
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 207
    .line 208
    .line 209
    goto :goto_8

    .line 210
    :catchall_a
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :goto_8
    :try_start_13
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 214
    .line 215
    .line 216
    goto :goto_9

    .line 217
    :catchall_b
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :goto_9
    return v16

    .line 221
    :cond_5
    :try_start_14
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mLatestSCPMVersion:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_16

    .line 227
    if-nez v9, :cond_6

    .line 228
    .line 229
    :try_start_15
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mLatestSCPMVersion:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_6

    .line 236
    .line 237
    const-string v0, "parseScpmData: Data is latest"

    .line 238
    .line 239
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 240
    .line 241
    .line 242
    :try_start_16
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 243
    .line 244
    .line 245
    goto :goto_a

    .line 246
    :catchall_c
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :goto_a
    :try_start_17
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 250
    .line 251
    .line 252
    goto :goto_b

    .line 253
    :catchall_d
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :goto_b
    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .line 257
    .line 258
    .line 259
    goto :goto_c

    .line 260
    :catchall_e
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :goto_c
    :try_start_19
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    .line 264
    .line 265
    .line 266
    goto :goto_d

    .line 267
    :catchall_f
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    :goto_d
    return v16

    .line 271
    :cond_6
    :try_start_1a
    new-instance v9, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    iput-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mLatestSCPMVersion:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    .line 287
    .line 288
    move/from16 v7, v16

    .line 289
    .line 290
    :goto_e
    :try_start_1b
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    if-eqz v9, :cond_c

    .line 295
    .line 296
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    if-eqz v9, :cond_b

    .line 305
    .line 306
    array-length v10, v9

    .line 307
    if-ge v10, v15, :cond_7

    .line 308
    .line 309
    goto/16 :goto_10

    .line 310
    .line 311
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v14, "parseScpmData: Value "

    .line 317
    .line 318
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    const/4 v10, 0x0

    .line 336
    aget-object v14, v9, v10

    .line 337
    .line 338
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    invoke-direct {v0, v14}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->getFeatureType(Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    move/from16 v15, v16

    .line 347
    .line 348
    if-eq v10, v15, :cond_a

    .line 349
    .line 350
    const/4 v15, 0x5

    .line 351
    if-ne v10, v15, :cond_8

    .line 352
    .line 353
    invoke-direct {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->isParsableSupportedCcPolicy([Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-eqz v9, :cond_b

    .line 358
    .line 359
    :goto_f
    const/4 v7, 0x0

    .line 360
    goto :goto_10

    .line 361
    :catchall_10
    move-exception v0

    .line 362
    move v10, v7

    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :cond_8
    invoke-direct {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->parsePolicy([Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    if-eqz v9, :cond_9

    .line 370
    .line 371
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureState:[I

    .line 372
    .line 373
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->checkFeaturePolicy()I

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    aput v15, v9, v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 378
    .line 379
    :try_start_1c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v9, "parseScpmData: feature type "

    .line 385
    .line 386
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v9, ", policy "

    .line 393
    .line 394
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureState:[I

    .line 398
    .line 399
    aget v9, v9, v10

    .line 400
    .line 401
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    .line 409
    .line 410
    .line 411
    goto :goto_f

    .line 412
    :catchall_11
    move-exception v0

    .line 413
    move-object v9, v11

    .line 414
    const/4 v10, 0x0

    .line 415
    goto :goto_17

    .line 416
    :cond_9
    :try_start_1d
    const-string v9, "parseScpmData: There is no parsed policy"

    .line 417
    .line 418
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    goto :goto_10

    .line 422
    :cond_a
    const-string v9, "parseScpmData: Unknown feature type"

    .line 423
    .line 424
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 425
    .line 426
    .line 427
    :cond_b
    :goto_10
    const/4 v15, 0x2

    .line 428
    const/16 v16, -0x1

    .line 429
    .line 430
    goto/16 :goto_e

    .line 431
    .line 432
    :cond_c
    :try_start_1e
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    .line 433
    .line 434
    .line 435
    goto :goto_11

    .line 436
    :catchall_12
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    :goto_11
    :try_start_1f
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    .line 440
    .line 441
    .line 442
    goto :goto_12

    .line 443
    :catchall_13
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    :goto_12
    :try_start_20
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    .line 447
    .line 448
    .line 449
    goto :goto_13

    .line 450
    :catchall_14
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    :goto_13
    :try_start_21
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    .line 454
    .line 455
    .line 456
    goto/16 :goto_1c

    .line 457
    .line 458
    :catchall_15
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    goto :goto_1c

    .line 462
    :catchall_16
    move-exception v0

    .line 463
    :goto_14
    move-object v9, v11

    .line 464
    :goto_15
    const/4 v10, -0x1

    .line 465
    goto :goto_17

    .line 466
    :catchall_17
    move-exception v0

    .line 467
    move-object v13, v9

    .line 468
    goto :goto_14

    .line 469
    :catchall_18
    move-exception v0

    .line 470
    move-object v12, v9

    .line 471
    :goto_16
    move-object v13, v12

    .line 472
    goto :goto_14

    .line 473
    :catchall_19
    move-exception v0

    .line 474
    move-object v8, v9

    .line 475
    move-object v12, v8

    .line 476
    goto :goto_16

    .line 477
    :catchall_1a
    move-exception v0

    .line 478
    move-object v8, v9

    .line 479
    move-object v12, v8

    .line 480
    move-object v13, v12

    .line 481
    goto :goto_15

    .line 482
    :goto_17
    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    const-string v7, "parseScpmData: query failure "

    .line 488
    .line 489
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1f

    .line 504
    .line 505
    .line 506
    if-eqz v13, :cond_d

    .line 507
    .line 508
    :try_start_23
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1b

    .line 509
    .line 510
    .line 511
    goto :goto_18

    .line 512
    :catchall_1b
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    :cond_d
    :goto_18
    if-eqz v12, :cond_e

    .line 516
    .line 517
    :try_start_24
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1c

    .line 518
    .line 519
    .line 520
    goto :goto_19

    .line 521
    :catchall_1c
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    :cond_e
    :goto_19
    if-eqz v8, :cond_f

    .line 525
    .line 526
    :try_start_25
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1d

    .line 527
    .line 528
    .line 529
    goto :goto_1a

    .line 530
    :catchall_1d
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    :cond_f
    :goto_1a
    if-eqz v9, :cond_10

    .line 534
    .line 535
    :try_start_26
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1e

    .line 536
    .line 537
    .line 538
    goto :goto_1b

    .line 539
    :catchall_1e
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    :cond_10
    :goto_1b
    move v7, v10

    .line 543
    :goto_1c
    return v7

    .line 544
    :catchall_1f
    move-exception v0

    .line 545
    if-eqz v13, :cond_11

    .line 546
    .line 547
    :try_start_27
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_20

    .line 548
    .line 549
    .line 550
    goto :goto_1d

    .line 551
    :catchall_20
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    :cond_11
    :goto_1d
    if-eqz v12, :cond_12

    .line 555
    .line 556
    :try_start_28
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_21

    .line 557
    .line 558
    .line 559
    goto :goto_1e

    .line 560
    :catchall_21
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    :cond_12
    :goto_1e
    if-eqz v8, :cond_13

    .line 564
    .line 565
    :try_start_29
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_22

    .line 566
    .line 567
    .line 568
    goto :goto_1f

    .line 569
    :catchall_22
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    :cond_13
    :goto_1f
    if-eqz v9, :cond_14

    .line 573
    .line 574
    :try_start_2a
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_23

    .line 575
    .line 576
    .line 577
    goto :goto_20

    .line 578
    :catchall_23
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    :cond_14
    :goto_20
    throw v0
.end method

.method private versionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    const-string v0, "\\."

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    :goto_0
    array-length v2, p2

    .line 20
    if-ge v1, v2, :cond_6

    .line 21
    .line 22
    array-length v2, p1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    return p0

    .line 26
    :cond_1
    aget-object v2, p1, v1

    .line 27
    .line 28
    const-string v3, "[^0-9]"

    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    aget-object v5, p2, v1

    .line 37
    .line 38
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    move-wide v7, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_2
    cmp-long v2, v5, v7

    .line 68
    .line 69
    if-lez v2, :cond_4

    .line 70
    .line 71
    return p0

    .line 72
    :cond_4
    if-gez v2, :cond_5

    .line 73
    .line 74
    return v0

    .line 75
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "ver. violation check failure: "

    .line 82
    .line 83
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string p2, "SemWifiEnhancedFeatureController"

    .line 98
    .line 99
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return p0

    .line 103
    :cond_6
    return v0

    .line 104
    :cond_7
    :goto_3
    return p0
.end method


# virtual methods
.method public getFeatureState(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mFeatureState:[I

    .line 2
    .line 3
    aget p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public getmWifiScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->mCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
