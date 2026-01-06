.class public Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;,
        Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;
    }
.end annotation


# static fields
.field private static final CARRIER_MNO_TYPE:I = 0x0

.field private static final CARRIER_MVNO_TYPE:I = 0x1

.field private static final DBG_PRODUCT_DEV:Z

.field public static final TAG:Ljava/lang/String; = "SemWifiCarrierInfoManager"


# instance fields
.field private mActiveSlotCount:I

.field private mActiveSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVerboseLogEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$daqEkjvlAEJ6h34hxt3kitSq7Lc(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->lambda$isSimReady$0(ILandroid/telephony/SubscriptionInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubIdToSimInfoSparseArray(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionGroupMap(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLogEnabled(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->DBG_PRODUCT_DEV:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$smgivePrintableImsi(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->givePrintableImsi(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->DBG_PRODUCT_DEV:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance p1, Landroid/os/HandlerExecutor;

    .line 36
    .line 37
    invoke-direct {p1, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 38
    .line 39
    .line 40
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;

    .line 41
    .line 42
    invoke-direct {p3, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;-><init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1, p3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private getActiveModemCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 13
    .line 14
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 15
    .line 16
    return p0
.end method

.method private getBestMatchSubscriptionIdForEnterprise(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getMatchingSubId(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimReady(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string v0, "carrierId is not assigned, using the default data sub."

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return p1

    .line 38
    :cond_2
    const-string p1, "data sim is not present."

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_3
    :goto_0
    const-string p0, "SemWifiCarrierInfoManager"

    .line 45
    .line 46
    const-string p1, "The legacy config is not using EAP-SIM."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v1
.end method

.method private getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->mccMnc:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimApplicationState()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0xa

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierIdFromSimMccMnc()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    .line 64
    .line 65
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v4

    .line 74
    :cond_3
    :goto_0
    const-string p0, "SemWifiCarrierInfoManager"

    .line 75
    .line 76
    const-string p1, "Get invalid imsi when SIM is ready!"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-object v3
.end method

.method private getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/List;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method private static givePrintableImsi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->DBG_PRODUCT_DEV:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "[****]"

    .line 8
    .line 9
    :cond_0
    return-object p0

    .line 10
    :cond_1
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$isSimReady$0(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private vlogd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "SemWifiCarrierInfoManager"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "SemWifiCarrierInfoManager: "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, " activeSlotCount = "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getActiveModemCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, " activeSubscriptionInfoSize = "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const-string v3, "  slotIndex = "

    .line 87
    .line 88
    const-string v4, ", SIM Type = "

    .line 89
    .line 90
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isEsim(I)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    const-string v2, "eSIM"

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_0
    const-string v2, "SIM"

    .line 104
    .line 105
    :goto_1
    const-string v4, ", subId = "

    .line 106
    .line 107
    const-string v5, ", CarrierName = "

    .line 108
    .line 109
    invoke-static {v3, v2, v4, v1, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getCarrierNameForSubId(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ", "

    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, " defaultDataSubscriptionId = "

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v1, " defaultDataSimCarrierId = "

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getDefaultDataSimCarrierId()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, " isSimCardReady = "

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v1, " networkType = "

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getNetworkType()I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 224
    .line 225
    .line 226
    return-void
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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getActiveSubscriptionIdInGroup(Landroid/os/ParcelUuid;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimReady(I)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    if-ne v2, v1, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    move v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return v0
.end method

.method public getBestMatchSubscriptionId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p0, "SemWifiCarrierInfoManager"

    .line 5
    .line 6
    const-string p1, "getBestMatchSubscriptionId: Config must be NonNull!"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 13
    .line 14
    if-eq v1, v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getActiveSubscriptionIdInGroup(Landroid/os/ParcelUuid;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getMatchingSubId(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getBestMatchSubscriptionIdForEnterprise(Landroid/net/wifi/WifiConfiguration;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public getCarrierNameForSubId(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public getDefaultDataSimCarrierId()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    .line 14
    .line 15
    return p0
.end method

.method public getMatchingImsiBySubId(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimReady(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->imsi:Ljava/lang/String;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p1, "no active SIM card to match the carrier ID."

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public getMatchingSubId(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ne v4, p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v1, v0, :cond_1

    .line 46
    .line 47
    :cond_2
    const-string p1, "matching subId is "

    .line 48
    .line 49
    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    return v1
.end method

.method public getNetworkType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSimMethodForConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 4
    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_4

    .line 21
    .line 22
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x5

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    if-eq p1, v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    const-string p1, "SemWifiCarrierInfoManager"

    .line 38
    .line 39
    const-string v0, "getSimMethodForConfig: Config is not SimMethod"

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :cond_1
    return v1

    .line 46
    :cond_2
    return v0

    .line 47
    :cond_3
    const/4 p0, 0x4

    .line 48
    :cond_4
    return p0

    .line 49
    :cond_5
    :goto_0
    const/4 p0, -0x1

    .line 50
    return p0
.end method

.method public isCarrierNetworkFromNonDefaultDataSim(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getBestMatchSubscriptionId(Landroid/net/wifi/WifiConfiguration;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p0, p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    return v2
.end method

.method public isEsim(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/telephony/UiccCardInfo;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public isSimCardReady()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getActiveModemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 12
    .line 13
    if-ge v0, v3, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x5

    .line 22
    if-ne v3, v4, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v1
.end method

.method public isSimReady(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public isSubIdMatchingCarrierId(II)Z
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v3, p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-ne p0, p2, :cond_3

    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    :goto_0
    return v2
.end method
