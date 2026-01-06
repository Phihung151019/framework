.class public Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;
    }
.end annotation


# static fields
.field static final ACTION_KNOX_RESTRICTIONS_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

.field private static final ANDROID_VERSION_ROS:I = 0xb

.field private static final ANDROID_VERSION_SOS:I = 0xc

.field static final NCHO_API_MAJOR_VERSION_TO_SUPPORT_ROAMBAND:I = 0x300

.field static final NCHO_API_MINOR_VERSION_TO_SUPPORT_ROAMBAND:I = 0x2

.field private static final NOT_INITIALIZED:I = -0x1

.field static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.SettingsReceiver"

.field private static final TAG:Ljava/lang/String; = "SemWifiB2BPolicy"

.field private static final UNINITIALIZED:I = -0x1

.field private static final WIFI_BAND_24_GHZ_OFFSET:I = 0x0

.field private static final WIFI_BAND_5_GHZ_OFFSET:I = 0x1

.field private static final WIFI_BAND_6_GHZ_OFFSET:I = 0x2

.field static vendorReleaseVersion:I = -0x1


# instance fields
.field private final bandMapping:Landroid/util/SparseIntArray;

.field private final context:Landroid/content/Context;

.field private isChipsetNCHOEnabled:Z

.field private isConnectivityCheckDisabled:Z

.field private isNchoSupportedByDriver:Z

.field private isRoamBandSupportedByDriver:Z

.field private isRoambandset:Z

.field private final listenerLock:Ljava/lang/Object;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiLooper:Landroid/os/Looper;

.field private nchoMajorVersion:I

.field private nchoMinorVersion:I

.field private final policyApplied:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final policyLock:Ljava/lang/Object;

.field private restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

.field private setbandDefaultValue:I

.field private final supportedBand:I

.field private verboseLoggingEnabled:Z

.field private final wifiB2bPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManager:Landroid/net/wifi/WifiManager;

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;


