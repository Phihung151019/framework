.class public Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# static fields
.field public static final APP_ID:Ljava/lang/String; = "android.net.wifi"

.field public static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field public static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field public static final EVENT_HANG:I = 0x0

.field public static final EVENT_HIDL_FAIL:I = 0x1

.field public static final LOGGING_TYPE_ADPS_STATE:I = 0xd

.field public static final LOGGING_TYPE_ASSOCIATED_MLO_LINKS:I = 0x12

.field public static final LOGGING_TYPE_BLUETOOTH_CONNECTION:I = 0xa

.field public static final LOGGING_TYPE_CONFIG_NETWORK_TYPE:I = 0xb

.field public static final LOGGING_TYPE_HLP:I = 0x11

.field public static final LOGGING_TYPE_LOCAL_DISCONNECT_REASON:I = 0x8

.field public static final LOGGING_TYPE_MAX_NUM_OF_SIMULTANEOUS_LINKS:I = 0x13

.field public static final LOGGING_TYPE_ROAM_TRIGGER:I = 0x7

.field public static final LOGGING_TYPE_SET_CONNECTION_START_TIME:I = 0xc

.field public static final LOGGING_TYPE_TID_TO_LINK_MAPPING_NEGOTIATION_SUPPORT:I = 0x14

.field public static final LOGGING_TYPE_TX_BACK_OFF_COUNT:I = 0x10

.field public static final LOGGING_TYPE_TX_BACK_OFF_DURATION:I = 0xf

.field public static final LOGGING_TYPE_TX_BACK_OFF_STATE:I = 0xe

.field public static final LOGGING_TYPE_UPDATE_DATA_RATE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "SemWifi.BigData"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private ENABLE_SURVEY_MODE:I

.field private final ENABLE_UNIFIED_HQM_SERVER:Z

.field final mBigDataItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCidInfoString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mEventCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mLastUpdatedInternalReason:I

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field mLogMessages:Z

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field private mW24HLastLoggingTime:J

