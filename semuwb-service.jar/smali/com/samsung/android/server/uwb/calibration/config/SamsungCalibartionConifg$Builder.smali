.class public Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
.super Ljava/lang/Object;
.source "SamsungCalibartionConifg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SamsungCalibartionConifg.Builder"


# instance fields
.field mChannelConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;",
            ">;"
        }
    .end annotation
.end field

.field mChipInfo:Ljava/lang/String;

.field mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

.field mSupportedChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTiltConfigBuilder:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "EUFF"

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mVersion:Ljava/lang/String;

    .line 187
    const-string v0, "SR00T"

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChipInfo:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mSupportedChannels:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setSuppotedChannel()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 199
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mTiltConfigBuilder:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    .line 200
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 201
    return-void
.end method

.method private setDeltaPeakInternal(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "value"    # [Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 355
    .local v0, "builder":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    if-eqz v0, :cond_0

    .line 356
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->setTxDeltaPeekForRanging(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 357
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->setTxDeltaPeekForAoa(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
    .locals 7

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 340
    .local v4, "channelConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 341
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;>;"
    goto :goto_0

    .line 343
    :cond_0
    new-instance v1, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChipInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mTiltConfigBuilder:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    .line 348
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 349
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;)V

    .line 343
    return-object v1
.end method

.method public setAoaCalbirationConfig(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 235
    .local v0, "builder":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->setAoaCalbratinoConfig(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 238
    :cond_0
    return-object p0
.end method

.method public setAoaCalbirationCount(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 227
    .local v0, "builder":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->setAoaCalbirationCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 230
    :cond_0
    return-object p0
.end method

.method public setAoaPdoaBoundary(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 243
    .local v0, "builder":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->setAoaPdoaBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 247
    :cond_0
    return-object p0
.end method

.method public setBeta1(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setBeta1(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 296
    return-object p0
.end method

.method public setBeta2(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setBeta2(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 306
    return-object p0
.end method

.method public setFov(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setFov(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 316
    return-object p0
.end method

.method public setFpFilteringMaxDistance(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setFpFilteringMaxDistance(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 326
    return-object p0
.end method

.method public setFpFilteringThreshold(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setFpFilteringThreshold(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 321
    return-object p0
.end method

.method public setIsAoa1Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setIsAoa1Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 301
    return-object p0
.end method

.method public setIsAoa2Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setIsAoa2Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 311
    return-object p0
.end method

.method public setRxAntennaPairs(IILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "antennaType"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 331
    .local v0, "builder":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->setRxAntennaPairs(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    .line 334
    :cond_0
    return-object p0
.end method

.method public setSuppotedChannel()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mSupportedChannels:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mSupportedChannels:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    new-instance v5, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;-><init>(I)V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChannelConfigs:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    invoke-direct {v1, v3}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object p0
.end method

.method public setTiltOffsetBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mTiltConfigBuilder:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->setOffsetBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    .line 262
    return-object p0
.end method

.method public setTiltOffsetCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mTiltConfigBuilder:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->setOffsetCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    .line 252
    return-object p0
.end method

.method public setTiltOffsetValue(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mTiltConfigBuilder:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->setOffsetValue(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;

    .line 257
    return-object p0
.end method

.method public setTxDeltaPeak(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 268
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->splitArrays(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "splitedString":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 270
    const-string v1, "SamsungCalibartionConifg.Builder"

    const-string v2, "splitedString is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object p0

    .line 274
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setDeltaPeakInternal(I[Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setDeltaPeakInternal(I[Ljava/lang/String;)V

    .line 277
    return-object p0
.end method

.method public setUwbChipInfo(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 0
    .param p1, "chipInfo"    # Ljava/lang/String;

    .line 221
    iput-object p1, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mChipInfo:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mVersion:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setXIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setXIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 286
    return-object p0
.end method

.method public setYIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->mDeviceParamsBuilder:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->setYIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;

    .line 291
    return-object p0
.end method
