.class Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# static fields
.field public static final KEY_EXPID:Ljava/lang/String; = "expid"

.field public static final KEY_HORIZON:Ljava/lang/String; = "horizon"

.field public static final KEY_NUD:Ljava/lang/String; = "nud"

.field public static final KEY_PPS:Ljava/lang/String; = "pps"

.field public static final KEY_RSSI2:Ljava/lang/String; = "rssi2"

.field public static final KEY_RSSI5:Ljava/lang/String; = "rssi5"

.field public static final KEY_RSSI6:Ljava/lang/String; = "rssi6"

.field public static final MAX_EXPID:I = 0x7fffffff

.field public static final MAX_HORIZON:I = 0x3c

.field public static final MAX_MINUTES:I = 0x8bcf

.field public static final MAX_NUD:I = 0xa

.field public static final MIN_EXPID:I = 0x0

.field public static final MIN_HORIZON:I = -0x9

.field public static final MIN_MINUTES:I = 0x1

.field public static final MIN_NUD:I


# instance fields
.field public band6GhzBonus:I

.field public currentNetworkBonusMin:I

.field public currentNetworkBonusPercent:I

.field public enable6GhzBeaconRssiBoost:Z

.field public estimateRssiErrorMargin:I

.field public expid:I

.field public horizon:I

.field public lastMeteredSelectionMinutes:I

.field public lastUnmeteredSelectionMinutes:I

.field public nud:I