.field private mWifiVersionKeyValueStrings:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$_Mgb6ZwTrR02qjBoT6Bijqc8ehk(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->lambda$initialize$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    .line 11
    .line 12
    const-string v0, "unknown"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 32
    .line 33
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedBigdataHqmService()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_UNIFIED_HQM_SERVER:Z

    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mW24HLastLoggingTime:J

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->isSupported()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->initialize()V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method private addOrUpdateValueInternal(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    const-string v0, "DISC"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private checkAndGetHqmManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "HqmManagerService"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/SemHqmManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private checkAndUpdateChipInfo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "unknown"

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 36
    .line 37
    sget-object v1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiVersionKeyValueStrings:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getWifiVersionKeyValueStringInternal()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiVersionKeyValueStrings:Ljava/lang/String;

    .line 58
    .line 59
    :cond_3
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_4
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public static getBigDataArgument(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "feature"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "data"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static getBigDataFeature(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private declared-synchronized getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method private getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getJsonFormatFor(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    return-object p0
.end method

.method private getSupportedBigDataFeatures()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v11, "MHSS"

    .line 4
    .line 5
    const-string v12, "RAPP"

    .line 6
    .line 7
    const-string v0, "DISC"

    .line 8
    .line 9
    const-string v1, "HANG"

    .line 10
    .line 11
    const-string v2, "W24H"

    .line 12
    .line 13
    const-string v3, "PDC1"

    .line 14
    .line 15
    const-string v4, "PDC2"

    .line 16
    .line 17
    const-string v5, "PDC4"

    .line 18
    .line 19
    const-string v6, "MHSI"

    .line 20
    .line 21
    const-string v7, "MHPS"

    .line 22
    .line 23
    const-string v8, "MHPT"

    .line 24
    .line 25
    const-string v9, "MHDC"

    .line 26
    .line 27
    const-string v10, "MHOF"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method private getWifiVersionKeyValueStringInternal()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "ld_fwv"

    .line 26
    .line 27
    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ":"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ","

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "ld_drv"

    .line 52
    .line 53
    invoke-static {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "ld_cnm"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method private initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getSupportedBigDataFeatures()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic lambda$initialize$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/bigdata/BigDataFeature$Factory;->getBigDataParser(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private processBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :cond_1
    :goto_0
    return-void
.end method

.method private sendHWParamToHQM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    const-string v1, "SemWifi.BigData"

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 15
    .line 16
    const-string v2, "send H/W Parameters to HQM - feature : "

    .line 17
    .line 18
    const-string v3, ", log maps : "

    .line 19
    .line 20
    invoke-static {v2, p1, v3, p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const/4 v3, 0x0

    .line 48
    const-string v4, "WiFi"

    .line 49
    .line 50
    const-string v6, "ph"

    .line 51
    .line 52
    const-string v10, ""

    .line 53
    .line 54
    const-string v11, ""

    .line 55
    .line 56
    move-object v5, p1

    .line 57
    move-object v9, p2

    .line 58
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const-string p0, "logging failed, Wi-Fi chip information is empty"

    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    const-string p0, "hqm manager is null"

    .line 73
    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method private sendHWParamToHqmWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    const-string v4, "SemWifi.BigData"

    .line 4
    .line 5
    if-eqz v2, :cond_6

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 16
    .line 17
    const-string v5, "send H/W Parameters to HQM with appId - feature : "

    .line 18
    .line 19
    const-string v6, ", logMaps: "

    .line 20
    .line 21
    const-string v7, " private: "

    .line 22
    .line 23
    invoke-static {v5, p1, v6, p3, v7}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v6, "basic data size : "

    .line 42
    .line 43
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v6, "0"

    .line 47
    .line 48
    if-nez p3, :cond_1

    .line 49
    .line 50
    move-object v7, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v7, ", custom data size : "

    .line 64
    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    if-nez p4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    if-nez p4, :cond_4

    .line 90
    .line 91
    const-string v1, ""

    .line 92
    .line 93
    move-object v7, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object v7, p4

    .line 96
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v10, "android.net.wifi"

    .line 117
    .line 118
    move-object v0, v1

    .line 119
    const/4 v1, 0x0

    .line 120
    const-string v2, "WiFi"

    .line 121
    .line 122
    const-string v9, ""

    .line 123
    .line 124
    move-object v3, p1

    .line 125
    move-object v4, p2

    .line 126
    move-object v8, p3

    .line 127
    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    const-string v0, "logging failed, Wi-Fi chip information is empty"

    .line 132
    .line 133
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    const-string v0, "hqm manager is null"

    .line 142
    .line 143
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_7
    return-void
.end method

.method private updateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->updateTime()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addOrUpdateValue(II)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :pswitch_0
    const-string p1, "mld_t2lm"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_1
    const-string p1, "max_ml_link"

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    const-string p1, "ap_ml"

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_3
    const-string p1, "ap_hlp"

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_4
    const-string p1, "txcn"

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_5
    const-string p1, "txdr"

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_6
    const-string p1, "txof"

    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_7
    const-string p1, "adps"

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_8
    const-string p1, "DISC"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateTime(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_9
    const-string p1, "apwe"

    .line 60
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_a
    const-string p1, "bt_cnt"

    .line 66
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_b
    const-string p1, "cn_irs"

    .line 72
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    iput p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    :pswitch_c
    const-string p1, "max_drt"

    .line 83
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_d
    const-string p1, "cn_rom"

    .line 89
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_a
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

.method public clearData(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->clearData()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public getAndResetLastInternalReason()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    .line 5
    .line 6
    return v0
.end method

.method public getEventCount(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public getW24HLoggingDelayTime(Z)J
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-wide/32 p0, 0x927c0

    .line 4
    .line 5
    .line 6
    return-wide p0

    .line 7
    :cond_0
    const-wide/32 p0, 0x5265c00

    .line 8
    .line 9
    .line 10
    return-wide p0
.end method

.method public getW24HLoggingElapsedRealtimeSecs(Z)J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mW24HLastLoggingTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mW24HLastLoggingTime:J

    .line 12
    .line 13
    :cond_0
    const-wide/16 p0, 0x3e8

    .line 14
    .line 15
    div-long/2addr v2, p0

    .line 16
    return-wide v2
.end method

.method public getWifiCidKeyValueString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ":"

    .line 6
    .line 7
    const-string v2, "Cid_Info"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "na"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public getWifiVersionKeyValueString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiVersionKeyValueStrings:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, "SemWifi.BigData"

    .line 11
    .line 12
    const-string v1, "unknown Wi-Fi chip"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getWifiVersionKeyValueStringInternal()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public increaseEventCounter(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public insertLog(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v2, "insertLog feature:"

    .line 13
    .line 14
    const-string v3, "SemWifi.BigData"

    .line 15
    .line 16
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->isSupported()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v2, "data"

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->processBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->clearData(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public isSupported()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedBigdataSurveyMode()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    .line 13
    .line 14
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 2
    .line 3
    const-string v1, "SemWifi.BigData"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 8
    .line 9
    const-string v2, "insertLog - feature : "

    .line 10
    .line 11
    const-string v3, ", data : "

    .line 12
    .line 13
    invoke-static {v2, p1, v3, p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_8

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 33
    .line 34
    if-eqz p2, :cond_8

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "feature "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " is disabled"

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->parseData(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_7

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndGetHqmManager()V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x2

    .line 71
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    const/4 v4, 0x3

    .line 80
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getHitType()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-direct {p0, p1, v5, p2, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHqmWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move p2, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move p2, v2

    .line 94
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 95
    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_UNIFIED_HQM_SERVER:Z

    .line 99
    .line 100
    if-nez v4, :cond_4

    .line 101
    .line 102
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHQM(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move p2, v3

    .line 112
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_UNIFIED_HQM_SERVER:Z

    .line 119
    .line 120
    if-eqz p2, :cond_6

    .line 121
    .line 122
    const-string p2, "sm"

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHqmWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move v3, p2

    .line 130
    :cond_6
    :goto_1
    if-nez v3, :cond_8

    .line 131
    .line 132
    const-string p0, "parse error - json data is empty"

    .line 133
    .line 134
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 139
    .line 140
    const-string v0, "parse error - can\'t parse feature:"

    .line 141
    .line 142
    const-string v2, " data:"

    .line 143
    .line 144
    invoke-static {v0, p1, v2, p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_2
    return-void
.end method

.method public resetEventCounters()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLogVisible(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->setLogVisible(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public setWifi7Supported(Z)V
    .locals 1

    .line 1
    const-string v0, "DISC"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->setWifi7Supported(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public updateConnectedDuration(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    const-string v0, "DISC"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->updateConnectedDuration(Landroid/net/wifi/WifiInfo;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
