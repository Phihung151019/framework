.class Lcom/samsung/android/server/wifi/wcm/EleCore;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final AR_ELE_ACC_TIME:I = 0xa

.field static final AR_ELE_BARO_SIGN:I = 0x14

.field static final AR_ELE_BARO_TIME:I = 0x1

.field static final AR_ELE_HIGH_BOUND_ACC:I = 0x79

.field static final AR_ELE_LOW_BOUND_ACC:I = 0x40

.field static final AR_ELE_MAG_TIME:I = 0x14

.field static final AR_GRAD_BARO_ELE:F = 0.05f

.field static final AR_GRAD_MAG_ELE:F = 15.0f

.field static final TH_GRAD_BARO:F = 0.03f


# instance fields
.field gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method AR_Ele_Classification(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification_Baro()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification_Accel(Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification_Mag(Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 19
    .line 20
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/16 v2, 0x14

    .line 24
    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    iget-byte v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    iget-byte v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    .line 34
    .line 35
    if-ne v3, v1, :cond_0

    .line 36
    .line 37
    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    if-eq v0, v2, :cond_1

    .line 47
    .line 48
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    .line 49
    .line 50
    if-eq p0, v1, :cond_1

    .line 51
    .line 52
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method AR_Ele_Classification_Accel(Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;->accelNorm:F

    .line 2
    .line 3
    const/high16 v0, 0x42800000    # 64.0f

    .line 4
    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    const/high16 v0, 0x42f20000    # 121.0f

    .line 10
    .line 11
    cmpg-float p1, p1, v0

    .line 12
    .line 13
    if-gtz p1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 16
    .line 17
    iget-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    if-ge p1, v0, :cond_0

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    .line 33
    .line 34
    return-void
.end method

.method AR_Ele_Classification_Baro()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro:F

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x3d4ccccd    # 0.05f

    .line 10
    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-ltz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 17
    .line 18
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    int-to-byte v0, v0

    .line 25
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    .line 32
    .line 33
    return-void
.end method

.method AR_Ele_Classification_Mag(Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGradNorm:F

    .line 2
    .line 3
    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    .line 5
    cmpl-float p1, p1, v0

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 10
    .line 11
    iget-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    .line 12
    .line 13
    const/16 v0, 0x14

    .line 14
    .line 15
    if-ge p1, v0, :cond_0

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    .line 27
    .line 28
    return-void
.end method

.method AR_Ele_Detect(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 2
    .line 3
    iget-byte v1, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReady:B

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    .line 12
    .line 13
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->previousActivity:Z

    .line 14
    .line 15
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_GetGradient(Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->previousActivity:Z

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    .line 28
    .line 29
    if-eq v1, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "STATE CHANGE FROM"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 47
    .line 48
    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->previousActivity:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "TO "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 59
    .line 60
    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 73
    .line 74
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    .line 75
    .line 76
    return p0
.end method

.method AR_Ele_GetGradient(Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    .line 4
    .line 5
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    .line 6
    .line 7
    aget v1, v0, p1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    add-int/2addr p1, v2

    .line 11
    rem-int/lit8 p1, p1, 0x5

    .line 12
    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    sub-float/2addr v1, p1

    .line 16
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro:F

    .line 17
    .line 18
    const p1, 0x3cf5c28f    # 0.03f

    .line 19
    .line 20
    .line 21
    cmpl-float v0, v1, p1

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 27
    .line 28
    if-ge v0, v2, :cond_1

    .line 29
    .line 30
    :cond_0
    const v0, -0x430a3d71    # -0.03f

    .line 31
    .line 32
    .line 33
    cmpg-float v4, v1, v0

    .line 34
    .line 35
    if-gtz v4, :cond_2

    .line 36
    .line 37
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 38
    .line 39
    if-lt v4, v2, :cond_2

    .line 40
    .line 41
    :cond_1
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 42
    .line 43
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 44
    .line 45
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    cmpl-float p1, v1, p1

    .line 49
    .line 50
    const/16 v4, 0x14

    .line 51
    .line 52
    if-ltz p1, :cond_4

    .line 53
    .line 54
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 55
    .line 56
    add-int/2addr p1, v2

    .line 57
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 58
    .line 59
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 60
    .line 61
    if-lt p1, v4, :cond_3

    .line 62
    .line 63
    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    cmpg-float p1, v1, v0

    .line 71
    .line 72
    if-gtz p1, :cond_6

    .line 73
    .line 74
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 75
    .line 76
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 77
    .line 78
    add-int/2addr p1, v2

    .line 79
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 80
    .line 81
    if-lt p1, v4, :cond_5

    .line 82
    .line 83
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 90
    .line 91
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 92
    .line 93
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 94
    .line 95
    return-void
.end method
