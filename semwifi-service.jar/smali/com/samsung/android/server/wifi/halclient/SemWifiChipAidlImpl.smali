.class public Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiChipAidlImpl"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 12
    .line 13
    return-void
.end method

.method private static bitmapContains(JJ)Z
    .locals 0

    .line 1
    and-long/2addr p0, p2

    .line 2
    const-wide/16 p2, 0x0

    .line 3
    .line 4
    cmp-long p0, p0, p2

    .line 5
    .line 6
    if-eqz p0, :cond_0

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

.method private checkIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Unable to call "

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " because iface is null."

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiChipAidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method private getAfcChannelAllowance()Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;
    .locals 3

    .line 1
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v2, v1, [Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcFrequencyInfo;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, [Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcFrequencyInfo;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;->availableAfcFrequencyInfos:[Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcFrequencyInfo;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-array v1, v1, [Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;->availableAfcChannelInfos:[Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo;

    .line 36
    .line 37
    return-object p0
.end method

.method private getCapabilitiesInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 26
    .line 27
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getFeatureSet()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-long v2, v2

    .line 32
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkChipFeatureSet(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v2

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception v2

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget p0, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/16 p0, 0xa

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 67
    .line 68
    .line 69
    :goto_2
    monitor-exit v1

    .line 70
    return-object v0

    .line 71
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    throw p0
.end method

.method private static halToFrameworkAntennaMode(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq p0, v1, :cond_0

    .line 15
    .line 16
    const-string v1, "Invalid WifiAntennaMode: "

    .line 17
    .line 18
    const-string v2, "SemWifiChipAidlImpl"

    .line 19
    .line 20
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    return v0
.end method

.method private static halToFrameworkChipConcurrencyCombination(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination;->limits:[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombinationLimit;

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, p0, v2

    .line 13
    .line 14
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkChipConcurrencyCombinationLimit(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombinationLimit;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method private static halToFrameworkChipConcurrencyCombinationLimit(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombinationLimit;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombinationLimit;->types:[I

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_0

    .line 11
    .line 12
    aget v4, v1, v3

    .line 13
    .line 14
    invoke-static {v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkIfaceConcurrencyType(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 29
    .line 30
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 31
    .line 32
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;-><init>(ILjava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method protected static halToFrameworkChipFeatureSet(J)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x1a

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    :goto_0
    const-wide/16 v2, 0x2

    .line 15
    .line 16
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-wide/16 v2, 0x7

    .line 23
    .line 24
    or-long/2addr v0, v2

    .line 25
    :cond_1
    const-wide/16 v2, 0x4

    .line 26
    .line 27
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const-wide/16 v2, 0x8

    .line 34
    .line 35
    or-long/2addr v0, v2

    .line 36
    :cond_2
    const-wide/16 v2, 0x10

    .line 37
    .line 38
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    const-wide/16 v2, 0x1e

    .line 45
    .line 46
    or-long/2addr v0, v2

    .line 47
    :cond_3
    const-wide/16 v2, 0x20

    .line 48
    .line 49
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    or-long/2addr v0, v2

    .line 56
    :cond_4
    const-wide/16 v2, 0x40

    .line 57
    .line 58
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    const-wide/16 v2, 0x2b

    .line 65
    .line 66
    or-long/2addr v0, v2

    .line 67
    :cond_5
    const-wide/16 v2, 0x100

    .line 68
    .line 69
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_6

    .line 74
    .line 75
    const-wide/16 p0, 0x3a

    .line 76
    .line 77
    or-long/2addr p0, v0

    .line 78
    return-wide p0

    .line 79
    :cond_6
    return-wide v0
.end method

.method private static halToFrameworkChipMode(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;->availableCombinations:[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_0

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    invoke-static {v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkChipConcurrencyCombination(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 25
    .line 26
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;->id:I

    .line 27
    .line 28
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;-><init>(ILjava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method private static halToFrameworkChipModeList([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkChipMode(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method private static halToFrameworkIfaceConcurrencyType(I)I
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Invalid IfaceConcurrencyType received: "

    .line 16
    .line 17
    const-string v1, "SemWifiChipAidlImpl"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private static halToFrameworkRadioCombination(Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;->radioConfigurations:[Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioConfiguration;

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, p0, v2

    .line 13
    .line 14
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkRadioConfiguration(Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioConfiguration;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method private static halToFrameworkRadioCombinations([Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkRadioCombination(Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method private static halToFrameworkRadioConfiguration(Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioConfiguration;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioConfiguration;->bandInfo:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkWifiBand(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioConfiguration;->antennaMode:I

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkAntennaMode(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private static halToFrameworkWifiBand(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/16 v2, 0x1

    .line 3
    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const-wide/16 v2, 0x2

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    or-int/lit8 p0, p0, 0x2

    .line 17
    .line 18
    :cond_0
    const-wide/16 v2, 0x4

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    or-int/lit8 p0, p0, 0x4

    .line 27
    .line 28
    :cond_1
    const-wide/16 v2, 0x8

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    or-int/lit8 p0, p0, 0x8

    .line 37
    .line 38
    :cond_2
    const-wide/16 v2, 0x10

    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->bitmapContains(JJ)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    or-int/lit8 p0, p0, 0x10

    .line 47
    .line 48
    :cond_3
    return p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p2, " failed with remote exception: "

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiChipAidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with service-specific exception: "

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiChipAidlImpl"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public configureChip(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "configureChip"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->configureChip(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "configureChip"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "configureChip"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public createNanIface()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "createNanIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createNanIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v2

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v3, "createNanIface"

    .line 35
    .line 36
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v3, "createNanIface"

    .line 41
    .line 42
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public createP2pIface()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "createP2pIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createP2pIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v2

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v3, "createP2pIface"

    .line 35
    .line 36
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v3, "createP2pIface"

    .line 41
    .line 42
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public createStaIface()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "createStaIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createStaIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v2

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v3, "createStaIface"

    .line 35
    .line 36
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v3, "createStaIface"

    .line 41
    .line 42
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public enableDebugErrorAlerts(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "enableDebugErrorAlerts"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->enableDebugErrorAlerts(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "enableDebugErrorAlerts"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "enableDebugErrorAlerts"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public enableStaChannelForPeerNetwork(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "enableStaChannelForPeerNetwork"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->enableStaChannelForPeerNetwork(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "enableStaChannelForPeerNetwork"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "enableStaChannelForPeerNetwork"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public flushRingBufferToFile()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "flushRingBufferToFile"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->flushRingBufferToFile()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "flushRingBufferToFile"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "flushRingBufferToFile"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public forceDumpToDebugRingBuffer(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "forceDumpToDebugRingBuffer"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "forceDumpToDebugRingBuffer"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "forceDumpToDebugRingBuffer"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public getAvailableModes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getAvailableModes"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getAvailableModes()[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkChipModeList([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "getAvailableModes"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "getAvailableModes"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public getCapabilitiesBeforeIfacesExist()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "getCapabilitiesBeforeIfacesExist"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->getCapabilitiesInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDebugHostWakeReasonStats()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getDebugHostWakeReasonStats"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getDebugHostWakeReasonStats()Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "getDebugHostWakeReasonStats"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "getDebugHostWakeReasonStats"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public getDebugRingBuffersStatus()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getDebugRingBuffersStatus"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getDebugRingBuffersStatus()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRingBufferStatus;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "getDebugRingBuffersStatus"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "getDebugRingBuffersStatus"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public getFeatureSet()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getFeatureSet"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getFeatureSet()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "getFeatureSet"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "getFeatureSet"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public getId()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    :try_start_0
    const-string v2, "getId"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getId()I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "getId"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "getId"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public getMode()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    const-string v3, "getMode"

    .line 15
    .line 16
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 27
    .line 28
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getMode()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :goto_0
    :try_start_3
    const-string v3, "getMode"

    .line 48
    .line 49
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_1
    const-string v3, "getMode"

    .line 59
    .line 60
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 p0, 0xa

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 66
    .line 67
    .line 68
    :goto_2
    monitor-exit v2

    .line 69
    return-object v0

    .line 70
    :goto_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    throw p0
.end method

.method public getNanIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getNanIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v2, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v2, "getNanIface"

    .line 35
    .line 36
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v2, "getNanIface"

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public getNanIfaceNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getNanIfaceNames"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getNanIfaceNames()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "getNanIfaceNames"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "getNanIfaceNames"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public getP2pIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getP2pIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v2, "getP2pIface"

    .line 35
    .line 36
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v2, "getP2pIface"

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public getP2pIfaceNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getP2pIfaceNames"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getP2pIfaceNames()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "getP2pIfaceNames"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "getP2pIfaceNames"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getStaIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v2, "getStaIface"

    .line 35
    .line 36
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v2, "getStaIface"

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public getStaIfaceNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getStaIfaceNames"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getStaIfaceNames()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "getStaIfaceNames"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "getStaIfaceNames"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public getSupportedRadioCombinations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getSupportedRadioCombinations"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getSupportedRadioCombinations()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->halToFrameworkRadioCombinations([Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "getSupportedRadioCombinations"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "getSupportedRadioCombinations"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public getUsableChannels(III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getUsableChannels"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getUsableChannels(III)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiUsableChannel;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string p2, "getUsableChannels"

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string p2, "getUsableChannels"

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public getWifiChipCapabilities()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getWifiChipCapabilities"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getWifiChipCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/WifiChipCapabilities;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "getWifiChipCapabilities"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "getWifiChipCapabilities"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public removeApIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "removeApIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeApIface(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "removeApIface"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "removeApIface"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public removeNanIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "removeNanIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeNanIface(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "removeNanIface"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "removeNanIface"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public removeP2pIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "removeP2pIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeP2pIface(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "removeP2pIface"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "removeP2pIface"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public removeStaIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "removeStaIface"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeStaIface(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "removeStaIface"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "removeStaIface"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public requestChipDebugInfo()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "requestChipDebugInfo"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->requestChipDebugInfo()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipDebugInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "requestChipDebugInfo"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "requestChipDebugInfo"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public requestDriverDebugDump()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "requestDriverDebugDump"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->requestDriverDebugDump()[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "requestDriverDebugDump"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "requestDriverDebugDump"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public requestFirmwareDebugDump()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "requestFirmwareDebugDump"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->requestFirmwareDebugDump()[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "requestFirmwareDebugDump"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "requestFirmwareDebugDump"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public resetTxPowerScenario()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "resetTxPowerScenario"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->resetTxPowerScenario()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "resetTxPowerScenario"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "resetTxPowerScenario"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public selectTxPowerScenario(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "selectTxPowerScenario"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->selectTxPowerScenario(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "selectTxPowerScenario"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "selectTxPowerScenario"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public setAfcChannelAllowance()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setAfcChannelAllowance"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->getAfcChannelAllowance()Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setAfcChannelAllowance(Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "setAfcChannelAllowance"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "setAfcChannelAllowance"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setCoexUnsafeChannels"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string p2, "setCoexUnsafeChannels"

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string p2, "setCoexUnsafeChannels"

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public setCountryCode([B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setCountryCode"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setCountryCode([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "setCountryCode"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "setCountryCode"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public setLatencyMode(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setLatencyMode"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setLatencyMode(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "setLatencyMode"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "setLatencyMode"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public setMloMode(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setMloMode"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setMloMode(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "setMloMode"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "setMloMode"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public setMultiStaPrimaryConnection(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setMultiStaPrimaryConnection"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v2, "setMultiStaPrimaryConnection"

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "setMultiStaPrimaryConnection"

    .line 36
    .line 37
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public setMultiStaUseCase(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "setMultiStaUseCase"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setMultiStaUseCase(B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    :try_start_3
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :goto_0
    const-string v2, "setMultiStaUseCase"

    .line 31
    .line 32
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    const-string v2, "setMultiStaUseCase"

    .line 37
    .line 38
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_2
    monitor-exit v0

    .line 42
    return v1

    .line 43
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    throw p0
.end method

.method public startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "startLoggingToDebugRingBuffer"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string p2, "startLoggingToDebugRingBuffer"

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string p2, "startLoggingToDebugRingBuffer"

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public stopLoggingToDebugRingBuffer()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "stopLoggingToDebugRingBuffer"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->stopLoggingToDebugRingBuffer()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "stopLoggingToDebugRingBuffer"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "stopLoggingToDebugRingBuffer"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method
