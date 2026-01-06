.class public Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;
.super Ljava/lang/Object;
.source "CalibrationConfigRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository$File;
    }
.end annotation


# static fields
.field public static final CONFIG_FOR_FOLDED_STATE:I = 0x2

.field public static final CONFIG_FOR_OPEN_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CalibrationConfigRepository"

.field private static sInstance:Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;


# instance fields
.field EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

.field mConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

.field private mCurrentConfig:I

.field mFoldedConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->sInstance:Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mCurrentConfig:I

    .line 45
    const-string v0, "CalibrationConfigRepository"

    const-string v1, "create CalibrationConfigRepository"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method private findFoldedStateCalbratinoFilePath()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "/system/etc/libuwb-cal_folded.conf"

    return-object v0
.end method

.method private findOpenStateCalibationFilePath()Ljava/lang/String;
    .locals 3

    .line 107
    const-string v0, "/system/etc/libuwb-cal.conf"

    .line 109
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/system/etc/libuwb-cal.conf"

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->readCalibrationFileVersion(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "versionInConfiFile":I
    const-string v2, "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->readCalibrationFileVersion(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "versionInEfs":I
    if-le v2, v1, :cond_0

    .line 113
    const-string v0, "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

    .line 116
    :cond_0
    return-object v0
.end method

.method private getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
    .locals 3

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "config":Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mCurrentConfig:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    goto :goto_0

    .line 134
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mCurrentConfig:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mFoldedConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    goto :goto_0

    .line 138
    :cond_1
    const-string v1, "CalibrationConfigRepository"

    const-string v2, "unSupported conifg type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    :goto_1
    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->sInstance:Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;-><init>()V

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->sInstance:Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;

    .line 41
    :cond_0
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->sInstance:Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;

    return-object v0
.end method


# virtual methods
.method public getAoaCalibrationStatus()Z
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getAoaCalibrationStatus()Z

    move-result v0

    return v0
.end method

.method public getAoaSegmentAzimuthAntennaSpacing(I)[F
    .locals 2
    .param p1, "channelId"    # I

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 182
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getAzimuthAntennaSpacing()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaSegmentAzimuthPdoaBoundary(I)[F
    .locals 2
    .param p1, "channelId"    # I

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 202
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getAzimuthPdoaBoundary()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaSegmentAzimuthPdoaOffset(I)[F
    .locals 2
    .param p1, "channelId"    # I

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 192
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getAzimuthPdoaOffset()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaSegmentCount(I)I
    .locals 2
    .param p1, "channelId"    # I

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 177
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getConfigCount()I

    move-result v1

    return v1
.end method

.method public getAoaSegmentElevationAntennaSpacing(I)[F
    .locals 2
    .param p1, "channelId"    # I

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 187
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getElevationAntennaSpacing()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaSegmentElevationPdoaBoundary(I)[F
    .locals 2
    .param p1, "channelId"    # I

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 207
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getElevationPdoaBoundary()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaSegmentElevationPdoaOffset(I)[F
    .locals 2
    .param p1, "channelId"    # I

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 197
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getElevationPdoaOffset()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaTiltBoundary()[F
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getTiltconfig()Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    move-result-object v0

    .line 220
    .local v0, "tiltConfig":Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->getBoundary()[F

    move-result-object v1

    return-object v1
.end method

.method public getAoaTiltCount()I
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getTiltconfig()Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    move-result-object v0

    .line 212
    .local v0, "tiltConfig":Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->getCount()I

    move-result v1

    return v1
.end method

.method public getAoaTiltOffset()[F
    .locals 2

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getTiltconfig()Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    move-result-object v0

    .line 216
    .local v0, "tiltConfig":Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->getOffSet()[F

    move-result-object v1

    return-object v1
.end method

.method public getCalibrationFileVersion()Ljava/lang/String;
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getCalibrationFileVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceParam()Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getDeviceParams()Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public getRxAntForRanging(I)[B
    .locals 2
    .param p1, "channelId"    # I

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 233
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getRxAntennaPairs(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getRxAntennaConfiguration(II)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;
    .locals 4
    .param p1, "antType"    # I
    .param p2, "channelId"    # I

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 238
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getRxAntennaModeFromType(I)B

    move-result v1

    .line 239
    .local v1, "antennaMode":B
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getRxAntennaPairs(I)[B

    move-result-object v2

    .line 240
    .local v2, "rxAntennaPairs":[B
    new-instance v3, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;-><init>(B[B)V

    return-object v3
.end method

.method public getTxPowerDeltaPeakAoaAntenna(I)I
    .locals 2
    .param p1, "channelId"    # I

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 229
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getTxDeltaPeakForAoa()I

    move-result v1

    return v1
.end method

.method public getTxPowerDeltaPeakRangingAntenna(I)I
    .locals 2
    .param p1, "channelId"    # I

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    .line 225
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getTxDeltaPeakForRanging()I

    move-result v1

    return v1
.end method

.method public getUwbChipInfo()Ljava/lang/String;
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->getCurrentConfig()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExistFoldedCalbraionData()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mFoldedConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExistOpenCalbraionData()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method printList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 251
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "str":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "[%3d]: %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "CalibrationConfigRepository"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v2    # "str":Ljava/lang/String;
    move v0, v3

    goto :goto_0

    .line 254
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_0
    return-void
.end method

.method public readCalbirationFileIfExist(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readCalbirationFileIfExist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalibrationConfigRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 62
    .local v0, "file":Ljava/nio/file/Path;
    if-nez v0, :cond_0

    .line 63
    const-string v2, "readCalibrationFile: file not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 70
    .local v2, "config":Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
    :try_start_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;

    invoke-direct {v4, v3}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;-><init>(Ljava/util/List;)V

    .line 77
    .local v4, "tokenScanner":Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;
    new-instance v5, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;

    invoke-direct {v5}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;-><init>()V

    .line 83
    .local v5, "wrapper":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->initializeIndex()V

    .line 84
    :goto_0
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->isLastIndex()Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->readName()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->readValue()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->addConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->moveNext()Z

    .line 90
    nop

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->create()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 96
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "tokenScanner":Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;
    .end local v5    # "wrapper":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;
    goto :goto_1

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during read calibration data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    if-eqz v3, :cond_2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configValues : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    return-object v2
.end method

.method public readCalibrationFile()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->findOpenStateCalibationFilePath()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->readCalbirationFileIfExist(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->findFoldedStateCalbratinoFilePath()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->readCalbirationFileIfExist(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mFoldedConfig:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    .line 56
    new-instance v1, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    .line 57
    return-void
.end method

.method public readCalibrationFileVersion(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentConfig(I)V
    .locals 2
    .param p1, "configType"    # I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set current config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalibrationConfigRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;->mCurrentConfig:I

    .line 150
    return-void
.end method
