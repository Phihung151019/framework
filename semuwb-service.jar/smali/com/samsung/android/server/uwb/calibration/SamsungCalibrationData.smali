.class public Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;
.super Ljava/lang/Object;
.source "SamsungCalibrationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    }
.end annotation


# static fields
.field public static final ANT_USAGE_AOA_LANDSCAPE:I = 0x2

.field public static final ANT_USAGE_AOA_PORTRAIT:I = 0x1

.field public static final ANT_USAGE_RANGING:I = 0x0

.field public static final ANT_USAGE_RANGING_RFM:I = 0x3

.field private static AOA_CALIBRATION_STATUS:Z = false

.field private static AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH5:[F = null

.field private static AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH9:[F = null

.field private static AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH5:[F = null

.field private static AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH9:[F = null

.field private static AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH5:[F = null

.field private static AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH9:[F = null

.field private static AOA_SEGMENT_CALIBRATION_COUNT_CH5:I = 0x0

.field private static AOA_SEGMENT_CALIBRATION_COUNT_CH9:I = 0x0

.field private static AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH5:[F = null

.field private static AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH9:[F = null

.field private static AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH5:[F = null

.field private static AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH9:[F = null

.field private static AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH5:[F = null

.field private static AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH9:[F = null

.field private static AOA_TILT_CALIBRATION_AOA_OFFSET:[F = null

.field private static AOA_TILT_CALIBRATION_COUNT:I = 0x0

.field private static AOA_TILT_CALIBRATION_TILT_BOUNDARY:[F = null

.field private static FILE_VERSION:Ljava/lang/String; = null

.field private static final PATH_CALIBRATION_CONFIG_FILE:Ljava/lang/String; = "/system/etc/libuwb-cal.conf"

.field private static final PATH_CALIBRATION_CONFIG_FILE_FOR_FOLDED_MODE:Ljava/lang/String; = "/system/etc/libuwb-cal_folded.conf"

.field private static final PATH_CALIBRATION_CONFIG_FILE_IN_EFS:Ljava/lang/String; = "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

.field public static final RX_ANT_FOR_AOA_LANDSCAPE:B = 0x4t

.field public static final RX_ANT_FOR_AOA_PORTRAIT:B = 0x3t

.field public static final RX_ANT_FOR_AOA_PORTRAIT_TRX:B = 0x2t

.field public static final RX_ANT_FOR_RANGING:B = 0x5t

.field public static RX_ANT_FOR_RANGING_CH5:[B = null

.field public static RX_ANT_FOR_RANGING_CH9:[B = null

.field public static final RX_ANT_FOR_RANGING_TRX:B = 0x1t

.field public static final RX_ANT_MODE_AOA:B = 0x0t

.field public static final RX_ANT_MODE_RADAR:B = 0x2t

.field public static final RX_ANT_MODE_RFM:B = 0x3t

.field public static final RX_ANT_MODE_TOA:B = 0x1t

.field public static final RX_ANT_PAIR_FOR_LANDSCAPE:B = 0x2t

.field public static final RX_ANT_PAIR_FOR_PORTRAIT:B = 0x1t

.field public static final RX_ANT_PAIR_FOR_RFM:B = 0x3t

.field private static final TAG:Ljava/lang/String;

.field public static final TX_ANT_FOR_AOA:B = 0x2t

.field public static final TX_ANT_FOR_RANGING:B = 0x1t

.field private static TX_POWER_DELTA_PEAK_AOA_ANTENNA_CH5:I

.field private static TX_POWER_DELTA_PEAK_AOA_ANTENNA_CH9:I

.field private static TX_POWER_DELTA_PEAK_RANGING_ANTENNA_CH5:I

.field private static TX_POWER_DELTA_PEAK_RANGING_ANTENNA_CH9:I

.field private static UWB_CHIP_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->FILE_VERSION:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_CALIBRATION_STATUS:Z

    .line 66
    sput v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    .line 74
    sput v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    .line 82
    sput v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    .line 117
    const-string v0, "SR100T"

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->UWB_CHIP_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareCalibrationFileVersionToEfs()Ljava/lang/String;
    .locals 8

    .line 528
    const-string v0, "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "fileVersionInEfs":Ljava/lang/String;
    const-string v2, "/system/etc/libuwb-cal.conf"

    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "fileVersionInConfigFile":Ljava/lang/String;
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 531
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v2, "compareCalibrationFileInEfs: there is no calibration File"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_0
    if-nez v1, :cond_1

    .line 534
    return-object v2

    .line 535
    :cond_1
    if-nez v3, :cond_2

    .line 536
    return-object v0

    .line 539
    :cond_2
    const/4 v4, 0x0

    .line 541
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 542
    .local v6, "versionInEfs":I
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .local v5, "versionInConfigFile":I
    if-lt v5, v6, :cond_3

    move-object v0, v2

    .line 547
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "versionInConfigFile":I
    .end local v6    # "versionInEfs":I
    .local v0, "path":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 544
    .end local v0    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v5, "compareCalibrationFileInEfs: invalid version in File"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v2, "/system/etc/libuwb-cal.conf"

    move-object v0, v2

    .line 548
    .end local v4    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static getAoaCalibrationStatus()Z
    .locals 1

    .line 137
    sget-boolean v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_CALIBRATION_STATUS:Z

    return v0
.end method

.method public static getAoaSegmentAzimuthAntennaSpacing(I)[F
    .locals 1
    .param p0, "channelId"    # I

    .line 151
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 152
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH5:[F

    return-object v0

    .line 153
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 154
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH9:[F

    return-object v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAoaSegmentAzimuthPdoaBoundary(I)[F
    .locals 1
    .param p0, "channelId"    # I

    .line 191
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 192
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH5:[F

    return-object v0

    .line 193
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 194
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH9:[F

    return-object v0

    .line 196
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAoaSegmentAzimuthPdoaOffset(I)[F
    .locals 1
    .param p0, "channelId"    # I

    .line 171
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 172
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH5:[F

    return-object v0

    .line 173
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 174
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH9:[F

    return-object v0

    .line 176
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAoaSegmentCount(I)I
    .locals 1
    .param p0, "channelId"    # I

    .line 141
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 142
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    return v0

    .line 143
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 144
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    return v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getAoaSegmentElevationAntennaSpacing(I)[F
    .locals 1
    .param p0, "channelId"    # I

    .line 161
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 162
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH5:[F

    return-object v0

    .line 163
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 164
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH9:[F

    return-object v0

    .line 166
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAoaSegmentElevationPdoaBoundary(I)[F
    .locals 1
    .param p0, "channelId"    # I

    .line 201
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 202
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH5:[F

    return-object v0

    .line 203
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 204
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH9:[F

    return-object v0

    .line 206
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAoaSegmentElevationPdoaOffset(I)[F
    .locals 1
    .param p0, "channelId"    # I

    .line 181
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 182
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH5:[F

    return-object v0

    .line 183
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 184
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH9:[F

    return-object v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAoaTiltBoundary()[F
    .locals 1

    .line 219
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_TILT_BOUNDARY:[F

    return-object v0
.end method

.method public static getAoaTiltCount()I
    .locals 1

    .line 211
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    return v0
.end method

.method public static getAoaTiltOffset()[F
    .locals 1

    .line 215
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_AOA_OFFSET:[F

    return-object v0
.end method

.method public static getCalibrationFileVersion()Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->FILE_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRxAntForAoaLandscape()[B
    .locals 1

    .line 258
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
    .end array-data
.end method

.method public static getRxAntForAoaPortrait()[B
    .locals 1

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method public static getRxAntForRanging(I)[B
    .locals 3
    .param p0, "channelId"    # I

    .line 243
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 244
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->RX_ANT_FOR_RANGING_CH5:[B

    return-object v0

    .line 245
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 246
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->RX_ANT_FOR_RANGING_CH9:[B

    return-object v0

    .line 248
    :cond_1
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v1, "getRxAntForRanging: Undefined Channel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public static getRxAntennaConfiguration(II)Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    .locals 3
    .param p0, "antConfig"    # I
    .param p1, "channel"    # I

    .line 606
    const/4 v0, 0x0

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    .line 636
    new-instance v2, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;-><init>(B[B)V

    move-object v0, v2

    .local v0, "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    goto :goto_0

    .line 629
    .end local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    :pswitch_0
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;-><init>(B[B)V

    .line 633
    .restart local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    goto :goto_0

    .line 622
    .end local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    :pswitch_1
    new-instance v2, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;-><init>(B[B)V

    move-object v0, v2

    .line 626
    .restart local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    goto :goto_0

    .line 615
    .end local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    :pswitch_2
    new-instance v2, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;-><init>(B[B)V

    move-object v0, v2

    .line 619
    .restart local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    goto :goto_0

    .line 608
    .end local v0    # "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForRanging(I)[B

    move-result-object v0

    .line 609
    .local v0, "rxAnt":[B
    new-instance v1, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;-><init>(B[B)V

    move-object v0, v1

    .line 612
    .local v0, "rxAntConfig":Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData$RxAntennaConfiguration;
    nop

    .line 642
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method public static getTxPowerDeltaPeakAoaAntenna(I)I
    .locals 1
    .param p0, "channelId"    # I

    .line 233
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 234
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_AOA_ANTENNA_CH5:I

    return v0

    .line 235
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 236
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_AOA_ANTENNA_CH9:I

    return v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getTxPowerDeltaPeakRangingAntenna(I)I
    .locals 1
    .param p0, "channelId"    # I

    .line 223
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 224
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_RANGING_ANTENNA_CH5:I

    return v0

    .line 225
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 226
    sget v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_RANGING_ANTENNA_CH9:I

    return v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getUwbChipInfo()Ljava/lang/String;
    .locals 1

    .line 262
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->UWB_CHIP_INFO:Ljava/lang/String;

    return-object v0
.end method

.method public static isExistCalibrationFileForFolded()Z
    .locals 3

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/libuwb-cal_folded.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v2, "file not exist in /system/etc/libuwb-cal_folded.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v1, 0x0

    return v1

    .line 128
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static parseFromString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 594
    const-string v0, "\t"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 595
    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 596
    const-string v2, "["

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 597
    const-string v2, "]"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 598
    const-string v1, ","

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 600
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "res":[Ljava/lang/String;
    return-object v0
.end method

.method public static readCalibrationFile()Z
    .locals 2

    .line 266
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->compareCalibrationFileVersionToEfs()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFile(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static readCalibrationFile(Ljava/lang/String;)Z
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "result":Z
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 278
    .local v2, "file":Ljava/nio/file/Path;
    if-nez v2, :cond_0

    .line 279
    sget-object v1, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v3, "readCalibrationFile: file not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v0

    .line 283
    :cond_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 285
    .local v3, "cs":Ljava/nio/charset/Charset;
    :try_start_0
    invoke-static {v2, v3}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4

    .line 286
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2b

    .line 287
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    .local v6, "readLine":Ljava/lang/String;
    const-string v7, "UWB_CALIBRATION_VERSION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "="

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 290
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->FILE_VERSION:Ljava/lang/String;

    goto/16 :goto_13

    .line 291
    :cond_1
    const-string v7, "CH5_SEGMENT_CAL_COUNT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 292
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    .line 293
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    if-gtz v7, :cond_2

    .line 294
    goto/16 :goto_13

    .line 296
    :cond_2
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH5:[F

    .line 297
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH5:[F

    .line 298
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH5:[F

    .line 299
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH5:[F

    goto/16 :goto_13

    .line 300
    :cond_3
    const-string v7, "CH5_SEGMENT_CAL_CONFIG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "]]"

    if-eqz v7, :cond_8

    .line 301
    :try_start_2
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    if-gtz v7, :cond_4

    .line 302
    goto/16 :goto_13

    .line 305
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v7, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    add-int/lit8 v8, v5, 0x1

    .line 309
    .local v8, "i":I
    :goto_1
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 310
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    move v5, v8

    .line 312
    nop

    .line 317
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "strArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 319
    .local v11, "segment":I
    const/4 v8, 0x0

    :goto_2
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    if-ge v8, v12, :cond_5

    .line 320
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH5:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .local v13, "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 321
    sget-object v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH5:[F

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "segment":I
    .local v12, "segment":I
    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v11, v8

    .line 319
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    goto :goto_2

    .line 323
    .end local v12    # "segment":I
    .restart local v11    # "segment":I
    :cond_5
    const/4 v8, 0x0

    :goto_3
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    if-ge v8, v12, :cond_6

    .line 324
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH5:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 325
    sget-object v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH5:[F

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "segment":I
    .restart local v12    # "segment":I
    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v11, v8

    .line 323
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    goto :goto_3

    .line 327
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v12    # "segment":I
    :cond_6
    goto/16 :goto_13

    .line 314
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v8    # "i":I
    :cond_7
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v11

    goto :goto_1

    .line 327
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v11    # "i":I
    :cond_8
    const-string v7, "CH5_SEGMENT_PDOA_BOUNDARY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v11, 0x0

    if-eqz v7, :cond_e

    .line 328
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    if-gtz v7, :cond_9

    .line 329
    goto/16 :goto_13

    .line 330
    :cond_9
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    if-ne v7, v9, :cond_a

    .line 331
    new-array v7, v9, [F

    aput v11, v7, v1

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH5:[F

    .line 332
    new-array v7, v9, [F

    aput v11, v7, v1

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH5:[F

    .line 333
    goto/16 :goto_13

    .line 335
    :cond_a
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    sub-int/2addr v7, v9

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH5:[F

    .line 336
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    sub-int/2addr v7, v9

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH5:[F

    .line 339
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    add-int/lit8 v8, v5, 0x1

    .line 343
    .restart local v8    # "i":I
    :goto_4
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 344
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    move v5, v8

    .line 346
    nop

    .line 351
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 352
    .restart local v10    # "strArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 353
    .local v11, "segment":I
    const/4 v8, 0x0

    :goto_5
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    sub-int/2addr v12, v9

    if-ge v8, v12, :cond_b

    .line 354
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH5:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 353
    add-int/lit8 v8, v8, 0x1

    move v11, v13

    goto :goto_5

    .line 356
    .end local v13    # "segment":I
    .restart local v11    # "segment":I
    :cond_b
    const/4 v8, 0x0

    :goto_6
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH5:I

    sub-int/2addr v12, v9

    if-ge v8, v12, :cond_c

    .line 357
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH5:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 356
    add-int/lit8 v8, v8, 0x1

    move v11, v13

    goto :goto_6

    .line 359
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v13    # "segment":I
    :cond_c
    goto/16 :goto_13

    .line 348
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v8    # "i":I
    :cond_d
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v11

    goto :goto_4

    .line 359
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v11    # "i":I
    :cond_e
    const-string v7, "CH9_SEGMENT_CAL_COUNT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 360
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    .line 361
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    if-gtz v7, :cond_f

    .line 362
    goto/16 :goto_13

    .line 364
    :cond_f
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH9:[F

    .line 365
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH9:[F

    .line 366
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH9:[F

    .line 367
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH9:[F

    goto/16 :goto_13

    .line 368
    :cond_10
    const-string v7, "CH9_SEGMENT_CAL_CONFIG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 369
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    if-gtz v7, :cond_11

    .line 370
    goto/16 :goto_13

    .line 373
    :cond_11
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    add-int/lit8 v8, v5, 0x1

    .line 377
    .restart local v8    # "i":I
    :goto_7
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 378
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    move v5, v8

    .line 380
    nop

    .line 385
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 386
    .restart local v10    # "strArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 387
    .local v11, "segment":I
    const/4 v8, 0x0

    :goto_8
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    if-ge v8, v12, :cond_12

    .line 388
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_ANTENNA_SPACING_CH9:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 389
    sget-object v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_OFFSET_CH9:[F

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "segment":I
    .restart local v12    # "segment":I
    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v11, v8

    .line 387
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    goto :goto_8

    .line 391
    .end local v12    # "segment":I
    .restart local v11    # "segment":I
    :cond_12
    const/4 v8, 0x0

    :goto_9
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    if-ge v8, v12, :cond_13

    .line 392
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_ANTENNA_SPACING_CH9:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 393
    sget-object v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_OFFSET_CH9:[F

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "segment":I
    .restart local v12    # "segment":I
    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v11, v8

    .line 391
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    goto :goto_9

    .line 396
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v12    # "segment":I
    :cond_13
    goto/16 :goto_13

    .line 382
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v8    # "i":I
    :cond_14
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v11

    goto :goto_7

    .line 396
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v11    # "i":I
    :cond_15
    const-string v7, "CH9_SEGMENT_PDOA_BOUNDARY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 397
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    if-gtz v7, :cond_16

    .line 398
    goto/16 :goto_13

    .line 399
    :cond_16
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    if-ne v7, v9, :cond_17

    .line 400
    new-array v7, v9, [F

    aput v11, v7, v1

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH9:[F

    .line 401
    new-array v7, v9, [F

    aput v11, v7, v1

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH9:[F

    .line 402
    goto/16 :goto_13

    .line 404
    :cond_17
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    sub-int/2addr v7, v9

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH9:[F

    .line 405
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    sub-int/2addr v7, v9

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH9:[F

    .line 408
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    add-int/lit8 v8, v5, 0x1

    .line 412
    .restart local v8    # "i":I
    :goto_a
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 413
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    move v5, v8

    .line 415
    nop

    .line 420
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 421
    .restart local v10    # "strArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 422
    .local v11, "segment":I
    const/4 v8, 0x0

    :goto_b
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    sub-int/2addr v12, v9

    if-ge v8, v12, :cond_18

    .line 423
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_AZIMUTH_PDOA_BOUNDARY_CH9:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 422
    add-int/lit8 v8, v8, 0x1

    move v11, v13

    goto :goto_b

    .line 425
    .end local v13    # "segment":I
    .restart local v11    # "segment":I
    :cond_18
    const/4 v8, 0x0

    :goto_c
    sget v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_COUNT_CH9:I

    sub-int/2addr v12, v9

    if-ge v8, v12, :cond_19

    .line 426
    sget-object v12, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_SEGMENT_CALIBRATION_ELEVATION_PDOA_BOUNDARY_CH9:[F

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "segment":I
    .restart local v13    # "segment":I
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v12, v8

    .line 425
    add-int/lit8 v8, v8, 0x1

    move v11, v13

    goto :goto_c

    .line 428
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v13    # "segment":I
    :cond_19
    goto/16 :goto_13

    .line 417
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v8    # "i":I
    :cond_1a
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v11

    goto :goto_a

    .line 428
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v11    # "i":I
    :cond_1b
    const-string v7, "TILT_OFFSET_COUNT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 429
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    goto/16 :goto_13

    .line 430
    :cond_1c
    const-string v7, "TILT_OFFSET_VALUE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 431
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    if-gtz v7, :cond_1d

    .line 432
    goto/16 :goto_13

    .line 435
    :cond_1d
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_AOA_OFFSET:[F

    .line 436
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "strArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_d
    sget v10, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    if-ge v8, v10, :cond_1e

    .line 438
    sget-object v10, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_AOA_OFFSET:[F

    aget-object v11, v7, v8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v10, v8

    .line 437
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 440
    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_1e
    goto/16 :goto_13

    :cond_1f
    const-string v7, "TILT_OFFSET_BOUNDARY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 441
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    if-gtz v7, :cond_20

    .line 442
    goto/16 :goto_13

    .line 443
    :cond_20
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    if-ne v7, v9, :cond_21

    .line 444
    new-array v7, v9, [F

    aput v11, v7, v1

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_TILT_BOUNDARY:[F

    .line 445
    goto/16 :goto_13

    .line 447
    :cond_21
    sget v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    sub-int/2addr v7, v9

    new-array v7, v7, [F

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_TILT_BOUNDARY:[F

    .line 450
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 451
    .restart local v7    # "strArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_e
    sget v10, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_COUNT:I

    sub-int/2addr v10, v9

    if-ge v8, v10, :cond_22

    .line 452
    sget-object v10, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_TILT_CALIBRATION_TILT_BOUNDARY:[F

    aget-object v11, v7, v8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v10, v8

    .line 451
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 454
    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_22
    goto/16 :goto_13

    :cond_23
    const-string v7, "TX_DELTA_PEAK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 455
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 456
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    add-int/lit8 v8, v5, 0x1

    .line 459
    .restart local v8    # "i":I
    :goto_f
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 460
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    move v5, v8

    .line 462
    nop

    .line 466
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 467
    .restart local v10    # "strArray":[Ljava/lang/String;
    aget-object v11, v10, v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_RANGING_ANTENNA_CH5:I

    .line 468
    aget-object v11, v10, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_AOA_ANTENNA_CH5:I

    .line 469
    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_RANGING_ANTENNA_CH9:I

    .line 470
    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TX_POWER_DELTA_PEAK_AOA_ANTENNA_CH9:I

    .line 471
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v10    # "strArray":[Ljava/lang/String;
    goto/16 :goto_13

    .line 464
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "i":I
    :cond_24
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .restart local v11    # "i":I
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v11

    goto :goto_f

    .line 471
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "i":I
    :cond_25
    const-string v7, "CH5_RX_ANT_FOR_RANGING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 472
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, "strArray":[Ljava/lang/String;
    array-length v8, v7

    .line 474
    .local v8, "noOfRxAnts":I
    new-array v10, v8, [B

    sput-object v10, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->RX_ANT_FOR_RANGING_CH5:[B

    .line 476
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_10
    if-ge v10, v8, :cond_26

    .line 477
    sget-object v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->RX_ANT_FOR_RANGING_CH5:[B

    aget-object v12, v7, v10

    invoke-static {v12}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v12

    aput-byte v12, v11, v10

    .line 476
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 479
    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v8    # "noOfRxAnts":I
    .end local v10    # "i":I
    :cond_26
    goto :goto_13

    :cond_27
    const-string v7, "CH9_RX_ANT_FOR_RANGING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 480
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-static {v7}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->parseFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 481
    .restart local v7    # "strArray":[Ljava/lang/String;
    array-length v8, v7

    .line 482
    .restart local v8    # "noOfRxAnts":I
    new-array v10, v8, [B

    sput-object v10, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->RX_ANT_FOR_RANGING_CH9:[B

    .line 484
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_11
    if-ge v10, v8, :cond_28

    .line 485
    sget-object v11, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->RX_ANT_FOR_RANGING_CH9:[B

    aget-object v12, v7, v10

    invoke-static {v12}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v12

    aput-byte v12, v11, v10

    .line 484
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v8    # "noOfRxAnts":I
    .end local v10    # "i":I
    :cond_28
    goto :goto_12

    .line 487
    :cond_29
    const-string v7, "UWB_CHIP_INFO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 488
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    sput-object v7, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->UWB_CHIP_INFO:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_13

    .line 487
    :cond_2a
    :goto_12
    nop

    .line 286
    .end local v6    # "readLine":Ljava/lang/String;
    :goto_13
    add-int/2addr v5, v9

    goto/16 :goto_0

    .line 491
    .end local v5    # "index":I
    :cond_2b
    const/4 v0, 0x1

    .line 494
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_14

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 495
    .end local v1    # "e":Ljava/io/IOException;
    :goto_14
    sput-boolean v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_CALIBRATION_STATUS:Z

    .line 496
    sget-object v1, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readCalibrationFile: AOA_CALIBRATION_STATUS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->AOA_CALIBRATION_STATUS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FileVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->FILE_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v0
.end method

.method public static readCalibrationFileForFolded()Z
    .locals 1

    .line 271
    const-string v0, "/system/etc/libuwb-cal_folded.conf"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .line 552
    const-string v0, "="

    const-string v1, "readCalibrationFileVersion: exception occurred"

    const/4 v2, 0x0

    .line 553
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 556
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 558
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readCalibrationFileVersion: file Not Found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    nop

    .line 578
    if-eqz v3, :cond_0

    .line 579
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 584
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 559
    :goto_1
    return-object v6

    .line 562
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 563
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 564
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 565
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v5, "readCalibrationFileVersion: could not read version"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    nop

    .line 578
    nop

    .line 579
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 584
    goto :goto_2

    .line 581
    :catch_1
    move-exception v0

    .line 582
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 566
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-object v6

    .line 569
    :cond_2
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v5, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 572
    .end local v2    # "version":Ljava/lang/String;
    .local v0, "version":Ljava/lang/String;
    goto :goto_3

    .line 570
    .end local v0    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 571
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v0, v0, v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 578
    .end local v2    # "version":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "version":Ljava/lang/String;
    :goto_3
    nop

    .line 579
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 584
    goto :goto_6

    .line 581
    :catch_3
    move-exception v2

    .line 582
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 585
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 577
    .end local v0    # "version":Ljava/lang/String;
    .local v2, "version":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 573
    :catch_4
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v4, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 579
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 581
    :catch_5
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 585
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 584
    :cond_3
    :goto_4
    nop

    .line 586
    :goto_5
    move-object v0, v2

    .end local v2    # "version":Ljava/lang/String;
    .local v0, "version":Ljava/lang/String;
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 587
    const/4 v0, 0x0

    .line 589
    :cond_4
    return-object v0

    .line 578
    .end local v0    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :goto_7
    if-eqz v3, :cond_5

    .line 579
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    .line 581
    :catch_6
    move-exception v4

    .line 582
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 584
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_8
    nop

    .line 585
    :goto_9
    throw v0
.end method

.method public static readCalibrationFileWithKeyword(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    const-string v0, "="

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/etc/libuwb-cal.conf"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 503
    .local v1, "file":Ljava/nio/file/Path;
    if-nez v1, :cond_0

    .line 504
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->TAG:Ljava/lang/String;

    const-string v2, "readCalibrationFileWithKeyword: file not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 509
    .local v2, "cs":Ljava/nio/charset/Charset;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v1, v2}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4

    .line 512
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 513
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 514
    .local v6, "readLine":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 516
    goto :goto_1

    .line 518
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v6    # "readLine":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "index":I
    :cond_3
    goto :goto_2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3
.end method
