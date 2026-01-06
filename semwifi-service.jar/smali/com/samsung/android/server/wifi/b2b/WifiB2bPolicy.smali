.class public Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MAX_SSID_LEN:I = 0x20

.field static final NOT_CONFIGURED:I = 0x7fffffff

.field private static final POSSIBLE_CHANNEL_FREQUENCIES_OF_BAND:[[I

.field public static final ROAM_BAND_DEFAULT_ALL:I = 0x0

.field private static final ROAM_BAND_MAX:I = 0x7

.field private static final ROAM_BAND_MIN:I = 0x0

.field public static final ROAM_SCANPERIOD_DEFAULT:I = 0xa

.field private static final ROAM_SCAN_PERIOD_MAX:I = 0x3c

.field private static final ROAM_SCAN_PERIOD_MIN:I = 0x0

.field public static final RSSI_ROAMDELTA_DEFAULT:I = 0xa

.field private static final RSSI_ROAM_DELTA_MAX:I = 0x64

.field private static final RSSI_ROAM_DELTA_MIN:I = 0x0

.field public static final RSSI_THRESHOLD_DEFAULT:I = -0x4b

.field private static final RSSI_THRESHOLD_MAX:I = -0x32

.field private static final RSSI_THRESHOLD_MIN:I = -0x64

.field private static final TAG:Ljava/lang/String; = "WifiB2bPolicy"

.field private static possibleChannelFrequenciesOfBand:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field addRoamScanFrequencies:Ljava/lang/String;

.field final networkName:Ljava/lang/String;

.field noDisable:Z

.field roamBand:I

.field roamDelta:I

.field roamScanPeriod:I

.field roamTrigger:I

.field setRoamScanFrequencies:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$DkC-n94m0m2UHdtKxGP3A1pF3Jw(I)[Ljava/util/HashSet;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->lambda$initializePossibleFrequencies$1(I)[Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$UyAMsIZKThy92cjvrvttMeSb9z4([I)Ljava/util/HashSet;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->lambda$initializePossibleFrequencies$0([I)Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x25

    .line 9
    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x3c

    .line 16
    .line 17
    new-array v2, v2, [I

    .line 18
    .line 19
    fill-array-data v2, :array_2

    .line 20
    .line 21
    .line 22
    filled-new-array {v0, v1, v2}, [[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->POSSIBLE_CHANNEL_FREQUENCIES_OF_BAND:[[I

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 4
        0x1428
        0x143c
        0x1450
        0x1464
        0x1478
        0x148c
        0x14a0
        0x14b4
        0x14c8
        0x14dc
        0x14f0
        0x1504
        0x1518
        0x152c
        0x1540
        0x1554
        0x1568
        0x157c
        0x1590
        0x15a4
        0x15b8
        0x15cc
        0x15e0
        0x15f4
        0x1608
        0x161c
        0x1630
        0x1644
        0x1658
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
        0x16d5
        0x16e9
        0x16fd
    .end array-data

    :array_2
    .array-data 4
        0x172f
        0x1743
        0x1757
        0x176b
        0x177f
        0x1793
        0x17a7
        0x17bb
        0x17cf
        0x17e3
        0x17f7
        0x180b
        0x181f
        0x1833
        0x1847
        0x185b
        0x186f
        0x1883
        0x1897
        0x18ab
        0x18bf
        0x18d3
        0x18e7
        0x18fb
        0x190f
        0x1923
        0x1937
        0x194b
        0x195f
        0x1973
        0x1987
        0x199b
        0x19af
        0x19c3
        0x19d7
        0x19eb
        0x19ff
        0x1a13
        0x1a27
        0x1a3b
        0x1a4f
        0x1a63
        0x1a77
        0x1a8b
        0x1a9f
        0x1ab3
        0x1ac7
        0x1adb
        0x1aef
        0x1b03
        0x1b17
        0x1b2b
        0x1b3f
        0x1b53
        0x1b67
        0x1b7b
        0x1b8f
        0x1ba3
        0x1bb7
        0x1bcb
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->setRoamScanFrequencies:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->addRoamScanFrequencies:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "network name should not be null"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public static initializePossibleFrequencies()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->POSSIBLE_CHANNEL_FREQUENCIES_OF_BAND:[[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Ljava/util/Set;

    .line 26
    .line 27
    sput-object v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->possibleChannelFrequenciesOfBand:[Ljava/util/Set;

    .line 28
    .line 29
    return-void
.end method

.method private isValidRoamScanFrequency(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    iget v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    shl-int v4, v3, v1

    .line 12
    .line 13
    and-int/2addr v2, v4

    .line 14
    if-lez v2, :cond_1

    .line 15
    .line 16
    :cond_0
    sget-object v2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->possibleChannelFrequenciesOfBand:[Ljava/util/Set;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method private static synthetic lambda$initializePossibleFrequencies$0([I)Ljava/util/HashSet;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static synthetic lambda$initializePossibleFrequencies$1(I)[Ljava/util/HashSet;
    .locals 0

    .line 1
    new-array p0, p0, [Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public getAddRoamScanFrequencies()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->addRoamScanFrequencies:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRoamBand()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamBandSetting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public getRoamDelta()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamDeltaSetting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/16 p0, 0xa

    .line 11
    .line 12
    return p0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamScanPeriodSetting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/16 p0, 0xa

    .line 11
    .line 12
    return p0
.end method

.method public getRoamTrigger()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamTriggerSetting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/16 p0, -0x4b

    .line 11
    .line 12
    return p0
.end method

.method public getSetRoamScanFrequencies()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->setRoamScanFrequencies:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method hasAddRoamScanFrequencies()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->addRoamScanFrequencies:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method hasRoamBandSetting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method hasRoamDeltaSetting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method hasRoamScanPeriodSetting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public hasRoamSettings()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamTriggerSetting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamDeltaSetting()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamScanPeriodSetting()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamBandSetting()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method hasRoamTriggerSetting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method hasSetRoamScanFrequencies()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->setRoamScanFrequencies:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method isRoamBandSetToDefault()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method isSupportedRoamBandSetting(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const/4 v2, 0x5

    .line 11
    if-ge v0, v2, :cond_2

    .line 12
    .line 13
    iget v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    .line 14
    .line 15
    and-int/2addr v2, v0

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    and-int v2, p1, v0

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v1
.end method

.method isValidNetworkName()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length p0, p0

    .line 16
    const/16 v0, 0x20

    .line 17
    .line 18
    if-gt p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method isValidRoamBandSetting()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x7

    .line 12
    if-gt p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method isValidRoamDeltaSetting()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    if-gt p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public isValidRoamScanFrequencies(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, ", *"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    array-length v1, p1

    .line 9
    move v2, v0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamScanFrequency(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Exception in converting given frequencies into number "

    .line 37
    .line 38
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "WifiB2bPolicy"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method isValidRoamScanPeriodSetting()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    if-gt p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method isValidRoamTriggerSetting()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, -0x32

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v0, -0x64

    .line 14
    .line 15
    if-lt p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public noNetworkDisable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDisable:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "B2BPolicy for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getNetworkName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " RoamTrigger:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " RoamDelta:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " RoamScanPeriod:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " RoamBand:"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " noNetworkDisable:"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noNetworkDisable()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " SetRoamScanFrequencies:"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getSetRoamScanFrequencies()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " AddRoamScanFrequencies:"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getAddRoamScanFrequencies()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
