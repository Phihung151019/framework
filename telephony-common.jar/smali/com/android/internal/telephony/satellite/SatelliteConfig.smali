.class public Lcom/android/internal/telephony/satellite/SatelliteConfig;
.super Ljava/lang/Object;
.source "SatelliteConfig.java"


# instance fields
.field private blacklist mCarrierRoamingMaxAllowedDataMode:Ljava/lang/Integer;

.field private blacklist mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

.field private blacklist mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

.field private blacklist mSatS2File:Ljava/io/File;

.field private blacklist mSatelliteAccessConfigJsonFile:Ljava/io/File;

.field private blacklist mSatelliteRegionCountryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedServicesPerCarrier:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string p0, "SatelliteConfig: constructing from scratch"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteConfig;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SatelliteConfig: constructing through deep copy of: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 69
    new-instance p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;-><init>(Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteConfig: constructing with configData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    .line 75
    iget p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mVersion: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->buildCarrierSupportedServicesPerCarrier()V

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->buildCarrierRoamingConfig()V

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->buildDeviceSatelliteRegion()V

    return-void
.end method

.method private blacklist buildCarrierRoamingConfig()V
    .locals 2

    .line 93
    const-string v0, "buildCarrierRoamingConfig"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    if-nez v0, :cond_0

    .line 95
    const-string p0, "mConfigData.carrierRoamingConfig: empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->maxAllowedDataMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mCarrierRoamingMaxAllowedDataMode:Ljava/lang/Integer;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierRoamingMaxAllowedDataMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mCarrierRoamingMaxAllowedDataMode:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist buildCarrierSupportedServicesPerCarrier()V
    .locals 2

    .line 83
    const-string v0, "buildCarrierSupportedServicesPerCarrier"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-nez v0, :cond_0

    .line 85
    const-string p0, "mSupportedServicesPerCarrier: empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getCarrierSupportedSatelliteServices()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportedServicesPerCarrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist buildDeviceSatelliteRegion()V
    .locals 3

    .line 103
    const-string v0, "buildDeviceSatelliteRegion"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-nez v0, :cond_0

    .line 105
    const-string p0, "mConfigData.deviceSatelliteRegion: empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 108
    const-string v0, "mConfigData.deviceSatelliteRegion.countryCodes is null, set empty list"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSatelliteRegionCountryCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    .line 114
    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-boolean v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->isAllowed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSatelliteRegionAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v1, v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object v1, v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    if-eqz v1, :cond_2

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s2CellFile size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v2, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object v2, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_2
    const-string v1, "s2CellFile: empty"

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 127
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    if-eqz v0, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "satellite_access_config_json size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_3
    const-string p0, "satellite_access_config_json: empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getCarrierSupportedSatelliteServices()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 146
    iget-object v5, v4, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    .line 148
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 150
    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 151
    iget-object v10, v9, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    .line 152
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 153
    iget-object v9, v9, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    array-length v12, v9

    move v13, v2

    :goto_2
    if-ge v13, v12, :cond_0

    aget v14, v9, v13

    .line 154
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 156
    :cond_0
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 158
    :cond_1
    iget v4, v4, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->carrierId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 440
    const-string v0, "SatelliteConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 444
    const-string v0, "SatelliteConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist cleanOtaResources(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    .line 376
    const-string p0, "SatelliteConfig"

    const-string p1, "cleanOtaResources : context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_0
    :try_start_0
    const-string p0, "satellite"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 382
    const-string p0, "cleanOtaResources: satellite does not exist. No need to clean."

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-void

    .line 386
    :cond_1
    const-string p1, "cleanOtaResources: Deleting contents under satellite"

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 387
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cleanOtaResources error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist copySatelliteFileToPhoneDirectory(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    const-string p0, "satellite"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 348
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 351
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 353
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x1

    .line 358
    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object p3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object p3, p2, v0

    invoke-static {p1, p0, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "copySatelliteFileToPhoneDirectory: ex="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SatelliteConfig"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "targetSatelliteFilePath\'s path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 366
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 342
    :cond_2
    :goto_1
    const-string p0, "copySatelliteFileToPhoneDirectory : context or byteArrayFile are null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAllSatelliteCarrierIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 240
    :cond_0
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public blacklist getAllSatellitePlmnsForCarrier(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 197
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 203
    :cond_0
    const-string p0, "getAllSatellitePlmnsForCarrier : mConfigData is null or no config data"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 204
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public blacklist getDeviceSatelliteCountryCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    .line 251
    :cond_0
    const-string p0, "SatelliteConfig"

    const-string v0, "getDeviceSatelliteCountryCodes : mConfigData is null or no config data"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public blacklist getSatelliteAccessConfigJsonFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 300
    const-string p0, "getSatelliteAccessConfigJsonFile : context is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    return-object v0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->isFileExist(Ljava/io/File;)Z

    move-result v1

    const-string v2, "SatelliteConfig"

    if-eqz v1, :cond_1

    .line 305
    const-string p1, "File mSatelliteAccessConfigJsonFile is already exist"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    return-object p0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v1, :cond_2

    .line 310
    iget-object v0, v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    const-string v1, "satelltie_access_config.json"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->copySatelliteFileToPhoneDirectory(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    return-object p1

    .line 315
    :cond_2
    const-string p0, "mSatelliteAccessConfigJsonFile: mConfigData is null or mConfigData.deviceSatelliteRegion is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getSatelliteConfigDataVersion()I
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatelliteConfigDataVersion: mVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SatelliteConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    return p0
.end method

.method public blacklist getSatelliteMaxAllowedDataMode()Ljava/lang/Integer;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mCarrierRoamingMaxAllowedDataMode:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    .line 173
    :cond_0
    const-string p0, "mCarrierRoamingMaxAllowedDataMode : mConfigData is null or no config data"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSatelliteS2CellFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 273
    const-string v1, "SatelliteConfig"

    if-nez p1, :cond_0

    .line 274
    const-string p0, "getSatelliteS2CellFile : context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->isFileExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    const-string p1, "File mSatS2File is already exist"

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    return-object p0

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v2, :cond_2

    .line 284
    iget-object v0, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    const-string v1, "s2_cell_file"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->copySatelliteFileToPhoneDirectory(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    return-object p1

    .line 288
    :cond_2
    const-string p0, "getSatelliteS2CellFile: mConfigData is null or mConfigData.deviceSatelliteRegion is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getSupportedSatelliteServices(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    return-object p0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No supported services found for carrier="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SatelliteConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_1
    const-string p0, "mSupportedServicesPerCarrier is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 227
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public blacklist hasSatelliteAccessConfigFile()Z
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz p0, :cond_0

    .line 417
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    .line 419
    const-string p0, "hasSatelliteAccessConfigFile: satelliteAccessConfigFile is exist"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 423
    :cond_0
    const-string p0, "hasSatelliteAccessConfigFile: satelliteAccessConfigFile is not exist"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasSatelliteS2CellFile()Z
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz p0, :cond_0

    .line 400
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    .line 402
    const-string p0, "hasSatelliteS2CellFile: s2CellFile is exist"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 406
    :cond_0
    const-string p0, "hasSatelliteS2CellFile: s2CellFile is not exist"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isFileExist(Ljava/io/File;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 433
    const-string p0, "SatelliteConfig"

    const-string p1, "isFileExist : file is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 436
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public blacklist isSatelliteDataForAllowedRegion()Ljava/lang/Boolean;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 261
    const-string v0, "SatelliteConfig"

    const-string v1, "getIsSatelliteRegionAllowed : mConfigData is null or no config data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public blacklist overrideSatelliteMaxAllowedDataMode(I)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideSatelliteMaxAllowedDataMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->logd(Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mCarrierRoamingMaxAllowedDataMode:Ljava/lang/Integer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteConfig{mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedServicesPerCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierRoamingMaxAllowedDataMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mCarrierRoamingMaxAllowedDataMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSatelliteRegionCountryCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSatelliteRegionAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSatS2File="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSatelliteAccessConfigJsonFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
