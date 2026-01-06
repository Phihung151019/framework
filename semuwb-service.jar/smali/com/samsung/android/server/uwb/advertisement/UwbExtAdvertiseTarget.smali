.class Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
.super Ljava/lang/Object;
.source "UwbExtAdvertiseTarget.java"


# static fields
.field private static final COMPENSATION_VALUE_INIT:I = 0x0

.field private static final CRITERION_ANGLE_INIT:I = 0xa

.field private static final END_INDEX_TO_CAL_VARIANCE:I = 0x8

.field private static final HEAD_OF_RECENT_ARRAY:I = 0x0

.field private static final SIZE_OF_ARRAY_TO_CHECK:I = 0xa

.field private static final START_INDEX_TO_CAL_VARIANCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UwbExtAdvertiseTarget"

.field private static final TRUSTED_VALUE_OF_VARIANCE:I = 0x5


# instance fields
.field private mCompensationValue:I

.field private mCriterionAngle:I

.field private mIsVarianceCalculated:Z

.field private mLastMeasuredTime:J

.field private final mMacAddress:J

.field private final mRecentAoaAzimuth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentAoaElevation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mRssiRx1:F

.field private mVarianceOfAzimuth:D

.field private mVarianceOfElevation:D


# direct methods
.method public static synthetic $r8$lambda$3-wZTGM_ZHUVlek471iwquG3WA8(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;Ljava/lang/Double;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->lambda$isWithinCriterionAngle$0(Ljava/lang/Double;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pQYJRZnDgezAz6Ci89osXcdd4NE(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;Ljava/lang/Double;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->lambda$isWithinCriterionAngle$1(Ljava/lang/Double;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "macAddress"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaElevation:Ljava/util/ArrayList;

    .line 36
    iput-wide p1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mMacAddress:J

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCriterionAngle:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCompensationValue:I

    .line 39
    return-void
.end method

.method private calculateAoaVariance(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V
    .locals 9
    .param p1, "postProcessedData"    # Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 129
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaAzimuth()F

    move-result v0

    float-to-double v0, v0

    .line 130
    .local v0, "aoaAzimuth":D
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaElevation()F

    move-result v2

    float-to-double v2, v2

    .line 131
    .local v2, "aoaElevation":D
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaElevation:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-le v4, v6, :cond_0

    .line 134
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaElevation:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 138
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    .line 140
    const/4 v5, 0x2

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 141
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    .line 142
    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v4

    .line 143
    invoke-interface {v4}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v4

    .line 144
    .local v4, "azimuthArr":[D
    invoke-static {v4}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->getVariance([D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mVarianceOfAzimuth:D

    .line 145
    iget-object v7, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaElevation:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 148
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    .line 149
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v5

    .line 150
    invoke-interface {v5}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v5

    .line 151
    .local v5, "elevationArr":[D
    invoke-static {v5}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->getVariance([D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mVarianceOfElevation:D

    .line 152
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mIsVarianceCalculated:Z

    .line 153
    .end local v4    # "azimuthArr":[D
    .end local v5    # "elevationArr":[D
    goto :goto_0

    .line 154
    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mIsVarianceCalculated:Z

    .line 156
    :goto_0
    return-void
.end method

.method private calculateCompensationValue(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V
    .locals 2
    .param p1, "postProcessedData"    # Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 74
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getSamsungSpecificDataForOwrForAdv()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getRssi()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRssiRx1:F

    .line 76
    iget v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRssiRx1:F

    const/high16 v1, -0x3d6a0000    # -75.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCompensationValue:I

    goto :goto_0

    .line 78
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRssiRx1:F

    const/high16 v1, -0x3d560000    # -85.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCompensationValue:I

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCompensationValue:I

    .line 83
    :goto_0
    return-void
.end method

.method private calculateCriteronAngle()V
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCompensationValue:I

    rsub-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCriterionAngle:I

    .line 109
    return-void
.end method

.method private getVarianceOfAzimuth()D
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mVarianceOfAzimuth:D

    return-wide v0
.end method

.method private getVarianceOfElevation()D
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mVarianceOfElevation:D

    return-wide v0
.end method

.method private isVarianceCalculated()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mIsVarianceCalculated:Z

    return v0
.end method

.method private isWithinCriterionAngle(D)Z
    .locals 4
    .param p1, "aoa"    # D

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCriterionAngle:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$isWithinCriterionAngle$0(Ljava/lang/Double;)Z
    .locals 2
    .param p1, "x"    # Ljava/lang/Double;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->isWithinCriterionAngle(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$isWithinCriterionAngle$1(Ljava/lang/Double;)Z
    .locals 2
    .param p1, "x"    # Ljava/lang/Double;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->isWithinCriterionAngle(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getCriteriaAngle()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mCriterionAngle:I

    return v0
.end method

.method getLastMeasuredTime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mLastMeasuredTime:J

    return-wide v0
.end method

.method getRssiRx1()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRssiRx1:F

    return v0
.end method

.method isWithinCriterionAngle()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;)V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 95
    .local v0, "outsideCriterionAngle":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Double;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaElevation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;)V

    .line 98
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method isWithinCriterionVariance()Z
    .locals 6

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->isVarianceCalculated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->getVarianceOfAzimuth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 120
    return v1

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->getVarianceOfElevation()D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 123
    return v1

    .line 125
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method setLastMeasuredTime(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .line 61
    iput-wide p1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mLastMeasuredTime:J

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMacAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mMacAddress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVarOfAzimuth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mVarianceOfAzimuth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVarOfElevation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mVarianceOfElevation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecentAoaAzimuth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaAzimuth:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecentAoaElevation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->mRecentAoaElevation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateTargetFromPostProcessedData(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V
    .locals 0
    .param p1, "postProcessedData"    # Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->calculateCompensationValue(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->calculateCriteronAngle()V

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->calculateAoaVariance(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V

    .line 45
    return-void
.end method
