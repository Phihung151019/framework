.class public Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ANDROID_VERSION_R_OS:I = 0xb

.field private static final FEATURE_ID_ASSURANCE:I = 0xa

.field private static final FEATURE_ID_BIG_DATA:I = 0xe

.field private static final FEATURE_ID_DELAYED_WAKEUP:I = 0x5

.field private static final FEATURE_ID_MHS:I = 0x7

.field private static final FEATURE_ID_NCHO:I = 0x9

.field private static final FEATURE_ID_OPTIMIZER:I = 0x3

.field private static final FEATURE_ID_P2P:I = 0xd

.field private static final FEATURE_ID_PCAP_LOGGING:I = 0xb

.field private static final FEATURE_ID_PNO:I = 0x1

.field private static final FEATURE_ID_RFC8325:I = 0x6

.field private static final FEATURE_ID_ROAMING:I = 0x8

.field private static final FEATURE_ID_SCHEDULED_PM:I = 0x4

.field private static final FEATURE_ID_SECURITY:I = 0xc

.field private static final FEATURE_ID_STDPLUS:I = 0x10

.field private static final FEATURE_ID_TWT:I = 0x2

.field private static final LEN_FEATURE_VERSION:I = 0x4

.field private static final LEN_HW_FEATURE_FIELD:I = 0x2

.field private static final LEN_SOLUTION_NAME:I = 0x3

.field private static final LEN_SW_FEATURE_FIELD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDriverFeatureProvider"


# instance fields
.field private final DBG:Z

.field private mFirstApiLevel:I

.field private mIsReady:Z

.field private mNumAntennas:I

.field private mNumMainCores:I

.field private mSolutionName:Ljava/lang/String;

.field private mSupportLowPowerRxCore:Z

.field private mSupportedConCurrencyMode:I

.field mSwFeatureInteger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSwFeatureLong:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorBuildVersion:I

.field private mWifiStandard:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mFirstApiLevel:I

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mIsReady:Z

    .line 28
    .line 29
    const-string v1, "Unknown"

    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 32
    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mWifiStandard:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSupportLowPowerRxCore:Z

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mNumMainCores:I

    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mNumAntennas:I

    .line 40
    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSupportedConCurrencyMode:I

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getVendorBuildVersion()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mVendorBuildVersion:I

    .line 48
    .line 49
    return-void
.end method

.method private configDefaultFeatureSet()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mVendorBuildVersion:I

    .line 31
    .line 32
    const/16 v1, 0xb

    .line 33
    .line 34
    if-lt v0, v1, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 37
    .line 38
    const/16 v0, 0x9

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x302

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method private getFirstApiLevel()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mFirstApiLevel:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ro.product.first_api_level"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mFirstApiLevel:I

    .line 13
    .line 14
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mFirstApiLevel:I

    .line 15
    .line 16
    return p0
.end method