# direct methods
.method public static synthetic $r8$lambda$4CDH4FVVQaGW8w1bsZyrdV_FjBI(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$4yr8Mdu-9Rr-bMkKhFXV6HSqCGI(Landroid/net/wifi/WifiAvailableChannel;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->lambda$getAvailableScanFrequencies$0(Landroid/net/wifi/WifiAvailableChannel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$fozpabBq3EEvNQJss2YxgHkw0J0(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->lambda$fetchWiFiPolicy$2(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistenerLock(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateWiFiB2BPolicy(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->updateWiFiB2BPolicy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyApplied:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 48
    .line 49
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    iput v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    .line 60
    .line 61
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->context:Landroid/content/Context;

    .line 62
    .line 63
    const-string v0, "wifi"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    .line 73
    iput-object p3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 74
    .line 75
    iput-object p4, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->mWifiLooper:Landroid/os/Looper;

    .line 78
    .line 79
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDriverSupportedBands()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->supportedBand:I

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string p2, "value of 6ghz secproduct feature :true  setbandDefaultValue "

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    .line 93
    .line 94
    const-string p2, "SemWifiB2BPolicy"

    .line 95
    .line 96
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private checkAndGetRestrictionsManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private createBandMapping()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    const/4 v3, 0x6

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    const/4 v0, 0x7

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private fetchWiFiPolicy(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;-><init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parse(Landroid/os/Bundle;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->getConnectivityCheckDisabledSetting()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isConnectivityCheckDisabled:Z

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->getFeedback()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyResult(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method

.method private formatAvailableRoamScanFrequencies(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    and-int/lit8 v2, p2, 0x1

    .line 17
    .line 18
    if-lez v2, :cond_2

    .line 19
    .line 20
    :cond_1
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getAvailableScanFrequencies(I)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    if-eqz p2, :cond_3

    .line 29
    .line 30
    and-int/lit8 v2, p2, 0x2

    .line 31
    .line 32
    if-lez v2, :cond_4

    .line 33
    .line 34
    :cond_3
    const/4 v2, 0x6

    .line 35
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getAvailableScanFrequencies(I)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    :cond_4
    if-eqz p2, :cond_5

    .line 43
    .line 44
    and-int/lit8 p2, p2, 0x4

    .line 45
    .line 46
    if-lez p2, :cond_6

    .line 47
    .line 48
    :cond_5
    const/16 p2, 0x8

    .line 49
    .line 50
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getAvailableScanFrequencies(I)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    :cond_6
    const-string p2, ", *"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Ljava/lang/StringBuffer;

    .line 64
    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .line 67
    .line 68
    array-length v2, p1

    .line 69
    const/4 v3, 0x0

    .line 70
    move v4, v3

    .line 71
    :goto_0
    if-ge v3, v2, :cond_8

    .line 72
    .line 73
    aget-object v5, p1, v3

    .line 74
    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_7

    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    const-string v6, " "

    .line 88
    .line 89
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const-string v0, "SemWifiB2BPolicy"

    .line 107
    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    const-string p0, "null string as there is no available frequencies"

    .line 111
    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_9
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    .line 117
    .line 118
    if-eqz p0, :cond_a

    .line 119
    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string p1, "Formatted input frequencies string is "

    .line 123
    .line 124
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0
.end method

.method private getAvailableScanFrequencies(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SemWifiB2BPolicy"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->getUsableChannels(II)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "getUsableChannels() "

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    .line 71
    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p1, "getUsableChannels "

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_0
    return-object v1
.end method

.method private getPolicy()Landroid/os/Bundle;
    .locals 2

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->checkAndGetRestrictionsManager()V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    const-string v0, "com.samsung.android.SettingsReceiver"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    const-string p0, "SemWifiB2BPolicy"

    const-string v0, "ApplicationRestrictionsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getVendorVersion()I
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->vendorReleaseVersion:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string p0, "ro.vendor.build.version.release"

    .line 7
    .line 8
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sput p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->vendorReleaseVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :catch_0
    :cond_0
    sget p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->vendorReleaseVersion:I

    .line 25
    .line 26
    return p0
.end method

.method private initDriverNchoCapability(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 5

    .line 1
    const-string v0, "SemWifiB2BPolicy"

    .line 2
    .line 3
    const-string v1, "ncho driver version details nchoMajorVersion is "

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isNchoGetDriverCapaSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getNchoFeature()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v4, 0xff00

    .line 19
    .line 20
    .line 21
    and-int/2addr v2, v4

    .line 22
    iput v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getNchoFeature()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    and-int/lit16 p1, p1, 0xff

    .line 29
    .line 30
    iput p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    .line 31
    .line 32
    iget v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 33
    .line 34
    const/16 v4, 0x300

    .line 35
    .line 36
    if-lt v2, v4, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-lt p1, v2, :cond_1

    .line 40
    .line 41
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 45
    .line 46
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " nchoMinorVersion  is "

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " isNchoSupportedByDriver "

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    const-string p0, "Exception if driver is not ready so ignore "

    .line 85
    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static isGrantedPackage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "com.android.settings"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$fetchWiFiPolicy$2(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getNetworkName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string p0, "SemWifiB2BPolicy"

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static synthetic lambda$getAvailableScanFrequencies$0(Landroid/net/wifi/WifiAvailableChannel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiAvailableChannel;->getFrequencyMhz()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private setPolicyResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->checkAndGetRestrictionsManager()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 5
    .line 6
    const-string v0, "com.samsung.android.SettingsReceiver.feedback"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void
.end method

.method private updateWiFiB2BPolicy()V
    .locals 3

    .line 1
    const-string v0, "updateB2BPolicy - End"

    .line 2
    .line 3
    const-string v1, "SemWifiB2BPolicy"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "updateB2BPolicy - Start"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getPolicy()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->fetchWiFiPolicy(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    throw p0
.end method


# virtual methods
.method public applyWiFiB2BPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getPolicy(Ljava/lang/String;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->clearWiFiB2BPolicy(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyApplied(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamSettings()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_8

    .line 31
    .line 32
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamDelta(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/16 v5, 0xc

    .line 73
    .line 74
    if-ge v4, v5, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 77
    .line 78
    invoke-virtual {v3, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    .line 87
    .line 88
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamBand(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getSetRoamScanFrequencies()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->formatAvailableRoamScanFrequencies(Ljava/lang/String;I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v3, " "

    .line 108
    .line 109
    const-string v4, "SemWifiB2BPolicy"

    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v7, "set roamscan frequencies are not null "

    .line 120
    .line 121
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getAddRoamScanFrequencies()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->formatAvailableRoamScanFrequencies(Ljava/lang/String;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    if-eqz v5, :cond_5

    .line 153
    .line 154
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setAddRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v8, "add roamscan frequencies are not null "

    .line 161
    .line 162
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_5
    const-string v3, "policy is applied for network: "

    .line 182
    .line 183
    const-string v6, " with roamtrigger "

    .line 184
    .line 185
    invoke-static {v3, p2, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v3, " roamdelta "

    .line 197
    .line 198
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, " roamscanperiod "

    .line 209
    .line 210
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v3, " roamband "

    .line 221
    .line 222
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v3, " noNetworkDisable "

    .line 233
    .line 234
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noNetworkDisable()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v0, " setroamscanFrequencies "

    .line 245
    .line 246
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, ""

    .line 250
    .line 251
    if-eqz v1, :cond_6

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_6
    move-object v1, v0

    .line 255
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, " addroamscanFrequencies "

    .line 259
    .line 260
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    if-eqz v5, :cond_7

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_7
    move-object v5, v0

    .line 267
    :goto_1
    invoke-static {p2, v5, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyApplied(Ljava/lang/String;Z)V

    .line 271
    .line 272
    .line 273
    return v2
.end method

.method public clearWiFiB2BPolicy(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "SemWifiB2BPolicy"

    .line 2
    .line 3
    const-string v1, "clearWiFiB2BPolicy: set ncho mode & policy applied to false"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyApplied(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0xb

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    .line 28
    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamBand(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Wi-Fi B2B Policy:"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, " - Active: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, " - Chipset NCHO Mode: "

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, " - Chipset NCHO Mode supported by Driver: "

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, " - Chipset NCHO Major verion: "

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 73
    .line 74
    const-string v1, " - Chipset NCHO Minor verion: "

    .line 75
    .line 76
    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter p1

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    .line 96
    .line 97
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 103
    .line 104
    .line 105
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getIsNchoSupportedByDriver()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 2
    .line 3
    return p0
.end method

.method public getIsRoamBandSupportedByDriver()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    .line 2
    .line 3
    return p0
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamBand(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamDelta(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamScanPeriod(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamTrigger(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamTriggerLegacy(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 5

    .line 1
    const-string v0, "SemWifiB2BPolicy"

    .line 2
    .line 3
    const-string v1, "handle boot complete from wfiservice. "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->context:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;-><init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v3, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->mWifiLooper:Landroid/os/Looper;

    .line 25
    .line 26
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->initDriverNchoCapability(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->updateWiFiB2BPolicy()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->createBandMapping()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->initializePossibleFrequencies()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter p1

    .line 48
    :try_start_0
    const-string v0, "SemWifiB2BPolicy"

    .line 49
    .line 50
    const-string v1, "calling apply policy message if there is b2bpolicy on bootup"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    .line 56
    .line 57
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    monitor-exit p1

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public isConnectivityCheckDisabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isConnectivityCheckDisabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isNetworkRequiresForceConnection(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noNetworkDisable()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method isPolicyApplied(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyApplied:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "isPolicyApplied("

    .line 22
    .line 23
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "): "

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "SemWifiB2BPolicy"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    return v0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->isWesModeEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public resetNCHOMode()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 3
    .line 4
    return-void
.end method

.method public sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move v3, p3

    .line 14
    move v4, p4

    .line 15
    move-object v5, p5

    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public setAddRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setNCHOModeEnabled:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " isChipsetNCHOEnabled = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 17
    .line 18
    const-string v2, "SemWifiB2BPolicy"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 32
    .line 33
    if-eq v0, p2, :cond_1

    .line 34
    .line 35
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 38
    .line 39
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method setPolicyApplied(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "setPolicyApplied: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " for "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "SemWifiB2BPolicy"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyApplied:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 19
    .line 20
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamBand(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamDelta(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setRoamScanEnabled(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanEnabled(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 14
    .line 15
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 21
    .line 22
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setWesModeEnabled(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