.field public final pps:[I

.field public final rssi2:[I

.field public final rssi5:[I

.field public final rssi6:[I

.field public savedNetworkBonus:I

.field public scoringBucketStepSize:I

.field public secureNetworkBonus:I

.field public throughputBonusDenominator:I

.field public throughputBonusDenominatorAfter800Mbps:I

.field public throughputBonusLimit:I

.field public throughputBonusNumerator:I

.field public throughputBonusNumeratorAfter800Mbps:I

.field public unmeteredNetworkBonus:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, -0x49

    const/16 v0, -0x3c

    const/16 v1, -0x53

    const/16 v2, -0x50

    .line 2
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    const/16 p1, -0x4d

    const/16 v0, -0x46

    const/16 v1, -0x39

    .line 3
    filled-new-array {v2, p1, v0, v1}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 4
    filled-new-array {v2, p1, v0, v1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    const/16 p1, 0x64

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    filled-new-array {v0, v1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    const/16 p1, 0xf

    .line 6
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    const/16 p1, 0x8

    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    const/16 p1, 0x78

    .line 9
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumerator:I

    const/16 v2, 0x1b1

    .line 10
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominator:I

    .line 11
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumeratorAfter800Mbps:I

    const/16 v2, 0x10

    .line 12
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominatorAfter800Mbps:I

    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->enable6GhzBeaconRssiBoost:Z

    const/16 v1, 0x140

    .line 14
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusLimit:I

    const/16 v1, 0x1f4

    .line 15
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->savedNetworkBonus:I

    const/16 v3, 0x3e8

    .line 16
    iput v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->unmeteredNetworkBonus:I

    .line 17
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusMin:I

    const/16 v2, 0x14

    .line 18
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusPercent:I

    const/16 v2, 0x28

    .line 19
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->secureNetworkBonus:I

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->band6GhzBonus:I

    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->scoringBucketStepSize:I

    const/16 v0, 0x1e0

    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastUnmeteredSelectionMinutes:I

    .line 23
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastMeteredSelectionMinutes:I

    const/4 p1, 0x5

    .line 24
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->estimateRssiErrorMargin:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, -0x49

    const/16 v0, -0x3c

    const/16 v1, -0x53

    const/16 v2, -0x50

    .line 26
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    const/16 p1, -0x4d

    const/16 v0, -0x46

    const/16 v1, -0x39

    .line 27
    filled-new-array {v2, p1, v0, v1}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 28
    filled-new-array {v2, p1, v0, v1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    const/16 p1, 0x64

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 29
    filled-new-array {v0, v1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    const/16 p1, 0xf

    .line 30
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    const/16 p1, 0x8

    .line 31
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    const/16 p1, 0x78

    .line 33
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumerator:I

    const/16 v2, 0x1b1

    .line 34
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominator:I

    .line 35
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumeratorAfter800Mbps:I

    const/16 v2, 0x10

    .line 36
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominatorAfter800Mbps:I

    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->enable6GhzBeaconRssiBoost:Z

    const/16 v1, 0x140

    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusLimit:I

    const/16 v1, 0x1f4

    .line 39
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->savedNetworkBonus:I

    const/16 v3, 0x3e8

    .line 40
    iput v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->unmeteredNetworkBonus:I

    .line 41
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusMin:I

    const/16 v2, 0x14

    .line 42
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusPercent:I

    const/16 v2, 0x28

    .line 43
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->secureNetworkBonus:I

    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->band6GhzBonus:I

    .line 45
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->scoringBucketStepSize:I

    const/16 v1, 0x1e0

    .line 46
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastUnmeteredSelectionMinutes:I

    .line 47
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastMeteredSelectionMinutes:I

    const/4 p1, 0x5

    .line 48
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->estimateRssiErrorMargin:I

    move p1, v0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 50
    iget-object v2, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    aget v2, v2, p1

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 52
    iget-object v2, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    aget v2, v2, p1

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 53
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 54
    iget-object v2, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    aget v2, v2, p1

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 55
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 56
    iget-object v1, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    aget v1, v1, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 57
    :cond_3
    iget p1, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    .line 58
    iget p1, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 59
    iget p1, p2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    return-void
.end method

.method private appendInts(Ljava/lang/StringBuilder;[I)V
    .locals 2

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    if-ge v0, p0, :cond_1

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const-string v1, ":"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    :cond_0
    aget v1, p2, v0

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method private appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, ","

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, "="

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p2, p0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p3, p0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p2, p3, p0}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_3

    .line 14
    .line 15
    array-length p2, p0

    .line 16
    array-length p3, p1

    .line 17
    if-ne p2, p3, :cond_2

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    :goto_0
    array-length p3, p1

    .line 21
    if-ge p2, p3, :cond_1

    .line 22
    .line 23
    aget p3, p0, p2

    .line 24
    .line 25
    aput p3, p1, p2

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return-void

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method private validateOrderedNonNegativeArray([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    :goto_0
    array-length v1, p1

    .line 4
    if-ge p0, v1, :cond_1

    .line 5
    .line 6
    aget v1, p1, p0

    .line 7
    .line 8
    if-lt v1, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    return-void
.end method

.method private validateRange(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    if-lt p1, p2, :cond_0

    .line 2
    .line 3
    if-gt p1, p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method private validateRssiArray([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, -0x7e

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, p1

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    aget v3, p1, v2

    .line 15
    .line 16
    invoke-direct {p0, v3, v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRange(III)V

    .line 17
    .line 18
    .line 19
    aget v1, p1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public parseString(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/KeyValueListParser;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v2, ","

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    array-length p1, p1

    .line 36
    if-ne v1, p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 39
    .line 40
    const-string v1, "rssi2"

    .line 41
    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 46
    .line 47
    const-string v1, "rssi5"

    .line 48
    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 53
    .line 54
    const-string v1, "rssi6"

    .line 55
    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 60
    .line 61
    const-string v1, "pps"

    .line 62
    .line 63
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "horizon"

    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    .line 69
    .line 70
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    .line 75
    .line 76
    const-string p1, "nud"

    .line 77
    .line 78
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 79
    .line 80
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 85
    .line 86
    const-string p1, "expid"

    .line 87
    .line 88
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    .line 89
    .line 90
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    .line 95
    .line 96
    return-void

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p1, "dup keys"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "rssi2"

    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 14
    .line 15
    .line 16
    const-string v1, "rssi5"

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 24
    .line 25
    .line 26
    const-string v1, "rssi6"

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "pps"

    .line 37
    .line 38
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 44
    .line 45
    .line 46
    const-string v1, "horizon"

    .line 47
    .line 48
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "nud"

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "expid"

    .line 67
    .line 68
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "throughputBonusNumerator:"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumerator:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "throughputBonusDenominator:"

    .line 103
    .line 104
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominator:I

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "throughputBonusNumeratorAfter800Mbps:"

    .line 125
    .line 126
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumeratorAfter800Mbps:I

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v3, "throughputBonusDenominatorAfter800Mbps:"

    .line 147
    .line 148
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominatorAfter800Mbps:I

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v3, "enable6GhzBeaconRssiBoost:"

    .line 169
    .line 170
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->enable6GhzBeaconRssiBoost:Z

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v3, "throughputBonusLimit:"

    .line 191
    .line 192
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusLimit:I

    .line 196
    .line 197
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v3, "savedNetworkBonus:"

    .line 213
    .line 214
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->savedNetworkBonus:I

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v3, "unmeteredNetworkBonus:"

    .line 235
    .line 236
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->unmeteredNetworkBonus:I

    .line 240
    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v3, "currentNetworkBonusMin:"

    .line 257
    .line 258
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusMin:I

    .line 262
    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v3, "currentNetworkBonusPercent:"

    .line 279
    .line 280
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusPercent:I

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v3, "secureNetworkBonus:"

    .line 301
    .line 302
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->secureNetworkBonus:I

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string v3, "band6GhzBonus:"

    .line 323
    .line 324
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->band6GhzBonus:I

    .line 328
    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v3, "scoringBucketStepSize:"

    .line 345
    .line 346
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->scoringBucketStepSize:I

    .line 350
    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v3, "lastUnmeteredSelectionMinutes:"

    .line 367
    .line 368
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastUnmeteredSelectionMinutes:I

    .line 372
    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v3, "lastMeteredSelectionMinutes:"

    .line 389
    .line 390
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastMeteredSelectionMinutes:I

    .line 394
    .line 395
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v3, "estimateRssiErrorMargin:"

    .line 411
    .line 412
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->estimateRssiErrorMargin:I

    .line 416
    .line 417
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    return-object p0
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRssiArray([I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRssiArray([I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRssiArray([I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateOrderedNonNegativeArray([I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    .line 22
    .line 23
    const/16 v1, -0x9

    .line 24
    .line 25
    const/16 v2, 0x3c

    .line 26
    .line 27
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRange(III)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 31
    .line 32
    const/16 v1, 0xa

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRange(III)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    .line 39
    .line 40
    const v1, 0x7fffffff

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRange(III)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastUnmeteredSelectionMinutes:I

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    const v2, 0x8bcf

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRange(III)V

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastMeteredSelectionMinutes:I

    .line 56
    .line 57
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validateRange(III)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
