.class Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method AR_Calc_Feature(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_SaveAccData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_SaveBaroData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_SaveMagData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method AR_Calc_SaveAccData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;)V
    .locals 6

    .line 1
    iput-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    .line 4
    .line 5
    iget p1, p2, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->x:F

    .line 6
    .line 7
    float-to-double v0, p1

    .line 8
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget p1, p2, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->y:F

    .line 15
    .line 16
    float-to-double v4, p1

    .line 17
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    add-double/2addr v4, v0

    .line 22
    iget p1, p2, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->z:F

    .line 23
    .line 24
    float-to-double p1, p1

    .line 25
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    add-double/2addr p1, v4

    .line 30
    double-to-float p1, p1

    .line 31
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;->accelNorm:F

    .line 32
    .line 33
    return-void
.end method

.method AR_Calc_SaveBaroData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;)V
    .locals 2

    .line 1
    iput-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 2
    .line 3
    iget-byte p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReady:B

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    .line 10
    .line 11
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    .line 12
    .line 13
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;->data:F

    .line 14
    .line 15
    aput p2, p1, p0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    .line 21
    .line 22
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    .line 23
    .line 24
    add-int/lit8 v0, p0, 0x4

    .line 25
    .line 26
    rem-int/lit8 v0, v0, 0x5

    .line 27
    .line 28
    aget v0, p1, v0

    .line 29
    .line 30
    const v1, 0x3f333333    # 0.7f

    .line 31
    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;->data:F

    .line 35
    .line 36
    const v1, 0x3e99999a    # 0.3f

    .line 37
    .line 38
    .line 39
    mul-float/2addr p2, v1

    .line 40
    add-float/2addr p2, v0

    .line 41
    aput p2, p1, p0

    .line 42
    .line 43
    return-void
.end method

.method AR_Calc_SaveMagData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V
    .locals 6

    .line 1
    iput-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 6
    .line 7
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->index:I

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    iget v3, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 12
    .line 13
    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 14
    .line 15
    iget v4, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 16
    .line 17
    iput v4, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 18
    .line 19
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 20
    .line 21
    iput p2, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 22
    .line 23
    iget-byte v2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReadyMag:B

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 31
    .line 32
    iput v0, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 33
    .line 34
    iput v0, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 38
    .line 39
    add-int/lit8 v5, v1, 0x1

    .line 40
    .line 41
    rem-int/lit8 v5, v5, 0x5

    .line 42
    .line 43
    aget-object v5, v0, v5

    .line 44
    .line 45
    iget v5, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 46
    .line 47
    sub-float/2addr v3, v5

    .line 48
    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 49
    .line 50
    add-int/lit8 v3, v1, 0x1

    .line 51
    .line 52
    rem-int/lit8 v3, v3, 0x5

    .line 53
    .line 54
    aget-object v3, v0, v3

    .line 55
    .line 56
    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 57
    .line 58
    sub-float/2addr v4, v3

    .line 59
    iput v4, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    rem-int/lit8 v1, v1, 0x5

    .line 64
    .line 65
    aget-object v0, v0, v1

    .line 66
    .line 67
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 68
    .line 69
    sub-float/2addr p2, v0

    .line 70
    iput p2, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 71
    .line 72
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 73
    .line 74
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 75
    .line 76
    float-to-double v0, p2

    .line 77
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 78
    .line 79
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iget-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 86
    .line 87
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 88
    .line 89
    float-to-double v4, p2

    .line 90
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    add-double/2addr v4, v0

    .line 95
    iget-object p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 98
    .line 99
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 100
    .line 101
    float-to-double p1, p1

    .line 102
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 103
    .line 104
    .line 105
    move-result-wide p1

    .line 106
    add-double/2addr p1, v4

    .line 107
    double-to-float p1, p1

    .line 108
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGradNorm:F

    .line 109
    .line 110
    return-void
.end method

.method AR_Calc_UpdateBaroIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 2
    .line 3
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    rem-int/lit8 v0, v0, 0x5

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-byte v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReady:B

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method AR_Calc_UpdateMagIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 2
    .line 3
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->index:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    rem-int/lit8 v0, v0, 0x5

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->index:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-byte v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReadyMag:B

    .line 14
    .line 15
    :cond_0
    return-void
.end method
