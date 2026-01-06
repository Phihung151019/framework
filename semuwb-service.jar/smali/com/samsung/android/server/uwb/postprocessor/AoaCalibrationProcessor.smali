.class public Lcom/samsung/android/server/uwb/postprocessor/AoaCalibrationProcessor;
.super Ljava/lang/Object;
.source "AoaCalibrationProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AoaCalibrationProcessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAoaMeasurements(IIFF)F
    .locals 12
    .param p0, "channelId"    # I
    .param p1, "currentAntenna"    # I
    .param p2, "pdoaRaw"    # F
    .param p3, "aoaRaw"    # F

    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentCount(I)I

    move-result v0

    .line 71
    .local v0, "segmentCount":I
    if-gtz v0, :cond_0

    .line 72
    return p3

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 76
    .local v1, "antennaSpacing":[F
    const/4 v2, 0x0

    .line 77
    .local v2, "pdoaOffset":[F
    const/4 v3, 0x0

    .line 78
    .local v3, "pdoaBoundary":[F
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 79
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentAzimuthAntennaSpacing(I)[F

    move-result-object v1

    .line 80
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentAzimuthPdoaOffset(I)[F

    move-result-object v2

    .line 81
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentAzimuthPdoaBoundary(I)[F

    move-result-object v3

    goto :goto_0

    .line 82
    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    .line 83
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentElevationAntennaSpacing(I)[F

    move-result-object v1

    .line 84
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentElevationPdoaOffset(I)[F

    move-result-object v2

    .line 85
    invoke-static {p0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaSegmentElevationPdoaBoundary(I)[F

    move-result-object v3

    .line 89
    :goto_0
    if-nez v1, :cond_2

    .line 90
    return p3

    .line 93
    :cond_2
    array-length v5, v1

    sub-int/2addr v5, v4

    aget v5, v1, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 94
    .local v5, "d":F
    array-length v7, v2

    sub-int/2addr v7, v4

    aget v4, v2, v7

    .line 95
    .local v4, "Delta_phi":F
    const/4 v7, 0x5

    if-ne p0, v7, :cond_3

    const v7, 0x3d3d5ddb

    goto :goto_1

    :cond_3
    const v7, 0x3d19d99a

    .line 96
    .local v7, "lambda":F
    :goto_1
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v5, v8

    div-float/2addr v9, v7

    .line 98
    .local v9, "beta":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    add-int/lit8 v11, v0, -0x1

    if-ge v10, v11, :cond_5

    .line 99
    aget v11, v3, v10

    cmpg-float v11, p2, v11

    if-gez v11, :cond_4

    .line 100
    aget v11, v1, v10

    div-float v5, v11, v6

    .line 101
    aget v4, v2, v10

    .line 102
    mul-float/2addr v8, v5

    div-float v9, v8, v7

    .line 103
    goto :goto_3

    .line 98
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 107
    .end local v10    # "i":I
    :cond_5
    :goto_3
    sub-float v6, p2, v4

    invoke-static {v6}, Lcom/samsung/uwb/support/util/UwbUtil;->degToRad(F)F

    move-result v6

    .line 108
    .local v6, "Delta_theta":F
    const v8, 0x40490fd8

    mul-float/2addr v8, v9

    div-float v8, v6, v8

    .line 109
    .local v8, "Sin_aoa":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v10

    if-lez v10, :cond_6

    .line 110
    const/high16 v10, 0x42b40000    # 90.0f

    return v10

    .line 111
    :cond_6
    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_7

    .line 112
    const/high16 v10, -0x3d4c0000    # -90.0f

    return v10

    .line 115
    :cond_7
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v10}, Lcom/samsung/uwb/support/util/UwbUtil;->radToDeg(F)F

    move-result v10

    return v10

    .line 87
    .end local v4    # "Delta_phi":F
    .end local v5    # "d":F
    .end local v6    # "Delta_theta":F
    .end local v7    # "lambda":F
    .end local v8    # "Sin_aoa":F
    .end local v9    # "beta":F
    :cond_8
    return p3
.end method

.method private static calibrateAoaTiltOffset(FFF)F
    .locals 7
    .param p0, "aoa"    # F
    .param p1, "pitch"    # F
    .param p2, "yaw"    # F

    .line 119
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaTiltCount()I

    move-result v0

    .line 120
    .local v0, "tiltCount":I
    if-eqz v0, :cond_5

    const/high16 v1, -0x3e600000    # -20.0f

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    goto :goto_3

    .line 124
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaTiltOffset()[F

    move-result-object v1

    .line 125
    .local v1, "tiltOffset":[F
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaTiltBoundary()[F

    move-result-object v2

    .line 127
    .local v2, "tiltBoundary":[F
    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr p1, v3

    .line 128
    add-int/lit8 v4, v0, -0x1

    aget v4, v1, v4

    .line 129
    .local v4, "offset":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_2

    .line 130
    aget v6, v2, v5

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    .line 131
    aget v4, v1, v5

    .line 132
    goto :goto_1

    .line 129
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    .end local v5    # "i":I
    :cond_2
    :goto_1
    sub-float v5, p0, v4

    .line 137
    .local v5, "calibratedAoa":F
    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    .line 138
    const/high16 v5, 0x42b40000    # 90.0f

    goto :goto_2

    .line 139
    :cond_3
    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpg-float v3, v5, v3

    if-gez v3, :cond_4

    .line 140
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 142
    :cond_4
    :goto_2
    return v5

    .line 121
    .end local v1    # "tiltOffset":[F
    .end local v2    # "tiltBoundary":[F
    .end local v4    # "offset":F
    .end local v5    # "calibratedAoa":F
    :cond_5
    :goto_3
    return p0
.end method

.method public static calibrateRangingData(Lcom/samsung/uwb/support/data/ranging/RangingData;IFF)V
    .locals 17
    .param p0, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;
    .param p1, "channelId"    # I
    .param p2, "pitch"    # F
    .param p3, "yaw"    # F

    .line 20
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v3

    instance-of v3, v3, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    const-string v4, "not calculate AoA in Rx_Mode "

    const-string v5, "AoaCalibrationProcessor"

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 21
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v8

    if-ge v3, v8, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    aget-object v8, v8, v3

    check-cast v8, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 23
    .local v8, "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getStatus()B

    move-result v9

    if-eqz v9, :cond_0

    .line 24
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v9

    .line 28
    .local v9, "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxModeForRanging()B

    move-result v10

    .line 29
    .local v10, "rxMode":B
    if-eq v10, v7, :cond_1

    if-eq v10, v6, :cond_1

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 34
    :cond_1
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_2

    .line 35
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v12

    aget-byte v12, v12, v11

    .line 36
    .local v12, "rxAntPairId":B
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v13

    aget v13, v13, v11

    .line 37
    .local v13, "aoa":F
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v14

    aget v14, v14, v11

    .line 38
    .local v14, "pdoa":F
    invoke-static {v0, v12, v14, v13}, Lcom/samsung/android/server/uwb/postprocessor/AoaCalibrationProcessor;->calculateAoaMeasurements(IIFF)F

    move-result v15

    .line 39
    .local v15, "calculatedAoa":F
    invoke-static {v15, v1, v2}, Lcom/samsung/android/server/uwb/postprocessor/AoaCalibrationProcessor;->calibrateAoaTiltOffset(FFF)F

    move-result v15

    .line 41
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v16

    aput v15, v16, v11

    .line 34
    .end local v12    # "rxAntPairId":B
    .end local v13    # "aoa":F
    .end local v14    # "pdoa":F
    .end local v15    # "calculatedAoa":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 21
    .end local v8    # "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .end local v9    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .end local v10    # "rxMode":B
    .end local v11    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_3
    goto :goto_4

    .line 44
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v3

    instance-of v3, v3, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v3, :cond_7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v3, v3, v8

    check-cast v3, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 46
    .local v3, "owrAoaMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getStatus()B

    move-result v8

    if-eqz v8, :cond_5

    .line 47
    return-void

    .line 50
    :cond_5
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getSamsungSpecificDataForOwrForAdv()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    move-result-object v8

    .line 51
    .local v8, "specificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getRxModeForRanging()B

    move-result v9

    .line 52
    .local v9, "rxMode":B
    if-eq v9, v7, :cond_6

    if-eq v9, v6, :cond_6

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_6
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getNumOfRxForRanging()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 58
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getRxAntennaForRanging()[B

    move-result-object v5

    aget-byte v5, v5, v4

    .line 59
    .local v5, "rxAntPairId":B
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getAoa()[F

    move-result-object v6

    aget v6, v6, v4

    .line 60
    .local v6, "aoa":F
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getPdoa()[F

    move-result-object v7

    aget v7, v7, v4

    .line 61
    .local v7, "pdoa":F
    invoke-static {v0, v5, v7, v6}, Lcom/samsung/android/server/uwb/postprocessor/AoaCalibrationProcessor;->calculateAoaMeasurements(IIFF)F

    move-result v10

    .line 62
    .local v10, "calculatedAoa":F
    invoke-static {v10, v1, v2}, Lcom/samsung/android/server/uwb/postprocessor/AoaCalibrationProcessor;->calibrateAoaTiltOffset(FFF)F

    move-result v10

    .line 64
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getAoa()[F

    move-result-object v11

    aput v10, v11, v4

    .line 57
    .end local v5    # "rxAntPairId":B
    .end local v6    # "aoa":F
    .end local v7    # "pdoa":F
    .end local v10    # "calculatedAoa":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 67
    .end local v3    # "owrAoaMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    .end local v4    # "j":I
    .end local v8    # "specificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    .end local v9    # "rxMode":B
    :cond_7
    :goto_4
    return-void
.end method