.method private getVendorBuildVersion()I
    .locals 3

    .line 1
    const-string p0, "ro.vendor.build.version.release"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "version: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, "\n"

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "WifiDriverFeatureProvider"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p0, -0x1

    .line 49
    return p0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string p0, "^[0-9a-fA-F]+$"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x7

    .line 9
    if-le v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p0, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v4, "^[a-zA-Z]+$"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {p0, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/16 v3, 0x10

    .line 53
    .line 54
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/16 v4, 0x9

    .line 59
    .line 60
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    add-int/2addr v4, v5

    .line 69
    add-int/lit8 v6, v5, 0xd

    .line 70
    .line 71
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    add-int/lit8 v4, v5, 0x6

    .line 80
    .line 81
    add-int/2addr v4, v3

    .line 82
    add-int/2addr v4, v2

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-ne v4, p1, :cond_0

    .line 88
    .line 89
    if-lt v5, v1, :cond_0

    .line 90
    .line 91
    if-lt v3, v1, :cond_0

    .line 92
    .line 93
    if-lez p0, :cond_0

    .line 94
    .line 95
    const/4 p0, 0x1

    .line 96
    return p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "Validation error: "

    .line 101
    .line 102
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, "WifiDriverFeatureProvider"

    .line 113
    .line 114
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_0
    return v0
.end method

.method private parseHwFeatures(I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0xf

    .line 2
    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mWifiStandard:I

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x10

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSupportLowPowerRxCore:Z

    .line 15
    .line 16
    and-int/lit8 v0, p1, 0x70

    .line 17
    .line 18
    shr-int/lit8 v0, v0, 0x5

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mNumMainCores:I

    .line 21
    .line 22
    and-int/lit16 v0, p1, 0x700

    .line 23
    .line 24
    shr-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSupportedConCurrencyMode:I

    .line 27
    .line 28
    and-int/lit16 p1, p1, 0x3800

    .line 29
    .line 30
    shr-int/lit8 p1, p1, 0xb

    .line 31
    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mNumAntennas:I

    .line 33
    .line 34
    return-void
.end method

.method private parseSwFeatures(Ljava/lang/String;I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x2

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/16 v3, 0x10

    .line 11
    .line 12
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    add-int v4, v0, v1

    .line 29
    .line 30
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    if-le v1, v5, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :goto_1
    move v0, v4

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, "parse error: "

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "WifiDriverFeatureProvider"

    .line 91
    .line 92
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method

.method private throwIfNotReady()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mIsReady:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Not initialized yet"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method


# virtual methods
.method public getChipsetSolutionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public getNchoFeature()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public getOptimizerFeature()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getFirstApiLevel()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "SLS"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "MTK"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    return v2

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public getP2pFeature()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public getPcapLoggingFeature()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v0, 0xb

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public getScheduledPmFeature()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getFirstApiLevel()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public getStdPlusFeature()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    return-wide v0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    int-to-long v0, p0

    .line 77
    return-wide v0
.end method

.method public getTwtFeature()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public hasLowPowerRxCore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSupportLowPowerRxCore:Z

    .line 9
    .line 10
    return p0
.end method

.method public isDelayedWakeupSupported()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 v0, 0x1

    .line 38
    and-int/2addr p0, v0

    .line 39
    if-ne p0, v0, :cond_1

    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public isDualBandSimultaneousSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSupportedConCurrencyMode:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-lt p0, v0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public isNchoGetDriverCapaSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public isP2pSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public isPcapLoggingSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v0, 0xb

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public isScheduledPmSupported()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getFirstApiLevel()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 v0, 0x1

    .line 48
    and-int/2addr p0, v0

    .line 49
    if-ne p0, v0, :cond_2

    .line 50
    .line 51
    return v0

    .line 52
    :cond_2
    return v2
.end method

.method public isStdPlusSupported()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public isTwtSupported()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 v0, 0x1

    .line 38
    and-int/2addr p0, v0

    .line 39
    if-ne p0, v0, :cond_1

    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public isWifi5Supported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mWifiStandard:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-lt p0, v0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public isWifi6ESupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mWifiStandard:I

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-lt p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isWifi6Supported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mWifiStandard:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-lt p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isWifi7Supported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mWifiStandard:I

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-lt p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isWifiOptimizerSupported()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getFirstApiLevel()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "SLS"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "MTK"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    return v2

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/4 v0, 0x1

    .line 68
    and-int/2addr p0, v0

    .line 69
    if-ne p0, v0, :cond_3

    .line 70
    .line 71
    return v0

    .line 72
    :cond_3
    return v2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isValid(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSolutionName:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int v3, v0, v1

    .line 31
    .line 32
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->parseHwFeatures(I)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0xd

    .line 44
    .line 45
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int v2, v1, v0

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->parseSwFeatures(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->configDefaultFeatureSet()V

    .line 64
    .line 65
    .line 66
    :goto_1
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mIsReady:Z

    .line 68
    .line 69
    return-void
.end method
