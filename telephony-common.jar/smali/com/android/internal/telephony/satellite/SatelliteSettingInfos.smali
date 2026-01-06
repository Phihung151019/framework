.class public Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;
.super Ljava/lang/Object;
.source "SatelliteSettingInfos.java"


# static fields
.field public static final blacklist SATELLITE_SETTING_SOURCE_CARRIER_CONFIG:I = 0x2

.field public static final blacklist SATELLITE_SETTING_SOURCE_CARRIER_FEATURE:I = 0x4

.field public static final blacklist SATELLITE_SETTING_SOURCE_CONFIG_UPDATOR:I = 0x3

.field public static final blacklist SATELLITE_SETTING_SOURCE_ENTITLEMENT:I = 0x1

.field public static final blacklist SATELLITE_SETTING_SOURCE_OMC:I = 0x5

.field private static final blacklist sSatelliteSettingInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSatelliteEnabled:Z

.field private blacklist mSatellitePlmnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatellitePlmnSource:I

.field private blacklist mSatelliteServiceSubscribed:Z

.field private blacklist mSatelliteSimPlmn:Ljava/lang/String;

.field private blacklist mSatelliteSupportedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->sSatelliteSettingInfos:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->logd(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->resetSatelliteSettingInfos()V

    return-void
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;
    .locals 2

    .line 71
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->sSatelliteSettingInfos:Landroid/util/SparseArray;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;

    monitor-exit v0

    return-object p0

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 153
    const-string p0, "SatelliteSettingInfos"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist resetSatelliteSettingInfos()V
    .locals 2

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteServiceSubscribed:Z

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnList:Ljava/util/List;

    .line 122
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnSource:I

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSimPlmn:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSupportedServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist sendBigDataForSetting(Landroid/content/Context;)V
    .locals 3

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "feature"

    const/16 v2, 0x2001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "bigdata_info"

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->logd(Ljava/lang/String;)V

    .line 91
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSatelliteEnabled(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteEnabled:Z

    return-void
.end method

.method public blacklist setSatellitePlmnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnList:Ljava/util/List;

    return-void
.end method

.method public blacklist setSatellitePlmnSource(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnSource:I

    return-void
.end method

.method public blacklist setSatelliteServiceSubscribed(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteServiceSubscribed:Z

    return-void
.end method

.method public blacklist setSatelliteSimPlmn(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSimPlmn:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSatelliteSupportedServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSupportedServices:Ljava/util/List;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v1, "{\"ENABLED\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteEnabled:Z

    const-string v2, "0"

    const-string v3, "1"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\",\"ENT_STATUS\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteServiceSubscribed:Z

    if-ne v1, v4, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "\",\"PLMNLIST\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 133
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v5, ","

    if-ge v2, v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_2

    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :cond_3
    const-string v2, "\",\"PLMNLIST_SRC\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatellitePlmnSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "\",\"SIM_PLMN\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSimPlmn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "\",\"SVCLIST\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSupportedServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSupportedServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSupportedServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_4

    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_5
    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateAvailableServiceList(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSettingInfos;->mSatelliteSupportedServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
