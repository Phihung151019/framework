.class public Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
.super Ljava/lang/Object;
.source "SamsungCalibartionConifg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;,
        Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;
    }
.end annotation


# static fields
.field public static final ANT_USAGE_AOA_LANDSCAPE:I = 0x2

.field public static final ANT_USAGE_AOA_PORTRAIT:I = 0x1

.field public static final ANT_USAGE_RANGING:I = 0x0

.field public static final ANT_USAGE_RANGING_RFM:I = 0x3

.field public static final AOA1_FLIPPED:Ljava/lang/String; = "AOA1_FLIPPED"

.field public static final AOA2_FLIPPED:Ljava/lang/String; = "AOA2_FLIPPED"

.field public static final BETA1:Ljava/lang/String; = "BETA1"

.field public static final BETA2:Ljava/lang/String; = "BETA2"

.field public static final CH5_RX_ANT_FOR_RANGING:Ljava/lang/String; = "CH5_RX_ANT_FOR_RANGING"

.field public static final CH5_SEGMENT_CAL_CONFIG:Ljava/lang/String; = "CH5_SEGMENT_CAL_CONFIG"

.field public static final CH5_SEGMENT_CAL_COUNT:Ljava/lang/String; = "CH5_SEGMENT_CAL_COUNT"

.field public static final CH5_SEGMENT_PDOA_BOUNDARY:Ljava/lang/String; = "CH5_SEGMENT_PDOA_BOUNDARY"

.field public static final CH9_RX_ANT_FOR_RANGING:Ljava/lang/String; = "CH9_RX_ANT_FOR_RANGING"

.field public static final CH9_SEGMENT_CAL_CONFIG:Ljava/lang/String; = "CH9_SEGMENT_CAL_CONFIG"

.field public static final CH9_SEGMENT_CAL_COUNT:Ljava/lang/String; = "CH9_SEGMENT_CAL_COUNT"

.field public static final CH9_SEGMENT_PDOA_BOUNDARY:Ljava/lang/String; = "CH9_SEGMENT_PDOA_BOUNDARY"

.field public static final CHANNEL_5:I = 0x5

.field public static final CHANNEL_9:I = 0x9

.field public static final FP_FILTERING_MAX_DISTANCE:Ljava/lang/String; = "FP_FILTERING_MAX_DISTANCE"

.field public static final FP_FILTERING_THRESHOLDLTA_PEAK:Ljava/lang/String; = "FP_FILTERING_THRESHOLDLTA_PEAK"

.field public static final FoV:Ljava/lang/String; = "FoV"

.field public static final RX_ANT_MODE_AOA:B = 0x0t

.field public static final RX_ANT_MODE_RADAR:B = 0x2t

.field public static final RX_ANT_MODE_RFM:B = 0x3t

.field public static final RX_ANT_MODE_TOA:B = 0x1t

.field public static final RX_ANT_PAIR_FOR_LANDSCAPE:B = 0x2t

.field public static final RX_ANT_PAIR_FOR_PORTRAIT:B = 0x1t

.field public static final RX_ANT_PAIR_FOR_RFM:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "SamsungCalibartionConifg"

.field public static final TILT_OFFSET_BOUNDARY:Ljava/lang/String; = "TILT_OFFSET_BOUNDARY"

.field public static final TILT_OFFSET_COUNT:Ljava/lang/String; = "TILT_OFFSET_COUNT"

.field public static final TILT_OFFSET_VALUE:Ljava/lang/String; = "TILT_OFFSET_VALUE"

.field public static final TX_DELTA_PEAK:Ljava/lang/String; = "TX_DELTA_PEAK"

.field public static final UWB_CALIBRATION_VERSION:Ljava/lang/String; = "UWB_CALIBRATION_VERSION"

.field public static final UWB_CHIP_INFO:Ljava/lang/String; = "UWB_CHIP_INFO"

.field public static final X_IO:Ljava/lang/String; = "X_IO"

.field public static final Y_IO:Ljava/lang/String; = "Y_IO"


# instance fields
.field EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

.field mChannelConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field mChipInfo:Ljava/lang/String;

.field mDeviceParams:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

.field mTiltConfig:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "SamsungCalibartionConifg"

    const-string v1, "SamsungCalibrationConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "chipInfo"    # Ljava/lang/String;
    .param p4, "tiltConfig"    # Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
    .param p5, "deviceParams"    # Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;",
            ">;",
            "Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;",
            "Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;",
            ")V"
        }
    .end annotation

    .line 79
    .local p3, "channelConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mVersion:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChipInfo:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    .line 86
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    .line 87
    .local v1, "config":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    iget v3, v1, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mChannelId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v1    # "config":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    goto :goto_0

    .line 90
    :cond_0
    iput-object p4, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mTiltConfig:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    .line 91
    iput-object p5, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mDeviceParams:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->crateEmptyCofig()V

    .line 95
    return-void
.end method

.method private crateEmptyCofig()V
    .locals 2

    .line 179
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    .line 180
    return-void
.end method

.method private getChannelConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    .locals 2
    .param p1, "channelId"    # I

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    .line 171
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    .line 175
    :cond_0
    return-object v0
.end method

.method private toFormattedString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 146
    .local p1, "channelConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 148
    const-string v1, ""

    return-object v1

    .line 151
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 153
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;>;"
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAoaCalibrationStatus()Z
    .locals 1

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public getCalibrationFileVersion()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getChanneConfig(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    .locals 2
    .param p1, "channelId"    # I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    .line 109
    .local v0, "channelConfig":Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->EMPTY_CONFIG:Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    .line 113
    :cond_0
    return-object v0
.end method

.method public getDeviceParams()Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mDeviceParams:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

    return-object v0
.end method

.method public getRxAntennaConfiguration(II)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;
    .locals 4
    .param p1, "antennaType"    # I
    .param p2, "channelId"    # I

    .line 130
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;

    int-to-byte v1, p1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->getRxAntennaPairs(I)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;-><init>(B[B)V

    return-object v0
.end method

.method public getRxAntennaModeFromType(I)B
    .locals 1
    .param p1, "antType"    # I

    .line 160
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 165
    return v0

    .line 164
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 163
    :pswitch_1
    return v0

    .line 162
    :pswitch_2
    return v0

    .line 161
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTiltconfig()Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mTiltConfig:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    return-object v0
.end method

.method public getUwbChipInfo()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChipInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 134
    const-string v0, "SamsungCalibartionConifg"

    const-string v1, "toString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nChannelCofig :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mChannelConfigs:Ljava/util/HashMap;

    .line 138
    invoke-direct {p0, v3}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->toFormattedString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nTiltConfig   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mTiltConfig:Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "]nDeviceConfig :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;->mDeviceParams:Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
